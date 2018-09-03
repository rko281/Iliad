"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILObjectElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILObjectElementTest guid: (GUID fromString: '{aa7abafc-4cec-4a1d-a90c-a03e09aa95fb}')!
ILObjectElementTest comment: ''!
!ILObjectElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILObjectElementTest methodsFor!

setUp	e := ILObjectElement new!

testArchive	e archive: 'foo'.	self shouldHaveAttribute: 'archive' value: 'foo'!

testArchives	e archives: #('foo' 'bar').	self shouldHaveAttribute: 'archive' value: 'foo bar'!

testClassId	e classid: 'foo'.	self shouldHaveAttribute: 'classid' value: 'foo'!

testCodeBase	e codebase: 'foo'.	self shouldHaveAttribute: 'codebase' value: 'foo'!

testCodeType	e codetype: 'foo'.	self shouldHaveAttribute: 'codetype' value: 'foo'!

testData	e data: 'foo'.	self shouldHaveAttribute: 'data' value: 'foo'!

testDeclare	e declare.	self shouldHaveAttribute: 'declare' value: 'declare'!

testHeight	e height: 2.	self shouldHaveAttribute: 'height' value: '2'!

testName	e name: 'foo'.	self shouldHaveAttribute: 'name' value: 'foo'!

testStandBy	e standby: 'foo'.	self shouldHaveAttribute: 'standby' value: 'foo'!

testTabIndex	e tabindex: 2.	self shouldHaveAttribute: 'tabindex' value: '2'!

testTag	self assert: e tag equals: 'object'!

testType	e type: 'foo'.	self shouldHaveAttribute: 'type' value: 'foo'!

testUseMap	e usemap: 'foo'.	self shouldHaveAttribute: 'usemap' value: 'foo'!

testWidth	e width: 2.	self shouldHaveAttribute: 'width' value: '2'! !
!ILObjectElementTest categoriesFor: #setUp!public!running! !
!ILObjectElementTest categoriesFor: #testArchive!public!testing! !
!ILObjectElementTest categoriesFor: #testArchives!public!testing! !
!ILObjectElementTest categoriesFor: #testClassId!public!testing! !
!ILObjectElementTest categoriesFor: #testCodeBase!public!testing! !
!ILObjectElementTest categoriesFor: #testCodeType!public!testing! !
!ILObjectElementTest categoriesFor: #testData!public!testing! !
!ILObjectElementTest categoriesFor: #testDeclare!public!testing! !
!ILObjectElementTest categoriesFor: #testHeight!public!testing! !
!ILObjectElementTest categoriesFor: #testName!public!testing! !
!ILObjectElementTest categoriesFor: #testStandBy!public!testing! !
!ILObjectElementTest categoriesFor: #testTabIndex!public!testing! !
!ILObjectElementTest categoriesFor: #testTag!public!testing! !
!ILObjectElementTest categoriesFor: #testType!public!testing! !
!ILObjectElementTest categoriesFor: #testUseMap!public!testing! !
!ILObjectElementTest categoriesFor: #testWidth!public!testing! !

