"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILTableHeadElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTableHeadElementTest guid: (GUID fromString: '{fbeacf42-a982-48ce-9f36-1aa53a575e3d}')!
ILTableHeadElementTest comment: ''!
!ILTableHeadElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILTableHeadElementTest methodsFor!

setUp	e := ILTableHeadElement new!

testTag	self assert: e tag equals: 'thead'! !
!ILTableHeadElementTest categoriesFor: #setUp!public!running! !
!ILTableHeadElementTest categoriesFor: #testTag!public!testing! !

