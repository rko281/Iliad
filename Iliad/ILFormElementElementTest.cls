"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILFormElementElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFormElementElementTest guid: (GUID fromString: '{45fc4da0-4674-41b1-a579-12595e1ef28e}')!
ILFormElementElementTest comment: ''!
!ILFormElementElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILFormElementElementTest methodsFor!

setUp	e := ILFormElementElement new!

testBeSubmit	| script |	script := 'iliad.evaluateFormElementAction(this)'.	e beSubmitOnEvent: 'foo'.	self assert: (e attributeAt: 'onfoo') equals: script.	e beSubmitOnClick.	self assert: (e attributeAt: 'onclick') equals: script.	e beSubmitOnChange.	self assert: (e attributeAt: 'onchange') equals: script!

testName	e name: 'foo'.	self assert: e name equals: 'foo'!

testReadonly	e readonly: false.	self shouldHaveAttribute: 'readonly' value: 'false'! !
!ILFormElementElementTest categoriesFor: #setUp!public!running! !
!ILFormElementElementTest categoriesFor: #testBeSubmit!public!testing! !
!ILFormElementElementTest categoriesFor: #testName!public!testing! !
!ILFormElementElementTest categoriesFor: #testReadonly!public!testing! !

