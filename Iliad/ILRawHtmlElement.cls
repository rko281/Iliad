"Filed out from Dolphin Smalltalk 7"!

ILElement subclass: #ILRawHtmlElement
	instanceVariableNames: 'contents'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRawHtmlElement guid: (GUID fromString: '{75a735f6-6c18-4cf3-8b8b-1cc6b41ff440}')!
ILRawHtmlElement comment: ''!
!ILRawHtmlElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILRawHtmlElement methodsFor!

contents	^contents ifNil: ['']!

contents: aString	contents := aString!

printHtmlOn: aStream	" Private - See superimplementor's comment "	aStream nextPutAll: self contents! !
!ILRawHtmlElement categoriesFor: #contents!accessing!public! !
!ILRawHtmlElement categoriesFor: #contents:!accessing!public! !
!ILRawHtmlElement categoriesFor: #printHtmlOn:!printing!public! !

