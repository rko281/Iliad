"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILMapElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILMapElementTest guid: (GUID fromString: '{796f9fce-73bf-4d2f-96c2-1f9e9e44a912}')!
ILMapElementTest comment: ''!
!ILMapElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILMapElementTest methodsFor!

setUp	e := ILMapElement new!

testTag	self assert: e tag equals: 'map'! !
!ILMapElementTest categoriesFor: #setUp!public!running! !
!ILMapElementTest categoriesFor: #testTag!public!testing! !

