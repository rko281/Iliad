"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILTextElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTextElementTest guid: (GUID fromString: '{80fffb0c-0fdf-47ef-9f0d-9b99ab1f1514}')!
ILTextElementTest comment: ''!
!ILTextElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILTextElementTest methodsFor!

setUp	e := ILTextElement new!

testAdd	self should: [e add: ILElement new] raise: ILElementError!

testTag	self assert: e tag equals: nil!

testText	e text: 'foo'.	self assert: e contents equals: 'foo'! !
!ILTextElementTest categoriesFor: #setUp!public!running! !
!ILTextElementTest categoriesFor: #testAdd!public!testing! !
!ILTextElementTest categoriesFor: #testTag!public!testing! !
!ILTextElementTest categoriesFor: #testText!public!testing! !

