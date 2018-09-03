"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILScriptElement
	instanceVariableNames: 'contents'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILScriptElement guid: (GUID fromString: '{5bdb265b-bc0d-480f-a0ee-e4378158c17e}')!
ILScriptElement comment: ''!
!ILScriptElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILScriptElement methodsFor!

beforePrintHtml	self attributeAt: 'type' ifAbsent: [self beJavascript]!

beJavascript	self type: 'text/javascript'!

charset: aString 	self attributeAt: 'charset' put: aString!

contents	^contents ifNil: ['']!

contents: aString 	contents := aString!

defer	self attributeAt: 'defer' put: 'defer'!

language: aString 	self attributeAt: 'language' put: aString!

printHtmlOn: aStream	"do not encode contents!!"	self printOpenTagOn: aStream.	aStream nextPutAll: self contents. 	self printCloseTagOn: aStream!

src: aString 	self attributeAt: 'src' put: aString!

tag	^ 'script'!

type: aString 	self attributeAt: 'type' put: aString! !
!ILScriptElement categoriesFor: #beforePrintHtml!printing!public! !
!ILScriptElement categoriesFor: #beJavascript!accessing attributes!public! !
!ILScriptElement categoriesFor: #charset:!accessing attributes!public! !
!ILScriptElement categoriesFor: #contents!accessing!public! !
!ILScriptElement categoriesFor: #contents:!accessing!public! !
!ILScriptElement categoriesFor: #defer!accessing attributes!public! !
!ILScriptElement categoriesFor: #language:!accessing attributes!public! !
!ILScriptElement categoriesFor: #printHtmlOn:!printing!public! !
!ILScriptElement categoriesFor: #src:!accessing attributes!public! !
!ILScriptElement categoriesFor: #tag!accessing!public! !
!ILScriptElement categoriesFor: #type:!accessing attributes!public! !

