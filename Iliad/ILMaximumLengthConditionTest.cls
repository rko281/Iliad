"Filed out from Dolphin Smalltalk 7"!

ILConditionTest subclass: #ILMaximumLengthConditionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILMaximumLengthConditionTest guid: (GUID fromString: '{b543e7d0-c196-49b2-b1dc-501a2f89e50c}')!
ILMaximumLengthConditionTest comment: ''!
!ILMaximumLengthConditionTest categoriesForClass!Iliad-Tests-Formula! !
!ILMaximumLengthConditionTest methodsFor!

testCondition	maximumInput addCondition: (ILMaximumLengthCondition new maximum: 4) labelled: [:val | 'Some condition'].	formula validate.	self deny: formula isValid.	maximumInput value: 'foo'.	formula validate.	self assert: formula isValid.	maximumInput value: 'foobar'.	formula validate.	self deny: formula isValid.!

testConditionWithNil	maximumInput addCondition: (ILMaximumLengthCondition new maximum: 4) labelled: [:val | 'Some condition'].	maximumInput value: nil.	formula validate.	self deny: formula isValid! !
!ILMaximumLengthConditionTest categoriesFor: #testCondition!public!tests! !
!ILMaximumLengthConditionTest categoriesFor: #testConditionWithNil!public!tests! !

