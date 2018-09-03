"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILRSSCategoryElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRSSCategoryElementTest guid: (GUID fromString: '{8fd88784-bc5e-4bbd-a2bc-61d1181cd4c4}')!
ILRSSCategoryElementTest comment: ''!
!ILRSSCategoryElementTest categoriesForClass!Iliad-Tests-RSS! !
!ILRSSCategoryElementTest methodsFor!

setUp	e := ILRSSCategoryElement new!

testDomain	e domain: 'foo'.	self shouldHaveAttribute: 'domain' value: 'foo'!

testTag	self assert: e tag equals: 'category'! !
!ILRSSCategoryElementTest categoriesFor: #setUp!public!running! !
!ILRSSCategoryElementTest categoriesFor: #testDomain!public!testing! !
!ILRSSCategoryElementTest categoriesFor: #testTag!public!testing! !

