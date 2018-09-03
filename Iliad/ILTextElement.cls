"Filed out from Dolphin Smalltalk 7"!

ILElement subclass: #ILTextElement
	instanceVariableNames: 'contents tag'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTextElement guid: (GUID fromString: '{ea2fe9a5-1a36-4dcd-a587-35ac0283442d}')!
ILTextElement comment: ''!
!ILTextElement categoriesForClass!Iliad-Core-Elements! !
!ILTextElement methodsFor!

add: anElement	ILElementError 		signal: 'Can''t add an element to a ', self className!

contents	^contents ifNil: [contents := String new]!

contents: aString	contents := aString!

printHtmlOn: aStream	" Private - See superimplementor's comment "	self printOpenTagOn: aStream.	ILEncoder encodeForHTTP: self contents on: aStream.	self printCloseTagOn: aStream!

tag	^ tag!

tag: aString	tag := aString!

text: aString	self contents: aString! !
!ILTextElement categoriesFor: #add:!adding!public! !
!ILTextElement categoriesFor: #contents!accessing!public! !
!ILTextElement categoriesFor: #contents:!accessing!public! !
!ILTextElement categoriesFor: #printHtmlOn:!printing!public! !
!ILTextElement categoriesFor: #tag!accessing!public! !
!ILTextElement categoriesFor: #tag:!accessing!public! !
!ILTextElement categoriesFor: #text:!adding!public! !

