"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILElementTest
	instanceVariableNames: 'e'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILElementTest guid: (GUID fromString: '{bb67f35b-70e0-494c-8b6f-0a5ef83bbf69}')!
ILElementTest comment: ''!
!ILElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILElementTest methodsFor!

setUp	e := ILElement new!

shouldHaveAttribute: aKey value: aValue	self assert: (e attributes associations includes: aKey->aValue)!

testAttributes	self assert: e attributes isEmpty.	e attributeAt: 'foo' put: 'bar'.	self shouldHaveAttribute: 'foo' value: 'bar'!

testTag	self assert: e tag equals: nil!

withContextDo: aBlock	ILCurrentContext		use: (ILContext new session: ILSession new)		during: aBlock! !
!ILElementTest categoriesFor: #setUp!public!running! !
!ILElementTest categoriesFor: #shouldHaveAttribute:value:!conveniance!public! !
!ILElementTest categoriesFor: #testAttributes!public!testing! !
!ILElementTest categoriesFor: #testTag!public!testing! !
!ILElementTest categoriesFor: #withContextDo:!conveniance!public! !

