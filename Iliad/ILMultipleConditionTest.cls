"Filed out from Dolphin Smalltalk 7"!

ILConditionTest subclass: #ILMultipleConditionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILMultipleConditionTest guid: (GUID fromString: '{d689d150-898e-48da-b23e-54746aa4a10d}')!
ILMultipleConditionTest comment: ''!
!ILMultipleConditionTest categoriesForClass!Iliad-Tests-Formula! !
!ILMultipleConditionTest methodsFor!

testCondition	multiple addCondition: ILMultipleCondition new labelled: [:val | 'Some condition'].	multiple value: #('foo').	formula validate.	self deny: formula isValid.	multiple value: #('foo' 'bar').	formula validate.	self assert: formula isValid.!

testConditionWithNil	multiple addCondition: ILNotEmptyCondition new labelled: [:val | 'Some condition'].	multiple value: nil.	formula validate.	self deny: formula isValid! !
!ILMultipleConditionTest categoriesFor: #testCondition!private! !
!ILMultipleConditionTest categoriesFor: #testConditionWithNil!private! !

