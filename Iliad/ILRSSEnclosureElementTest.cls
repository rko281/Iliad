"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILRSSEnclosureElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRSSEnclosureElementTest guid: (GUID fromString: '{04a95b48-1a3a-4722-a274-bcbea4f882e0}')!
ILRSSEnclosureElementTest comment: ''!
!ILRSSEnclosureElementTest categoriesForClass!Iliad-Tests-RSS! !
!ILRSSEnclosureElementTest methodsFor!

setUp	e := ILRSSEnclosureElement new!

testlength	e length: 123456789.	self shouldHaveAttribute: 'length' value: '123456789'!

testTag	self assert: e tag equals: 'enclosure'!

testType	e type: 'foo'.	self shouldHaveAttribute: 'type' value: 'foo'!

testUrl	e url: 'foo'.	self shouldHaveAttribute: 'url' value: 'foo'! !
!ILRSSEnclosureElementTest categoriesFor: #setUp!public!running! !
!ILRSSEnclosureElementTest categoriesFor: #testlength!public!testing! !
!ILRSSEnclosureElementTest categoriesFor: #testTag!public!testing! !
!ILRSSEnclosureElementTest categoriesFor: #testType!public!testing! !
!ILRSSEnclosureElementTest categoriesFor: #testUrl!public!testing! !

