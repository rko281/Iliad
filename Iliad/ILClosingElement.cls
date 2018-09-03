"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILClosingElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILClosingElement guid: (GUID fromString: '{16c218ac-3add-4781-930e-f67f76b6899b}')!
ILClosingElement comment: ''!
!ILClosingElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILClosingElement methodsFor!

printHtmlOn: aStream	" Private - See superimplementor's comment "	aStream 		nextPut: $<;		nextPutAll: self tag.	self attributes associationsDo: [:each | 		self printAttribute: each on: aStream].	aStream nextPutAll: '/>'	! !
!ILClosingElement categoriesFor: #printHtmlOn:!printing!public! !

