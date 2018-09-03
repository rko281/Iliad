"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILDirectionElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILDirectionElementTest guid: (GUID fromString: '{1496901e-6806-4cda-a608-2e64f50162da}')!
ILDirectionElementTest comment: ''!
!ILDirectionElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILDirectionElementTest methodsFor!

setUp	e := ILDirectionElement new!

testDir	e dir: 'foo'.	self shouldHaveAttribute: 'dir' value: 'foo'!

testTag	self assert: e tag equals: 'bdo'! !
!ILDirectionElementTest categoriesFor: #setUp!public!running! !
!ILDirectionElementTest categoriesFor: #testDir!public!testing! !
!ILDirectionElementTest categoriesFor: #testTag!public!testing! !

