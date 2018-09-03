"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILParagraphElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILParagraphElementTest guid: (GUID fromString: '{b170a717-544c-4d58-a9af-598a63f66065}')!
ILParagraphElementTest comment: ''!
!ILParagraphElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILParagraphElementTest methodsFor!

setUp	e := ILParagraphElement new!

testTag	self assert: e tag equals: 'p'! !
!ILParagraphElementTest categoriesFor: #setUp!public!running! !
!ILParagraphElementTest categoriesFor: #testTag!public!testing! !

