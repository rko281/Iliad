"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILHTMLBuilderElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILHTMLBuilderElementTest guid: (GUID fromString: '{9190d9a0-9935-4e63-8e7f-0ddcd5372fdf}')!
ILHTMLBuilderElementTest comment: ''!
!ILHTMLBuilderElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILHTMLBuilderElementTest methodsFor!

setUp	e := ILHTMLBuilderElement new!

testA	| a |	a := e a.	self assert: (a isKindOf: ILAnchorElement)!

testArea	| area |	area := e area.	self assert: (area isKindOf: ILAreaElement)!

testB	| b |	b := e b.	self assert: (b isKindOf: ILTextElement).	self assert: b tag equals: 'b'.	b := e b: 'foo'.	self assert: b contents equals: 'foo'!

testBdo	| bdo |	bdo := e bdo.	self assert: (bdo isKindOf: ILDirectionElement)!

testBig	| big |	big := e big.	self assert: (big isKindOf: ILTextElement).	self assert: big tag equals: 'big'.	big := e big: 'foo'.	self assert: big contents equals: 'foo'!

testBlockquote	| blockquote |	blockquote := e blockquote.	self assert: (blockquote isKindOf: ILTextElement).	self assert: blockquote tag equals: 'blockquote'.	blockquote := e blockquote: 'foo'.	self assert: blockquote contents equals: 'foo'!

testBr	| br |	br := e br.	self assert: (br isKindOf: ILBreakElement)!

testButton	| button |	button := e button.	self assert: (button isKindOf: ILButtonElement)!

testCheckbox	| checkbox |	checkbox := e checkbox.	self assert: (checkbox isKindOf: ILCheckboxElement)!

testCite	| cite |	cite := e cite.	self assert: (cite isKindOf: ILTextElement).	self assert: cite tag equals: 'cite'.	cite := e cite: 'foo'.	self assert: cite contents equals: 'foo'!

testClass	e cssClass: 'foo'.	self shouldHaveAttribute: 'class' value: 'foo'.	self assert: e cssClass equals: 'foo'!

testCode	| code |	code := e code.	self assert: (code isKindOf: ILTextElement).	self assert: code tag equals: 'code'.	code := e code: 'foo'.	self assert: code contents equals: 'foo'!

testDd	| dd |	dd := e dd.	self assert: (dd isKindOf: ILTextElement).	self assert: dd tag equals: 'dd'!

testDfn	| dfn |	dfn := e dfn.	self assert: (dfn isKindOf: ILTextElement).	self assert: dfn tag equals: 'dfn'!

testDiv	| div |	div := e div.	self assert: (div isKindOf: ILDivElement)!

testDl	| dl |	dl := e dl.	self assert: (dl isKindOf: ILTextElement).	self assert: dl tag equals: 'dl'!

testDt	| dt |	dt := e dt.	self assert: (dt isKindOf: ILTextElement).	self assert: dt tag equals: 'dt'!

testEm	| em |	em := e em.	self assert: (em isKindOf: ILTextElement).	self assert: em tag equals: 'em'.	em := e em: 'foo'.	self assert: em contents equals: 'foo'!

testFavicon	e := e favicon.	self assert: (e isKindOf: ILLinkElement).	self shouldHaveAttribute: 'rel' value: 'shortcut icon'.	e := e favicon: 'foo'.	self shouldHaveAttribute: 'href' value: 'foo'!

testFieldset	| fieldset |	fieldset := e fieldset.	self assert: (fieldset isKindOf: ILFieldsetElement)!

testFile	e := e file.	self assert: (e isKindOf: ILInputElement).	self shouldHaveAttribute: 'type' value: 'file'!

testForm	| form |	form := e form.	self assert: (form isKindOf: ILFormElement)!

testH	| h |	h := e h.	self assert: (h isKindOf: ILHeadingElement)!

testH1	| h1 |	h1 := e h1.	self assert: (h1 isKindOf: ILHeadingElement).	self assert: h1 level equals: '1'!

testH2	| h2 |	h2 := e h2.	self assert: (h2 isKindOf: ILHeadingElement).	self assert: h2 level equals: '2'!

testH3	| h3 |	h3 := e h3.	self assert: (h3 isKindOf: ILHeadingElement).	self assert: h3 level equals: '3'!

testH4	| h4 |	h4 := e h4.	self assert: (h4 isKindOf: ILHeadingElement).	self assert: h4 level equals: '4'!

testH5	| h5 |	h5 := e h5.	self assert: (h5 isKindOf: ILHeadingElement).	self assert: h5 level equals: '5'!

testH6	| h6 |	h6 := e h6.	self assert: (h6 isKindOf: ILHeadingElement).	self assert: h6 level equals: '6'!

testHr	| hr |	hr := e hr.	self assert: (hr isKindOf: ILHorizontalRuleElement)!

testHtml	| html |	html := e html: 'foo'.	self assert: (html isKindOf: ILRawHtmlElement).	self assert: html contents equals: 'foo'!

testI	| i |	i := e i.	self assert: (i isKindOf: ILTextElement).	self assert: i tag equals: 'i'.	i := e i: 'foo'.	self assert: i contents equals: 'foo'!

testId	e id: 'foo'.	self assert: e id equals: 'foo'!

testImg	| img |	img := e img.	self assert: (img isKindOf: ILImageElement)!

testInput	| input |	input := e input.	self assert: (input isKindOf: ILInputElement)!

testJavascript	e := e javascript.	self assert: (e isKindOf: ILScriptElement).	self shouldHaveAttribute: 'type' value: 'text/javascript'	!

testLabel	| label |	label := e label.	self assert: (label isKindOf: ILLabelElement)!

testLang	e lang: 'foo'.	self shouldHaveAttribute: 'lang' value: 'foo'!

testLegend	| legend |	legend := e legend.	self assert: (legend isKindOf: ILLegendElement)!

testLi	| li |	li := e li.	self assert: (li isKindOf: ILListItemElement)!

testLink	| link |	link := e link.	self assert: (link isKindOf: ILLinkElement)!

testMap	| map |	map := e map.	self assert: (map isKindOf: ILMapElement)!

testMeta	| meta |	meta := e meta.	self assert: (meta isKindOf: ILMetaElement)!

testNbsp	| nbsp |	nbsp := e nbsp.	self assert: (nbsp isKindOf: ILRawHtmlElement).	self assert: nbsp contents equals: '&nbsp;'!

testObject	| object |	object := e object.	self assert: (object isKindOf: ILObjectElement)!

testOl	e := e ol.	self assert: (e isKindOf: ILListElement).	self assert: e tag equals: 'ol'!

testOnEvents	e onEvent: 'foo' add: 'bar'.	self assert: (e attributeAt: 'onfoo') equals: 'bar'.	e onClick: 'foo'.	self assert: (e attributeAt: 'onclick') equals: 'foo'.	e onMouseOut: 'foo'.	self assert: (e attributeAt: 'onmouseout') equals: 'foo'.	e onMouseOver: 'foo'.	self assert: (e attributeAt: 'onmouseover') equals: 'foo'.	e onSelect: 'foo'.	self assert: (e attributeAt: 'onselect') equals: 'foo'.	e onKeyUp: 'foo'.	self assert: (e attributeAt: 'onkeyup') equals: 'foo'.	e onDoubleClick: 'foo'.	self assert: (e attributeAt: 'ondblclick') equals: 'foo'.	e onKeyPress: 'foo'.	self assert: (e attributeAt: 'onkeypress') equals: 'foo'.	e onKeyDown: 'foo'.	self assert: (e attributeAt: 'onkeydown') equals: 'foo'.	e onChange: 'foo'.	self assert: (e attributeAt: 'onchange') equals: 'foo'.	e onBlur: 'foo'.	self assert: (e attributeAt: 'onblur') equals: 'foo'!

testOptGroup	| optgroup |	optgroup := e optgroup.	self assert: (optgroup isKindOf: ILOptionGroupElement)!

testOption	| option |	option := e option.	self assert: (option isKindOf: ILOptionElement)!

testP	| p |	p := e p.	self assert: (p isKindOf: ILParagraphElement)!

testParam	| param |	param := e param.	self assert: (param isKindOf: ILParameterElement)!

testPre	| pre |	pre := e pre.	self assert: (pre isKindOf: ILPreElement).	self assert: pre tag equals: 'pre'.	pre := e pre: 'foo'.	self assert: (pre children first isKindOf: ILTextElement)!

testQuote	| quote |	quote := e quote.	self assert: (quote isKindOf: ILTextElement).	self assert: quote tag equals: 'quote'.	quote := e quote: 'foo'.	self assert: quote contents equals: 'foo'!

testRadio	| radio |	radio := e radio.	self assert: (radio isKindOf: ILRadioButtonElement)!

testReset	e := e reset.	self assert: (e isKindOf: ILInputElement).	self shouldHaveAttribute: 'type' value: 'reset'!

testScript	| script |	script := e script.	self assert: (script isKindOf: ILScriptElement).	script := e script: 'foo'.	self assert: script contents equals: 'foo'!

testSmall	| small |	small := e small.	self assert: (small isKindOf: ILTextElement).	self assert: small tag equals: 'small'.	small := e small: 'foo'.	self assert: small contents equals: 'foo'!

testSpace	e := e space.	self assert: (e isKindOf: ILTextElement).	self assert: e contents equals: ' '!

testSpan	| span |	span := e span.	self assert: (span isKindOf: ILSpanElement).	span := e span: 'test'.	self assert: (span isKindOf: ILSpanElement).	self assert: ('<span>test</span>' = (String streamContents: [ : str | span printHtmlOn: str ])).!

testStrong	| strong |	strong := e strong.	self assert: (strong isKindOf: ILTextElement).	self assert: strong tag equals: 'strong'.	strong := e strong: 'foo'.	self assert: strong contents equals: 'foo'!

testStyle	e style: 'foo'.	self shouldHaveAttribute: 'style' value: 'foo'.	self assert: e style equals: 'foo'!

testStyleSheet	e := e stylesheet.	self assert: (e isKindOf: ILLinkElement).	self shouldHaveAttribute: 'rel' value: 'Stylesheet'.	self shouldHaveAttribute: 'type' value: 'text/css'!

testSubmit	e := e submit.	self assert: (e isKindOf: ILInputElement).	self shouldHaveAttribute: 'type' value: 'submit'	!

testSubscript	| sub |	sub := e subscript.	self assert: (sub isKindOf: ILTextElement).	self assert: sub tag equals: 'subscript'.	sub := e subscript: 'foo'.	self assert: sub contents equals: 'foo'!

testSuperscript	| superscript |	superscript := e superscript.	self assert: (superscript isKindOf: ILTextElement).	self assert: superscript tag equals: 'superscript'.	superscript := e superscript: 'foo'.	self assert: superscript contents equals: 'foo'!

testTable	| table |	table := e table.	self assert: (table isKindOf: ILTableElement)!

testTbody	| tbody |	tbody := e tbody.	self assert: (tbody isKindOf: ILTableBodyElement)!

testTd	| td |	td := e td.	self assert: (td isKindOf: ILTableDataElement)!

testTextarea	| textarea |	textarea := e textarea.	self assert: (textarea isKindOf: ILTextAreaElement)!

testTfoot	| tfoot |	tfoot := e tfoot.	self assert: (tfoot isKindOf: ILTableFootElement)!

testTh	| th |	th := e th.	self assert: (th isKindOf: ILTableHeaderElement)!

testThead	| thead |	thead := e thead.	self assert: (thead isKindOf: ILTableHeadElement)!

testTitle	e title: 'foo'.	self shouldHaveAttribute: 'title' value: 'foo'.	self assert: e title equals: 'foo'!

testTr	| tr |	tr := e tr.	self assert: (tr isKindOf: ILTableRowElement)!

testTt	| tt |	tt := e tt.	self assert: (tt isKindOf: ILTextElement).	self assert: tt tag equals: 'tt'!

testUl	e := e ul.	self assert: (e isKindOf: ILListElement).	self assert: e tag equals: 'ul'!

testVar	| var |	var := e var.	self assert: (var isKindOf: ILTextElement).	self assert: var tag equals: 'var'.	var := e var: 'foo'.	self assert: var contents equals: 'foo'!

testXmlLang	e xmlLang: 'foo'.	self shouldHaveAttribute: 'xml:lang' value: 'foo'! !
!ILHTMLBuilderElementTest categoriesFor: #setUp!public!running! !
!ILHTMLBuilderElementTest categoriesFor: #testA!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testArea!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testB!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testBdo!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testBig!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testBlockquote!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testBr!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testButton!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testCheckbox!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testCite!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testClass!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testCode!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testDd!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testDfn!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testDiv!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testDl!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testDt!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testEm!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testFavicon!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testFieldset!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testFile!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testForm!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testH!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testH1!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testH2!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testH3!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testH4!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testH5!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testH6!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testHr!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testHtml!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testI!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testId!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testImg!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testInput!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testJavascript!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testLabel!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testLang!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testLegend!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testLi!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testLink!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testMap!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testMeta!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testNbsp!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testObject!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testOl!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testOnEvents!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testOptGroup!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testOption!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testP!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testParam!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testPre!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testQuote!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testRadio!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testReset!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testScript!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testSmall!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testSpace!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testSpan!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testStrong!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testStyle!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testStyleSheet!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testSubmit!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testSubscript!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testSuperscript!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testTable!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testTbody!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testTd!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testTextarea!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testTfoot!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testTh!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testThead!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testTitle!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testTr!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testTt!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testUl!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testVar!public!testing! !
!ILHTMLBuilderElementTest categoriesFor: #testXmlLang!public!testing! !

