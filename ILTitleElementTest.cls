"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILTitleElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTitleElementTest guid: (GUID fromString: '{b5ba0263-43a7-4403-ba59-f88b06e29cd3}')!
ILTitleElementTest comment: ''!
!ILTitleElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILTitleElementTest methodsFor!

setUp	e := ILTitleElement new!

testTag	self assert: e tag equals: 'title'! !
!ILTitleElementTest categoriesFor: #setUp!public!running! !
!ILTitleElementTest categoriesFor: #testTag!public!testing! !

