"Filed out from Dolphin Smalltalk 7"!

ILConditionTest subclass: #ILNotEmptyConditionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILNotEmptyConditionTest guid: (GUID fromString: '{19bcc315-451f-452b-a113-02304d4e85aa}')!
ILNotEmptyConditionTest comment: ''!
!ILNotEmptyConditionTest categoriesForClass!Iliad-Tests-Formula! !
!ILNotEmptyConditionTest methodsFor!

testCondition	input addCondition: ILNotEmptyCondition new labelled: [:val | 'Some condition'].	formula validate.	self deny: formula isValid.	input value: 'foo'.	formula validate.	self assert: formula isValid.!

testConditionWithCollection	"Some fields like select input fields  hold a collection"	input addCondition: ILNotEmptyCondition new.	input value: #().	formula validate.	self deny: formula isValid.	input value: #(1 2 3 4).	formula validate.	self assert: formula isValid.!

testConditionWithNil	input addCondition: ILNotEmptyCondition new labelled: [:val | 'Some condition'].	input value: nil.	formula validate.	self deny: formula isValid! !
!ILNotEmptyConditionTest categoriesFor: #testCondition!public!tests! !
!ILNotEmptyConditionTest categoriesFor: #testConditionWithCollection!public!tests! !
!ILNotEmptyConditionTest categoriesFor: #testConditionWithNil!public!tests! !

