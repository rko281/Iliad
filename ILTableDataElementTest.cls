"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILTableDataElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTableDataElementTest guid: (GUID fromString: '{d76abe0d-3742-4dfd-a007-f61b1c3c3e46}')!
ILTableDataElementTest comment: ''!
!ILTableDataElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILTableDataElementTest methodsFor!

setUp	e := ILTableDataElement new!

testTag	self assert: e tag equals: 'td'! !
!ILTableDataElementTest categoriesFor: #setUp!public!running! !
!ILTableDataElementTest categoriesFor: #testTag!public!testing! !

