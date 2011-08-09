# Library requires
fs = require 'fs'
path = require 'path'
eco = require 'eco'
hljs = require 'highlight.js'
util = require 'util'

# Local requires 
InstanceMethodWalker = require './instance_method'
TableOfContentsWalker = require './table_of_contents'
MultiConsoleTransformation = require './multi_console'
ReferenceLinkTransformation = require './reference_link'

FunctionBodyParser = require '../parsers/function_body'
CSTParser = require '../../lib/parsers/percolate_parser'

OutputTemplate = do ->
  template = undefined
  return -> 
    unless template?
      template = fs.readFileSync(path.join(__dirname, '..', '..', 'templates', 'index.html.eco')).toString()
    template

class ReferenceTransformWalker extends InstanceMethodWalker
  constructor: (@tableOfContents) ->

Highlight = (str) ->
  hljs.highlight('javascript', str).value

module.exports = class HtmlWalker extends InstanceMethodWalker
  @getString: (tree) ->
    return tree if typeof tree is 'string'
    # Get the table of contents
    tableOfContents = TableOfContentsWalker.getTableOfContents(tree)

    # Use it to convert any references into `ReferenceNodes` instead of just inline `CodeNode`s
    (new ReferenceLinkTransformation).walk(tree)
    
    # Also transform any successive console nodes into one
    (new MultiConsoleTransformation).walk(tree)

    walker = new HtmlWalker(tableOfContents)

    tree.traverse(walker)
    body = walker.output()
    if tree.name == 'Base'
      console.error tableOfContents
      data = { 
        title: tree.identifier(),
        body,
        tableOfContents: tableOfContents
      }
      eco.render OutputTemplate(), data
    else
      body
  
  constructor: (@tableOfContents) ->
    @buf = []
    @inMulti = false
  
  for k in ['entered', 'exited']
    do (k) =>
      @::["#{k}Node"] = (node) ->
        key = "#{k}#{node['name']}"
        #console.error key
        if @[key]?
          @[key](node)
        else
          #console.error "Unrecognized node: #{node.name}" if k == 'entered'
          true

  output: -> @buf.join('')
  
  # When given a string, parses raw markdown string into a tree, and traverses that tree
  # When given a tree, traverses that tree.
  parseAndTraverse: (nodeOrString) ->
    if typeof nodeOrString is 'string'
      node = CSTParser.parse(nodeOrString)
    else
      node = nodeOrString
    node.traverse(@)

  # Percolate control structs
  enteredBase: (node) -> 
    @buf.push "<h1 class=\"base\" id=\"#{@idSafe(node.identifier())}\">"
    @parseAndTraverse(node.documentName)
    @buf.push "</h1>"
    true
  
  enteredDocumentation: (node) ->
    @buf.push "<h2 class=\"object\" id=\"#{@idSafe(node.identifier())}\">"
    @parseAndTraverse(node.objectName)
    @buf.push "</h2>"
    true

  enteredFunctionDocumentation: (node) ->
    @buf.push "<h3 class=\"function\" id=\"#{@idSafe(node.identifier())}\">"
    @parseAndTraverse(node.objectName)
    @buf.push "</h3>"
    true

  enteredTestCase: (node) ->
    @buf.push "<h4>"
    @parseAndTraverse(node.caseName)
    @buf.push "</h4>"
    true
  
  enteredExampleTestCase: (node) -> @enteredTestCase(node)

  enteredMultiConsole: (node) -> 
    #@inMulti = false
    @enteredConsole(node)
    @inMulti = true
    true

  exitedMultiConsole: (node) -> 
    @inMulti = false
    @exitedConsole(node)

  enteredConsole: (node) -> 
    if !@inMulti
      @buf.push "<pre><code>"
    true

  exitedConsole: (node) -> 
    if !@inMulti
      @buf.push "</code></pre>" 
  
  for k in ['Assertion', 'Show']
    do (k) =>
      @::["entered#{k}"] = (node) -> 
        @enteredConsole(node)
        @buf.push "js> #{Highlight(FunctionBodyParser.parse(node.inputFunction))}\n#{Highlight(util.inspect(node.outputValue()))}\n"
        @exitedConsole(node)
        false
  
  # Block wrappers
  enteredPlain: (node) -> @buf.push '<p>'; true
  exitedPlain: (node) -> @buf.push '</p>'

  # Inline wrappers
  enteredEmph: (node) -> @buf.push '<em>'; true
  exitedEmph: (node) -> @buf.push '</em>'
  enteredStrong: (node) -> @buf.push '<strong>'; true
  exitedStrong: (node) -> @buf.push '</strong>'
  enteredCode: (node) -> @buf.push '<code>'; true
  exitedCode: (node) -> @buf.push '</code>'

  # Simple outputs
  enteredStr: (node) -> @buf.push node.innerText(); false
  enteredNonSpaceChar: (node) -> @buf.push node.innerText(); false
  enteredSpace: (node) -> @buf.push ' '; false

  idSafe_rx = /[^\.\:a-zA-Z0-9_-]/g
  idSafe: (str) ->
    str.replace(idSafe_rx, '_')

  # Helper functions
  wrapConsole: (str) -> 
    """
    #{str}
    """