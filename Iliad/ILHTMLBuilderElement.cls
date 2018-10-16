"Filed out from Dolphin Smalltalk 7"!

ILElement subclass: #ILHTMLBuilderElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILHTMLBuilderElement guid: (GUID fromString: '{f11bc8d3-eb96-4459-8281-8ac57707a09b}')!
ILHTMLBuilderElement comment: ''!
!ILHTMLBuilderElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILHTMLBuilderElement methodsFor!

a	^self add: ILAnchorElement new!

area	^self add: ILAreaElement new!

b	^ self add: (ILTextElement new			tag: 'b';			yourself)!

b: aString 	^ self b		contents: aString;		yourself!

bdo	^self add: ILDirectionElement new!

beDraggable	self attributeAt: 'draggable' put: 'true'.!

big	^self add: (ILTextElement new		tag: 'big';		yourself)!

big: aString	^self big		contents: aString;		yourself !

blockquote	^self add: (ILTextElement new		tag: 'blockquote';		yourself) !

blockquote: aString	^self blockquote		contents: aString;		yourself		!

br	^self add: ILBreakElement new!

button	^self add: ILButtonElement new!

caption	^self add: ILCaptionElement new!

caption: aString	^self caption 		text: aString; 		yourself!

checkbox	^self add: ILCheckboxElement new!

cite	^self add: (ILTextElement new		tag: 'cite';		yourself) !

cite: aString	^self cite		contents: aString;		yourself !

class: aString	^self cssClass: aString!

code	^self add: (ILTextElement new		tag: 'code';		yourself) !

code: aString	^self code		contents: aString;		yourself !

contentType	^'text/html; charset=', self encoding!

cssClass	^self attributeAt: 'class'!

cssClass: aString 	self 		attributeAt: 'class'		put: aString!

dd	^self add: (ILTextElement new		tag: 'dd';		yourself) !

dfn	^self add: (ILTextElement new		tag: 'dfn';		yourself) !

div	^self add: ILDivElement new!

dl	^self add: (ILTextElement new		tag: 'dl';		yourself) !

dt	^self add: (ILTextElement new		tag: 'dt';		yourself) !

em	^self add: (ILTextElement new		tag: 'em';		yourself)!

em: aString	^self em		contents: aString;		yourself!

encoding	^self session ifNil: ['UTF-8'] ifNotNil: [self session encoding]!

favicon	^self link		beFavicon;		yourself!

favicon: aString	^self favicon		href: aString;		yourself!

fieldset	^self add: ILFieldsetElement new!

file	^self input 		beFile;		yourself!

form	^self add: ILFormElement new !

h	^self add: ILHeadingElement new!

h1	^self add: (ILHeadingElement new		level: 1;		yourself)!

h1: aString	^self h1 		text: aString; 		yourself!

h2	^self add: (ILHeadingElement new		level: 2;		yourself)!

h2: aString	^self h2 		text: aString; 		yourself!

h3	^self add: (ILHeadingElement new		level: 3;		yourself)!

h3: aString	^self h3 		text: aString; 		yourself!

h4	^self add: (ILHeadingElement new		level: 4;		yourself)!

h4: aString	^self h4		text: aString; 		yourself!

h5	^self add: (ILHeadingElement new		level: 5;		yourself)!

h5: aString	^self h5		text: aString; 		yourself!

h6	^self add: (ILHeadingElement new		level: 6;		yourself)!

h6: aString	^self h6		text: aString; 		yourself!

hr	^self add: ILHorizontalRuleElement new!

html: aString	^self add: (ILRawHtmlElement new		contents: aString;		yourself)!

i	^self add: (ILTextElement new		tag: 'i';		yourself)!

i: aString	^self i 		contents: aString; 		yourself!

id	^self attributeAt: 'id'!

id: aString 	self attributeAt: 'id' put: aString!

if	^self add: (ILConditionalCommentElement new)!

img	^self add: ILImageElement new!

img: aString	^self img		src: aString;		yourself!

input	^self add: ILInputElement new!

javascript	^self script		beJavascript;		yourself!

label	^self add: ILLabelElement new !

label: aString	^self label 		text: aString; 		yourself!

lang: aString 	self attributeAt: 'lang' put: aString!

legend	^self add: ILLegendElement new!

legend: aString	^self legend		text: aString;		yourself!

li	^self add: ILListItemElement new!

link	^self add: ILLinkElement new!

map	^self add: ILMapElement new!

meta	^self add: ILMetaElement new!

nbsp	^self add: (ILRawHtmlElement new 		contents: '&nbsp;'; 		yourself)!

object	^self add: ILObjectElement new!

ol	^self add: (ILListElement new		beOrdered;		yourself)!

onBlur: aString	self onEvent: 'blur' add: aString!

onBlurDo: aBlock	self onEvent: 'blur' do: aBlock!

onChange: aString	self onEvent: 'change' add: aString!

onChangeDo: aBlock	self onEvent: 'change' do: aBlock!

onClick: aString	self onEvent: 'click' add: aString!

onClickDo: aBlock	self onEvent: 'click' do: aBlock!

onDoubleClick: aString	self onEvent: 'dblclick' add: aString!

onDoubleClickDo: aBlock	self onEvent: 'dblclick' do: aBlock!

onDrag: aString	self onEvent: 'ondrag' add: aString!

onDragDo: aBlock	self onEvent: 'ondrag' do: aBlock!

onDragEnd: aString	self onEvent: 'ondragend' add: aString!

onDragEndDo: aBlock	self onEvent: 'ondragend' do: aBlock!

onDragEnter: aString	self onEvent: 'ondragenter' add: aString!

onDragEnterDo: aBlock	self onEvent: 'ondragenter' do: aBlock!

onDragLeave: aString	self onEvent: 'ondragleave' add: aString!

onDragLeaveDo: aBlock	self onEvent: 'ondragleave' do: aBlock!

onDragOver: aString	self onEvent: 'ondragover' add: aString!

onDragOverDo: aBlock	self onEvent: 'ondragover' do: aBlock!

onDragStart: aString	self onEvent: 'ondragstart' add: aString!

onDragStartDo: aBlock	self onEvent: 'ondragstart' do: aBlock!

onDrop: aString	self onEvent: 'ondrop' add: aString!

onDropDo: aBlock	self onEvent: 'ondrop' do: aBlock!

onEvent: aString add: anotherString	| oldString |	oldString := (self attributeAt: 'on', aString) ifNil: [''].		self attributeAt: 'on', aString put: (oldString, anotherString)!

onEvent: aString do: aBlock	| actionUrl |	actionUrl := (self context urlBuilder urlForAction: 		(self session registerActionFor: aBlock)) greaseString.	self 		onEvent: aString add: ('iliad.evaluateAction("', actionUrl, '");')!

onFocus: aString	self onEvent: 'focus' add: aString!

onFocusDo: aBlock	self onEvent: 'focus' do: aBlock!

onKeyDown: aString	self onEvent: 'keydown' add: aString!

onKeyDownDo: aBlock	self onEvent: 'keydown' do: aBlock!

onKeyPress: aString	self onEvent: 'keypress' add: aString!

onKeyPressDo: aBlock	self onEvent: 'keypress' do: aBlock!

onKeyUp: aString	self onEvent: 'keyup' add: aString!

onKeyUpDo: aBlock	self onEvent: 'keyup' do: aBlock!

onMouseOut: aString	self onEvent: 'mouseout' add: aString!

onMouseOutDo: aBlock	self onEvent: 'mouseout' do: aBlock!

onMouseOver: aString	self onEvent: 'mouseover' add: aString!

onMouseOverDo: aBlock	self onEvent: 'mouseover' do: aBlock!

onSelect: aString	self onEvent: 'select' add: aString!

onSelectDo: aBlock	self onEvent: 'select' do: aBlock!

optgroup	^self add: ILOptionGroupElement new!

option	^self add: ILOptionElement new!

p	^self add: ILParagraphElement new!

p: aString	^self p		text: aString;		yourself!

param	^self add: ILParameterElement new!

password	^self input		bePassword;		yourself!

pre	^self add: (ILPreElement new)!

pre: aString	^self pre		text: aString;		yourself!

quote	^self add: (ILTextElement new		tag: 'quote';		yourself)!

quote: aString	^self quote		contents: aString;		yourself!

radio	^self add: ILRadioButtonElement new!

reset	^self input		beReset;		yourself!

script	^self add: ILScriptElement new!

script: aString	^self script		contents: aString;		yourself!

select	^self add: ILSelectElement new!

small	^self add: (ILTextElement new		tag: 'small';		yourself)!

small: aString	^self small		contents: aString;		yourself!

space	^self text: ' '!

span	^self add: ILSpanElement new!

span: aString	^ self span		text: aString;		yourself!

strong	^self add: (ILTextElement new		tag: 'strong';		yourself)!

strong: aString	^self strong		contents: aString;		yourself!

style	^self attributeAt: 'style'!

style: aString 	self attributeAt: 'style' put: aString!

stylesheet	^self link 		beStylesheet;		yourself!

submit	^self input 		beSubmit;		yourself!

subscript	^self add: (ILTextElement new 		tag: 'subscript';		yourself)!

subscript: aString	^self subscript 		contents: aString;		yourself!

superscript	^self add: (ILTextElement new		tag: 'superscript';		yourself)!

superscript: aString	^self superscript 		contents: aString;		yourself!

table	^self add: ILTableElement new!

tbody	^self add: ILTableBodyElement new!

td	^self add: ILTableDataElement new!

textarea	^self add: ILTextAreaElement new!

tfoot	^self add: ILTableFootElement new!

th	^self add: ILTableHeaderElement new!

thead	^self add: ILTableHeadElement new!

title	^self attributeAt: 'title'!

title: aString	^self attributeAt: 'title' put: aString!

tr	^self add: ILTableRowElement new!

tt	^self add: (ILTextElement new		tag: 'tt';		yourself) !

ul	^self add: (ILListElement new		beUnordered;		yourself)!

var	^self add: (ILTextElement new		tag: 'var';		yourself)!

var: aString	^self var		contents: aString;		yourself!

xmlLang: aString 	self attributeAt: 'xml:lang' put: aString! !
!ILHTMLBuilderElement categoriesFor: #a!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #area!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #b!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #b:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #bdo!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #beDraggable!accessing attributes!public! !
!ILHTMLBuilderElement categoriesFor: #big!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #big:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #blockquote!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #blockquote:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #br!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #button!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #caption!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #caption:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #checkbox!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #cite!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #cite:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #class:!accessing!public! !
!ILHTMLBuilderElement categoriesFor: #code!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #code:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #contentType!accessing!public! !
!ILHTMLBuilderElement categoriesFor: #cssClass!accessing attributes!public! !
!ILHTMLBuilderElement categoriesFor: #cssClass:!accessing attributes!public! !
!ILHTMLBuilderElement categoriesFor: #dd!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #dfn!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #div!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #dl!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #dt!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #em!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #em:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #encoding!accessing!public! !
!ILHTMLBuilderElement categoriesFor: #favicon!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #favicon:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #fieldset!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #file!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #form!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #h!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #h1!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #h1:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #h2!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #h2:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #h3!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #h3:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #h4!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #h4:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #h5!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #h5:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #h6!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #h6:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #hr!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #html:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #i!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #i:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #id!accessing attributes!public! !
!ILHTMLBuilderElement categoriesFor: #id:!accessing attributes!public! !
!ILHTMLBuilderElement categoriesFor: #if!accessing!public! !
!ILHTMLBuilderElement categoriesFor: #img!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #img:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #input!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #javascript!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #label!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #label:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #lang:!accessing attributes!public! !
!ILHTMLBuilderElement categoriesFor: #legend!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #legend:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #li!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #link!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #map!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #meta!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #nbsp!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #object!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #ol!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #onBlur:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onBlurDo:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onChange:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onChangeDo:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onClick:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onClickDo:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onDoubleClick:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onDoubleClickDo:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onDrag:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onDragDo:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onDragEnd:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onDragEndDo:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onDragEnter:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onDragEnterDo:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onDragLeave:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onDragLeaveDo:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onDragOver:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onDragOverDo:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onDragStart:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onDragStartDo:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onDrop:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onDropDo:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onEvent:add:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onEvent:do:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onFocus:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onFocusDo:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onKeyDown:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onKeyDownDo:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onKeyPress:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onKeyPressDo:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onKeyUp:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onKeyUpDo:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onMouseOut:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onMouseOutDo:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onMouseOver:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onMouseOverDo:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onSelect:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #onSelectDo:!accessing attributes/events!public! !
!ILHTMLBuilderElement categoriesFor: #optgroup!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #option!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #p!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #p:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #param!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #password!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #pre!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #pre:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #quote!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #quote:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #radio!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #reset!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #script!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #script:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #select!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #small!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #small:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #space!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #span!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #span:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #strong!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #strong:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #style!accessing attributes!public! !
!ILHTMLBuilderElement categoriesFor: #style:!accessing attributes!public! !
!ILHTMLBuilderElement categoriesFor: #stylesheet!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #submit!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #subscript!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #subscript:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #superscript!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #superscript:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #table!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #tbody!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #td!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #textarea!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #tfoot!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #th!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #thead!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #title!accessing attributes!public! !
!ILHTMLBuilderElement categoriesFor: #title:!accessing attributes!public! !
!ILHTMLBuilderElement categoriesFor: #tr!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #tt!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #ul!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #var!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #var:!adding/conveniance!public! !
!ILHTMLBuilderElement categoriesFor: #xmlLang:!accessing attributes!public! !

