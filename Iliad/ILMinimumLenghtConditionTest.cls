"Filed out from Dolphin Smalltalk 7"!

ILConditionTest subclass: #ILMinimumLenghtConditionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILMinimumLenghtConditionTest guid: (GUID fromString: '{806c22b3-6a5a-4e54-b09c-6d9997b61dbf}')!
ILMinimumLenghtConditionTest comment: ''!
!ILMinimumLenghtConditionTest categoriesForClass!Iliad-Tests-Formula! !
!ILMinimumLenghtConditionTest methodsFor!

testCondition	minimumInput addCondition: (ILMinimumLengthCondition new minimum: 4) labelled: [:val | 'Some condition'].	formula validate.	self deny: formula isValid.	minimumInput value: 'foobar'.	formula validate.	self assert: formula isValid.!

testConditionWithNil	minimumInput addCondition: (ILMinimumLengthCondition new minimum: 4) labelled: [:val | 'Some condition'].	minimumInput value: nil.	formula validate.	self deny: formula isValid! !
!ILMinimumLenghtConditionTest categoriesFor: #testCondition!public!tests! !
!ILMinimumLenghtConditionTest categoriesFor: #testConditionWithNil!public!tests! !

