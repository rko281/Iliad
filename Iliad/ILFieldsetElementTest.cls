"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILFieldsetElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFieldsetElementTest guid: (GUID fromString: '{efd5b609-b28e-4e73-aa23-f0215253b411}')!
ILFieldsetElementTest comment: ''!
!ILFieldsetElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILFieldsetElementTest methodsFor!

setUp	e := ILFieldsetElement new!

testTag	self assert: e tag equals: 'fieldset'! !
!ILFieldsetElementTest categoriesFor: #setUp!public!running! !
!ILFieldsetElementTest categoriesFor: #testTag!public!testing! !

