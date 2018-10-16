"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILParameterElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILParameterElementTest guid: (GUID fromString: '{7f66835e-3436-4d0e-b2e6-81db9d005601}')!
ILParameterElementTest comment: ''!
!ILParameterElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILParameterElementTest methodsFor!

setUp	e := ILParameterElement new!

testAdd	self should: [e add: ILElement new] raise: ILElementError!

testAttributes	e beObject.	self shouldHaveAttribute: 'valuetype' value: 'object'.	e beData.	self shouldHaveAttribute: 'valuetype' value: 'data'.	e beReference.	self shouldHaveAttribute: 'valuetype' value: 'ref'		!

testName	e name: 'foo'.	self shouldHaveAttribute: 'name' value: 'foo'!

testTag	self assert: e tag equals: 'param'!

testType	e type: 'foo'.	self shouldHaveAttribute: 'type' value: 'foo'!

testValue	e value: 'foo'.	self shouldHaveAttribute: 'value' value: 'foo'!

testValueType	e valuetype: 'foo'.	self shouldHaveAttribute: 'valuetype' value: 'foo'! !
!ILParameterElementTest categoriesFor: #setUp!public!running! !
!ILParameterElementTest categoriesFor: #testAdd!public!testing! !
!ILParameterElementTest categoriesFor: #testAttributes!public!testing! !
!ILParameterElementTest categoriesFor: #testName!public!testing! !
!ILParameterElementTest categoriesFor: #testTag!public!testing! !
!ILParameterElementTest categoriesFor: #testType!public!testing! !
!ILParameterElementTest categoriesFor: #testValue!public!testing! !
!ILParameterElementTest categoriesFor: #testValueType!public!testing! !

