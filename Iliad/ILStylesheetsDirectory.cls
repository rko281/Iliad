"Filed out from Dolphin Smalltalk 7"!

ILMemoryDirectory subclass: #ILStylesheetsDirectory
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILStylesheetsDirectory guid: (GUID fromString: '{8fc18ebe-a2b7-4207-a668-3c2e76c8240b}')!
ILStylesheetsDirectory comment: ''!
!ILStylesheetsDirectory categoriesForClass!Iliad-Core-DIrectories! !
!ILStylesheetsDirectory methodsFor!

iliadCss	^ 'body {    background-color: #f4f1f1;    font-family: "Verdana", "DejaVu Sans", sans-serif;    color: #636363;    font-size: 12px;    text-align: center;}img {    border: 0 none}.wrapper {    margin: 0 auto;    text-align: left;    width: 600px;}.logo {    text-align: center;}h1, h2, h3 {    font-weight: normal;}h1 {    color: #3B3B3B;    font-size: 32px;}h2 {    font-size: 22px;}h3 {    font-size: 18px;    margin-top: 5px;    margin-bottom: 5px;}a, a:visited {    color: #660e7b;    font-weight: bold;    text-decoration: none;}a:hover {    color: #111;}table {    margin: 10px;    padding: 10px;    line-height: 1.5em;    border: 1px solid #ccc;    background: #fcfcfc}thead {    font-size: 1.4em}td {    padding-left: 14px;    padding-right: 14px;}pre {    margin: 10px;    padding: 10px;    line-height: 1.5em;    background-color: #fafafa;    border: 1px solid #cef6c9;}input, textarea {    border: 1px solid #444;}.error, .errors {    color: #d51a2c;    font-weight: bold}.errors {margin-bottom: 10px}.error input, .error textarea {    background-color: #f4e5e6;     border: 1px solid #d51a2c}.required:after {	content: '' *''; 	color: #d51a2c; 	font-weight: bold}.results {	float: left}.search_class {	float: left}'!

iliaduiCss	^ '/* ---    Layouts----------------------------------------------------------------------------- */._ui {    /*outline: 2px dashed #0088CC*/}._ui ._widget {    margin: 0 5px;}._ui.vbox>._widget, ._ui.vpaned>._widget {    float: left;    display: inline;}._ui.hbox>._widget, ._ui.hpaned>._widget {    display: block;}/* ---    Tree----------------------------------------------------------------------------- */._ui .tree ._widget {    padding: 0;     margin: 0;}._ui .tree ul {    list-style: none;     margin: 0;}._ui .tree .arrow img {    border: none;}/* ---    Tabs----------------------------------------------------------------------------- */._ui.tabs {    border-bottom : 1px solid #ccc;    padding-bottom : 23px;    padding-left : 10px;    margin-bottom: 10px;}._ui.tabs ul, ._ui.tabs li {    display : inline;    list-style-type : none;    margin : 0;    padding : 0;}._ui.tabs a:link, ._ui.tabs a:visited	{	background : #E8EBF0;	border : 1px solid #ccc;	color : #666;	float : left;	font-size : 18px;    font-style: normal;	font-weight : normal;	line-height : 18px;	margin-right : 8px;	padding : 2px 10px 2px 10px;	text-decoration : none;}._ui.tabs li.selected a, ._ui.tabs li.selected a:visited {	background : #fff;	border-bottom : 1px solid #fff;	color : #000;}._ui.tabs ul a:hover	{	color : #0088CC;}._ui.tabs .selected a {	background : #fff;	border-bottom : 1px solid #fff;	color : #000;}._ui.tabs li.selected a, ._ui.tabs li.selected a:visited {	background : #fff;	border-bottom : 1px solid #fff;	color : #000;}._ui.tabs ul a:hover	{	color : #0088CC;}._ui.tabs .selected a {	background : #fff;	border-bottom : 1px solid #fff;	color : #000;}'!

jqueryautocompleteCss	^ '.ac_results {	padding: 0px;	background-color: white;	overflow: hidden;	z-index: 99999;}.ac_results ul {	width: 100%;	list-style-position: outside;	list-style: none;	padding: 0;	margin: 0;}.ac_results li {	margin: 0px;	padding: 2px 5px;	cursor: default;	display: block;	/* 	if width will be 100% horizontal scrollbar will apear 	when scroll mode will be used	*/	/*width: 100%;*/	font: menu;	font-size: 12px;	/* 	it is very important, if line-height not setted or setted 	in relative units scroll will be broken in firefox	*/	line-height: 16px;	overflow: hidden;}.ac_loading {	background: white url(''indicator.gif'') right center no-repeat;}.ac_odd {	background-color: #eee;}.ac_over {	background-color: #0088CC;	color: white;}'!

lightboxCss	^ '.overlay {  position: fixed;  top: 0;  left: 0;  bottom: 0;  right: 0;  background-color: black;  z-index: 9998;  filter: alpha(opacity=30);  -moz-opacity: 0.3;  opacity: 0.3;}/* IE 6 specific fix for lack of ''position: fixed'' implementation */* html .overlay {  position: absolute;  left: expression(documentElement.scrollLeft + ''px'');  top: expression(documentElement.scrollTop + ''px'');  width: expression(document.documentElement.clientWidth + ''px'');  height: expression(document.documentElement.clientHeight + ''px'');}.lightbox {  /*position: fixed;  _position: absolute; */  z-index: 9999;  background-color: #fdfffc;  padding: 10px;  border: 1px solid #3b3b3b;}'!

path	^'stylesheets'! !
!ILStylesheetsDirectory categoriesFor: #iliadCss!files!public! !
!ILStylesheetsDirectory categoriesFor: #iliaduiCss!files!public! !
!ILStylesheetsDirectory categoriesFor: #jqueryautocompleteCss!files!public! !
!ILStylesheetsDirectory categoriesFor: #lightboxCss!files!public! !
!ILStylesheetsDirectory categoriesFor: #path!accessing!public! !

!ILStylesheetsDirectory class methodsFor!

initialize	ILFileHandler addDirectory: self new! !
!ILStylesheetsDirectory class categoriesFor: #initialize!initialization!public! !

