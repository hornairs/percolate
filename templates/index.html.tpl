<!doctype html>
<!--[if lt IE 7 ]> <html class="no-js ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]>    <html class="no-js ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]>    <html class="no-js ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame
       Remove this if you use the .htaccess -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <title></title>
  <meta name="description" content="">
  <meta name="author" content="">

  <!-- Mobile viewport optimized: j.mp/bplateviewport -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href='http://fonts.googleapis.com/css?family=Inconsolata|Rosario&v2' rel='stylesheet' type='text/css'>
  <style type="text/css">
    /**
     * HTML5 ✰ Boilerplate
     *
     * style.css contains a reset, font normalization and some base styles.
     *
     * Credit is left where credit is due.
     * Much inspiration was taken from these projects:
     * - yui.yahooapis.com/2.8.1/build/base/base.css
     * - camendesign.com/design/
     * - praegnanz.de/weblog/htmlcssjs-kickstart
     */


    /**
     * html5doctor.com Reset Stylesheet (Eric Meyer's Reset Reloaded + HTML5 baseline)
     * v1.6.1 2010-09-17 | Authors: Eric Meyer & Richard Clark
     * html5doctor.com/html-5-reset-stylesheet/
     */

    html, body, div, span, object, iframe,
    h1, h2, h3, h4, h5, h6, p, blockquote, pre,
    abbr, address, cite, code, del, dfn, em, img, ins, kbd, q, samp,
    small, strong, sub, sup, var, b, i, dl, dt, dd, ol, ul, li,
    fieldset, form, label, legend,
    table, caption, tbody, tfoot, thead, tr, th, td,
    article, aside, canvas, details, figcaption, figure,
    footer, header, hgroup, menu, nav, section, summary,
    time, mark, audio, video {
      margin: 0;
      padding: 0;
      border: 0;
      font-size: 100%;
      font: inherit;
      vertical-align: baseline;
    }

    article, aside, details, figcaption, figure,
    footer, header, hgroup, menu, nav, section {
      display: block;
    }

    blockquote, q { quotes: none; }

    blockquote:before, blockquote:after,
    q:before, q:after { content: ""; content: none; }

    ins { background-color: #ff9; color: #000; text-decoration: none; }

    mark { background-color: #ff9; color: #000; font-style: italic; font-weight: bold; }

    del { text-decoration: line-through; }

    abbr[title], dfn[title] { border-bottom: 1px dotted; cursor: help; }

    table { border-collapse: collapse; border-spacing: 0; }

    hr { display: block; height: 1px; border: 0; border-top: 1px solid #ccc; margin: 1em 0; padding: 0; }

    input, select { vertical-align: middle; }


    /**
     * Font normalization inspired by YUI Library's fonts.css: developer.yahoo.com/yui/
     */

    body { font:13px/1.231 sans-serif; *font-size:small; } /* Hack retained to preserve specificity */
    select, input, textarea, button { font:99% sans-serif; }

    /* Normalize monospace sizing:
       en.wikipedia.org/wiki/MediaWiki_talk:Common.css/Archive_11#Teletype_style_fix_for_Chrome */
    pre, code, kbd, samp { font-family: 'Inconsolata', monospace, sans-serif; }

    html { overflow-y: scroll; }

    /* Accessible focus treatment: people.opera.com/patrickl/experiments/keyboard/test */
    a:hover, a:active { outline: none; }

    ul, ol { margin-left: 2em; }
    ol { list-style-type: decimal; }

    nav ul, nav li { margin: 0; list-style:none; list-style-image: none; }

    small { font-size: 85%; }
    strong, th { font-weight: bold; }

    td { vertical-align: top; }

    /* Set sub, sup without affecting line-height: gist.github.com/413930 */
    sub, sup { font-size: 75%; line-height: 0; position: relative; }
    sup { top: -0.5em; }
    sub { bottom: -0.25em; }

    pre {
      /* www.pathf.com/blogs/2008/05/formatting-quoted-code-in-blog-posts-css21-white-space-pre-wrap/ */
      white-space: pre; white-space: pre-wrap; word-wrap: break-word;
      padding: 15px;
    }

    textarea { overflow: auto; } /* www.sitepoint.com/blogs/2010/08/20/ie-remove-textarea-scrollbars/ */

    .ie6 legend, .ie7 legend { margin-left: -7px; } 

    /* Align checkboxes, radios, text inputs with their label by: Thierry Koblentz tjkdesign.com/ez-css/css/base.css  */
    input[type="radio"] { vertical-align: text-bottom; }
    input[type="checkbox"] { vertical-align: bottom; }
    .ie7 input[type="checkbox"] { vertical-align: baseline; }
    .ie6 input { vertical-align: text-bottom; }

    label, input[type="button"], input[type="submit"], input[type="image"], button { cursor: pointer; }

    button, input, select, textarea { margin: 0; }

    input:valid, textarea:valid   {  }
    input:invalid, textarea:invalid {
       border-radius: 1px; -moz-box-shadow: 0px 0px 5px red; -webkit-box-shadow: 0px 0px 5px red; box-shadow: 0px 0px 5px red;
    }
    .no-boxshadow input:invalid, .no-boxshadow textarea:invalid { background-color: #f0dddd; }


    /* These selection declarations have to be separate
       No text-shadow: twitter.com/miketaylr/status/12228805301
       Also: hot pink! */
    ::-moz-selection{ background: #FF5E99; color:#fff; text-shadow: none; }
    ::selection { background:#FF5E99; color:#fff; text-shadow: none; }

    /* j.mp/webkit-tap-highlight-color */
    a:link { -webkit-tap-highlight-color: #FF5E99; }

    /* Make buttons play nice in IE:
       www.viget.com/inspire/styling-the-button-element-in-internet-explorer/ */
    button {  width: auto; overflow: visible; }

    /* Bicubic resizing for non-native sized IMG:
       code.flickr.com/blog/2008/11/12/on-ui-quality-the-little-things-client-side-image-resizing/ */
    .ie7 img { -ms-interpolation-mode: bicubic; }

    body, select, input, textarea {
      /* #444 looks better than black: twitter.com/H_FJ/statuses/11800719859 */
      color: #444;
      /* Set your base font here, to apply evenly */
      font-family: 'Rosario', Georgia, serif;
    }

    h1, h2, h3, h4, h5, h6 { font-weight: bold; }
    h1 { font-size: 30px; color: #373862; margin-bottom: 15px; }
    h2 { font-size: 22px; color: #373862; margin-bottom: 30px; }
    h3 { font-size: 20px; color: #373862; margin-bottom: 20px; }
    h4 { font-size: 16px; color: #373862; line-height: 22px; margin-bottom: 8px; }
    h5 { font-size: 14px; color: #000; line-height: 20px; margin-bottom: 8px; }
   
    a, a:active, a:visited { color: #607890; }
    a:hover { color: #036; }

    /* For image replacement */
    .ir { display: block; text-indent: -999em; overflow: hidden; background-repeat: no-repeat; text-align: left; direction: ltr; }

    /* Hide for both screenreaders and browsers:
       css-discuss.incutio.com/wiki/Screenreader_Visibility */
    .hidden { display: none; visibility: hidden; }

    /* Hide only visually, but have it available for screenreaders: by Jon Neal.
      www.webaim.org/techniques/css/invisiblecontent/  &  j.mp/visuallyhidden */
    .visuallyhidden { border: 0; clip: rect(0 0 0 0); height: 1px; margin: -1px; overflow: hidden; padding: 0; position: absolute; width: 1px; }
    /* Extends the .visuallyhidden class to allow the element to be focusable when navigated to via the keyboard: drupal.org/node/897638 */
    .visuallyhidden.focusable:active,
    .visuallyhidden.focusable:focus { clip: auto; height: auto; margin: 0; overflow: visible; position: static; width: auto; }

    /* Hide visually and from screenreaders, but maintain layout */
    .invisible { visibility: hidden; }

    /* The Magnificent Clearfix: Updated to prevent margin-collapsing on child elements.
       j.mp/bestclearfix */
    .clearfix:before, .clearfix:after { content: "\0020"; display: block; height: 0; overflow: hidden; }
    .clearfix:after { clear: both; }
    /* Fix clearfix: blueprintcss.lighthouseapp.com/projects/15318/tickets/5-extra-margin-padding-bottom-of-page */
    .clearfix { zoom: 1; }

    @media all and (orientation:portrait) {

    }

    @media all and (orientation:landscape) {
    }

    /* Grade-A Mobile Browsers (Opera Mobile, Mobile Safari, Android Chrome)
       consider this: www.cloudfour.com/css-media-query-for-mobile-is-fools-gold/ */
    @media screen and (max-device-width: 480px) {


      /* Uncomment if you don't want iOS and WinMobile to mobile-optimize the text for you: j.mp/textsizeadjust */
      /* html { -webkit-text-size-adjust:none; -ms-text-size-adjust:none; } */
    }


    /**
     * Print styles.
     *
     * Inlined to avoid required HTTP connection: www.phpied.com/delay-loading-your-print-css/
     */
    @media print {
      * { background: transparent !important; color: black !important; text-shadow: none !important; filter:none !important;
      -ms-filter: none !important; } /* Black prints faster: sanbeiji.com/archives/953 */
      a, a:visited { color: #444 !important; text-decoration: underline; }
      a[href]:after { content: " (" attr(href) ")"; }
      abbr[title]:after { content: " (" attr(title) ")"; }
      .ir a:after, a[href^="javascript:"]:after, a[href^="#"]:after { content: ""; }  /* Don't show links for images, or javascript/internal links */
      pre, blockquote { border: 1px solid #999; page-break-inside: avoid; }
      thead { display: table-header-group; } /* css-discuss.incutio.com/wiki/Printing_Tables */
      tr, img { page-break-inside: avoid; }
      @page { margin: 0.5cm; }
      p, h2, h3 { orphans: 3; widows: 3; }
      h2, h3{ page-break-after: avoid; }
    }
    
    /*

    Zenburn style from voldmar.ru (c) Vladimir Epifanov <voldmar@voldmar.ru>
    based on dark.css by Ivan Sagalaev

    */

    pre code {
      display: block; padding: 0.5em;
      background: #3F3F3F;
      color: #DCDCDC;
      -webkit-border-radius: 4px;
      -moz-border-radius: 4px;
      border-radius: 4px;
    }

    pre .keyword,
    pre .tag,
    pre .django .tag,
    pre .django .keyword,
    pre .css .class,
    pre .css .id,
    pre .lisp .title {
      color: #E3CEAB;
    }

    pre .django .template_tag,
    pre .django .variable,
    pre .django .filter .argument {
      color: #DCDCDC;
    }

    pre .number,
    pre .date {
      color: #8CD0D3;
    }

    pre .dos .envvar,
    pre .dos .stream,
    pre .variable,
    pre .apache .sqbracket {
      color: #EFDCBC;
    }

    pre .dos .flow,
    pre .diff .change,
    pre .python .exception,
    pre .python .built_in,
    pre .literal,
    pre .tex .special {
      color: #EFEFAF;
    }

    pre .diff .chunk,
    pre .ruby .subst {
      color: #8F8F8F;
    }

    pre .dos .keyword,
    pre .python .decorator,
    pre .class .title,
    pre .haskell .label,
    pre .function .title,
    pre .ini .title,
    pre .diff .header,
    pre .ruby .class .parent,
    pre .apache .tag,
    pre .nginx .built_in,
    pre .tex .command,
    pre .input_number {
        color: #efef8f;
    }

    pre .dos .winutils,
    pre .ruby .symbol,
    pre .ruby .symbol .string,
    pre .ruby .symbol .keyword,
    pre .ruby .symbol .keymethods,
    pre .ruby .string,
    pre .ruby .instancevar {
      color: #DCA3A3;
    }

    pre .diff .deletion,
    pre .string,
    pre .tag .value,
    pre .preprocessor,
    pre .built_in,
    pre .sql .aggregate,
    pre .javadoc,
    pre .smalltalk .class,
    pre .smalltalk .localvars,
    pre .smalltalk .array,
    pre .css .rules .value,
    pre .attr_selector,
    pre .pseudo,
    pre .apache .cbracket,
    pre .tex .formula {
      color: #CC9393;
    }

    pre .shebang,
    pre .diff .addition,
    pre .comment,
    pre .java .annotation,
    pre .template_comment,
    pre .pi,
    pre .doctype {
      color: #7F9F7F;
    }

    pre .xml .css,
    pre .xml .javascript,
    pre .xml .vbscript,
    pre .tex .formula {
      opacity: 0.5;
    }


  </style>    
  <!-- All JavaScript at the bottom, except for Modernizr which enables HTML5 elements & feature detects -->
  <script type="text/javascript">
    // Modernizr v1.7  www.modernizr.com
    window.Modernizr=function(a,b,c){function G(){e.input=function(a){for(var b=0,c=a.length;b<c;b++)t[a[b]]=!!(a[b]in l);return t}("autocomplete autofocus list placeholder max min multiple pattern required step".split(" ")),e.inputtypes=function(a){for(var d=0,e,f,h,i=a.length;d<i;d++)l.setAttribute("type",f=a[d]),e=l.type!=="text",e&&(l.value=m,l.style.cssText="position:absolute;visibility:hidden;",/^range$/.test(f)&&l.style.WebkitAppearance!==c?(g.appendChild(l),h=b.defaultView,e=h.getComputedStyle&&h.getComputedStyle(l,null).WebkitAppearance!=="textfield"&&l.offsetHeight!==0,g.removeChild(l)):/^(search|tel)$/.test(f)||(/^(url|email)$/.test(f)?e=l.checkValidity&&l.checkValidity()===!1:/^color$/.test(f)?(g.appendChild(l),g.offsetWidth,e=l.value!=m,g.removeChild(l)):e=l.value!=m)),s[a[d]]=!!e;return s}("search tel url email datetime date month week time datetime-local number range color".split(" "))}function F(a,b){var c=a.charAt(0).toUpperCase()+a.substr(1),d=(a+" "+p.join(c+" ")+c).split(" ");return!!E(d,b)}function E(a,b){for(var d in a)if(k[a[d]]!==c&&(!b||b(a[d],j)))return!0}function D(a,b){return(""+a).indexOf(b)!==-1}function C(a,b){return typeof a===b}function B(a,b){return A(o.join(a+";")+(b||""))}function A(a){k.cssText=a}var d="1.7",e={},f=!0,g=b.documentElement,h=b.head||b.getElementsByTagName("head")[0],i="modernizr",j=b.createElement(i),k=j.style,l=b.createElement("input"),m=":)",n=Object.prototype.toString,o=" -webkit- -moz- -o- -ms- -khtml- ".split(" "),p="Webkit Moz O ms Khtml".split(" "),q={svg:"http://www.w3.org/2000/svg"},r={},s={},t={},u=[],v,w=function(a){var c=b.createElement("style"),d=b.createElement("div"),e;c.textContent=a+"{#modernizr{height:3px}}",h.appendChild(c),d.id="modernizr",g.appendChild(d),e=d.offsetHeight===3,c.parentNode.removeChild(c),d.parentNode.removeChild(d);return!!e},x=function(){function d(d,e){e=e||b.createElement(a[d]||"div");var f=(d="on"+d)in e;f||(e.setAttribute||(e=b.createElement("div")),e.setAttribute&&e.removeAttribute&&(e.setAttribute(d,""),f=C(e[d],"function"),C(e[d],c)||(e[d]=c),e.removeAttribute(d))),e=null;return f}var a={select:"input",change:"input",submit:"form",reset:"form",error:"img",load:"img",abort:"img"};return d}(),y=({}).hasOwnProperty,z;C(y,c)||C(y.call,c)?z=function(a,b){return b in a&&C(a.constructor.prototype[b],c)}:z=function(a,b){return y.call(a,b)},r.flexbox=function(){function c(a,b,c,d){a.style.cssText=o.join(b+":"+c+";")+(d||"")}function a(a,b,c,d){b+=":",a.style.cssText=(b+o.join(c+";"+b)).slice(0,-b.length)+(d||"")}var d=b.createElement("div"),e=b.createElement("div");a(d,"display","box","width:42px;padding:0;"),c(e,"box-flex","1","width:10px;"),d.appendChild(e),g.appendChild(d);var f=e.offsetWidth===42;d.removeChild(e),g.removeChild(d);return f},r.canvas=function(){var a=b.createElement("canvas");return a.getContext&&a.getContext("2d")},r.canvastext=function(){return e.canvas&&C(b.createElement("canvas").getContext("2d").fillText,"function")},r.webgl=function(){return!!a.WebGLRenderingContext},r.touch=function(){return"ontouchstart"in a||w("@media ("+o.join("touch-enabled),(")+"modernizr)")},r.geolocation=function(){return!!navigator.geolocation},r.postmessage=function(){return!!a.postMessage},r.websqldatabase=function(){var b=!!a.openDatabase;return b},r.indexedDB=function(){for(var b=-1,c=p.length;++b<c;){var d=p[b].toLowerCase();if(a[d+"_indexedDB"]||a[d+"IndexedDB"])return!0}return!1},r.hashchange=function(){return x("hashchange",a)&&(b.documentMode===c||b.documentMode>7)},r.history=function(){return !!(a.history&&history.pushState)},r.draganddrop=function(){return x("dragstart")&&x("drop")},r.websockets=function(){return"WebSocket"in a},r.rgba=function(){A("background-color:rgba(150,255,150,.5)");return D(k.backgroundColor,"rgba")},r.hsla=function(){A("background-color:hsla(120,40%,100%,.5)");return D(k.backgroundColor,"rgba")||D(k.backgroundColor,"hsla")},r.multiplebgs=function(){A("background:url(//:),url(//:),red url(//:)");return(new RegExp("(url\\s*\\(.*?){3}")).test(k.background)},r.backgroundsize=function(){return F("backgroundSize")},r.borderimage=function(){return F("borderImage")},r.borderradius=function(){return F("borderRadius","",function(a){return D(a,"orderRadius")})},r.boxshadow=function(){return F("boxShadow")},r.textshadow=function(){return b.createElement("div").style.textShadow===""},r.opacity=function(){B("opacity:.55");return/^0.55$/.test(k.opacity)},r.cssanimations=function(){return F("animationName")},r.csscolumns=function(){return F("columnCount")},r.cssgradients=function(){var a="background-image:",b="gradient(linear,left top,right bottom,from(#9f9),to(white));",c="linear-gradient(left top,#9f9, white);";A((a+o.join(b+a)+o.join(c+a)).slice(0,-a.length));return D(k.backgroundImage,"gradient")},r.cssreflections=function(){return F("boxReflect")},r.csstransforms=function(){return!!E(["transformProperty","WebkitTransform","MozTransform","OTransform","msTransform"])},r.csstransforms3d=function(){var a=!!E(["perspectiveProperty","WebkitPerspective","MozPerspective","OPerspective","msPerspective"]);a&&"webkitPerspective"in g.style&&(a=w("@media ("+o.join("transform-3d),(")+"modernizr)"));return a},r.csstransitions=function(){return F("transitionProperty")},r.fontface=function(){var a,c,d=h||g,e=b.createElement("style"),f=b.implementation||{hasFeature:function(){return!1}};e.type="text/css",d.insertBefore(e,d.firstChild),a=e.sheet||e.styleSheet;var i=f.hasFeature("CSS2","")?function(b){if(!a||!b)return!1;var c=!1;try{a.insertRule(b,0),c=/src/i.test(a.cssRules[0].cssText),a.deleteRule(a.cssRules.length-1)}catch(d){}return c}:function(b){if(!a||!b)return!1;a.cssText=b;return a.cssText.length!==0&&/src/i.test(a.cssText)&&a.cssText.replace(/\r+|\n+/g,"").indexOf(b.split(" ")[0])===0};c=i('@font-face { font-family: "font"; src: url(data:,); }'),d.removeChild(e);return c},r.video=function(){var a=b.createElement("video"),c=!!a.canPlayType;if(c){c=new Boolean(c),c.ogg=a.canPlayType('video/ogg; codecs="theora"');var d='video/mp4; codecs="avc1.42E01E';c.h264=a.canPlayType(d+'"')||a.canPlayType(d+', mp4a.40.2"'),c.webm=a.canPlayType('video/webm; codecs="vp8, vorbis"')}return c},r.audio=function(){var a=b.createElement("audio"),c=!!a.canPlayType;c&&(c=new Boolean(c),c.ogg=a.canPlayType('audio/ogg; codecs="vorbis"'),c.mp3=a.canPlayType("audio/mpeg;"),c.wav=a.canPlayType('audio/wav; codecs="1"'),c.m4a=a.canPlayType("audio/x-m4a;")||a.canPlayType("audio/aac;"));return c},r.localstorage=function(){try{return!!localStorage.getItem}catch(a){return!1}},r.sessionstorage=function(){try{return!!sessionStorage.getItem}catch(a){return!1}},r.webWorkers=function(){return!!a.Worker},r.applicationcache=function(){return!!a.applicationCache},r.svg=function(){return!!b.createElementNS&&!!b.createElementNS(q.svg,"svg").createSVGRect},r.inlinesvg=function(){var a=b.createElement("div");a.innerHTML="<svg/>";return(a.firstChild&&a.firstChild.namespaceURI)==q.svg},r.smil=function(){return!!b.createElementNS&&/SVG/.test(n.call(b.createElementNS(q.svg,"animate")))},r.svgclippaths=function(){return!!b.createElementNS&&/SVG/.test(n.call(b.createElementNS(q.svg,"clipPath")))};for(var H in r)z(r,H)&&(v=H.toLowerCase(),e[v]=r[H](),u.push((e[v]?"":"no-")+v));e.input||G(),e.crosswindowmessaging=e.postmessage,e.historymanagement=e.history,e.addTest=function(a,b){a=a.toLowerCase();if(!e[a]){b=!!b(),g.className+=" "+(b?"":"no-")+a,e[a]=b;return e}},A(""),j=l=null,f&&a.attachEvent&&function(){var a=b.createElement("div");a.innerHTML="<elem></elem>";return a.childNodes.length!==1}()&&function(a,b){function p(a,b){var c=-1,d=a.length,e,f=[];while(++c<d)e=a[c],(b=e.media||b)!="screen"&&f.push(p(e.imports,b),e.cssText);return f.join("")}function o(a){var b=-1;while(++b<e)a.createElement(d[b])}var c="abbr|article|aside|audio|canvas|details|figcaption|figure|footer|header|hgroup|mark|meter|nav|output|progress|section|summary|time|video",d=c.split("|"),e=d.length,f=new RegExp("(^|\\s)("+c+")","gi"),g=new RegExp("<(/*)("+c+")","gi"),h=new RegExp("(^|[^\\n]*?\\s)("+c+")([^\\n]*)({[\\n\\w\\W]*?})","gi"),i=b.createDocumentFragment(),j=b.documentElement,k=j.firstChild,l=b.createElement("body"),m=b.createElement("style"),n;o(b),o(i),k.insertBefore(m,k.firstChild),m.media="print",a.attachEvent("onbeforeprint",function(){var a=-1,c=p(b.styleSheets,"all"),k=[],o;n=n||b.body;while((o=h.exec(c))!=null)k.push((o[1]+o[2]+o[3]).replace(f,"$1.iepp_$2")+o[4]);m.styleSheet.cssText=k.join("\n");while(++a<e){var q=b.getElementsByTagName(d[a]),r=q.length,s=-1;while(++s<r)q[s].className.indexOf("iepp_")<0&&(q[s].className+=" iepp_"+d[a])}i.appendChild(n),j.appendChild(l),l.className=n.className,l.innerHTML=n.innerHTML.replace(g,"<$1font")}),a.attachEvent("onafterprint",function(){l.innerHTML="",j.removeChild(l),j.appendChild(n),m.styleSheet.cssText=""})}(a,b),e._enableHTML5=f,e._version=d,g.className=g.className.replace(/\bno-js\b/,"")+" js "+u.join(" ");return e}(this,this.document)
  </script>

</head>

<body>

  <div id="container">
    <header>
      <h1>Percolate Generated Documentation</h1>
    </header>
    <div id="main" role="main">
      %body%
    </div>
    <footer>

    </footer>
  </div> <!--! end of #container -->
  <!-- Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if necessary -->
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.js"></script>
</body>
</html>
