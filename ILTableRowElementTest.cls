"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILTableRowElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTableRowElementTest guid: (GUID fromString: '{a4eadee9-36a2-47ef-b1ce-caa1f9fae370}')!
ILTableRowElementTest comment: ''!
!ILTableRowElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILTableRowElementTest methodsFor!

setUp	e := ILTableRowElement new!

testTag	self assert: e tag equals: 'tr'! !
!ILTableRowElementTest categoriesFor: #setUp!public!running! !
!ILTableRowElementTest categoriesFor: #testTag!public!testing! !

