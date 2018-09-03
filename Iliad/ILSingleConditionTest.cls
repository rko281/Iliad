"Filed out from Dolphin Smalltalk 7"!

ILConditionTest subclass: #ILSingleConditionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILSingleConditionTest guid: (GUID fromString: '{9616f0d7-8222-4451-98ff-04a9fc54b16d}')!
ILSingleConditionTest comment: ''!
!ILSingleConditionTest categoriesForClass!Iliad-Tests-Formula! !
!ILSingleConditionTest methodsFor!

testBlockConditionWithCollection	"Some fields like multiple checkbox fields  hold a collection"	single addCondition: ILSingleCondition new labelled: [:val | 'Some condition'].	single value: #().	formula validate.	self assert: formula isValid.	single value: #(1 2).	formula validate.	self deny: formula isValid.!

testCondition	single addCondition: ILSingleCondition new labelled: [:val | 'Some condition'].	single value: #('foo').	formula validate.	self assert: formula isValid.	single value: #('foo' 'bar').	formula validate.	self deny: formula isValid.!

testConditionWithNil	single addCondition: ILSingleCondition new labelled: [:val | 'Some condition'].	single value: nil.	formula validate.	self assert: formula isValid! !
!ILSingleConditionTest categoriesFor: #testBlockConditionWithCollection!private! !
!ILSingleConditionTest categoriesFor: #testCondition!private! !
!ILSingleConditionTest categoriesFor: #testConditionWithNil!private! !

