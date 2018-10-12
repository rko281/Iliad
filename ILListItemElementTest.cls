"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILListItemElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILListItemElementTest guid: (GUID fromString: '{d1d42083-d5b4-499c-8362-86d95ef51187}')!
ILListItemElementTest comment: ''!
!ILListItemElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILListItemElementTest methodsFor!

setUp	e := ILListItemElement new!

testTag	self assert: e tag equals: 'li'! !
!ILListItemElementTest categoriesFor: #setUp!public!running! !
!ILListItemElementTest categoriesFor: #testTag!public!testing! !

