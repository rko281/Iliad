"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILRSSSourceElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRSSSourceElementTest guid: (GUID fromString: '{0ad8012d-1684-4fa5-9fb9-452f7fcdf8f5}')!
ILRSSSourceElementTest comment: ''!
!ILRSSSourceElementTest categoriesForClass!Iliad-Tests-RSS! !
!ILRSSSourceElementTest methodsFor!

setUp	e := ILRSSSourceElement new!

testTag	self assert: e tag equals: 'source'!

testUrl	e url: 'foo'.	self shouldHaveAttribute: 'url' value: 'foo'! !
!ILRSSSourceElementTest categoriesFor: #setUp!public!running! !
!ILRSSSourceElementTest categoriesFor: #testTag!public!testing! !
!ILRSSSourceElementTest categoriesFor: #testUrl!public!testing! !

