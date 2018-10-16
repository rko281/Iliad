"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILTableBodyElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTableBodyElementTest guid: (GUID fromString: '{248fa4d9-7924-404e-b8d4-fa6e7e80a178}')!
ILTableBodyElementTest comment: ''!
!ILTableBodyElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILTableBodyElementTest methodsFor!

setUp	e := ILTableBodyElement new!

testTag	self assert: e tag equals: 'tbody'! !
!ILTableBodyElementTest categoriesFor: #setUp!public!running! !
!ILTableBodyElementTest categoriesFor: #testTag!public!testing! !

