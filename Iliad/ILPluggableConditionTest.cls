"Filed out from Dolphin Smalltalk 7"!

ILConditionTest subclass: #ILPluggableConditionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILPluggableConditionTest guid: (GUID fromString: '{00be0c97-2611-4ff1-9d2b-5853b06d90e2}')!
ILPluggableConditionTest comment: ''!
!ILPluggableConditionTest categoriesForClass!Iliad-Tests-Formula! !
!ILPluggableConditionTest methodsFor!

testBlockCondition	input addCondition: [:val | val = 'bar'] labelled: [:val | 'Some block condition'].	input value: 'hello'.	formula validate.	self deny: formula isValid.	input value: 'bar'.	formula validate.	self assert: formula isValid.! !
!ILPluggableConditionTest categoriesFor: #testBlockCondition!public!tests! !

