"Filed out from Dolphin Smalltalk 7"!

ILConditionTest subclass: #ILEmailAddressConditionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILEmailAddressConditionTest guid: (GUID fromString: '{3ea75b1e-30fc-4ac9-8c32-26f97c2e1fbb}')!
ILEmailAddressConditionTest comment: ''!
!ILEmailAddressConditionTest categoriesForClass!Iliad-Tests-Formula! !
!ILEmailAddressConditionTest methodsFor!

testCondition	input addCondition: ILEmailAddressCondition new.	formula validate.	self deny: formula isValid.	input value: 'foo'.	formula validate.	self deny: formula isValid.	input value: 'nico@objectfusion'.	formula validate.	self deny: formula isValid.	input value: 'objectfusion.fr'.	formula validate.	self deny: formula isValid.	input value: 'nico@objectfusion.fr'.	formula validate.	self assert: formula isValid.!

testConditionWithNil	mailInput addCondition: ILEmailAddressCondition new labelled: [:val | 'Some condition'].	input value: nil.	formula validate.	self deny: formula isValid! !
!ILEmailAddressConditionTest categoriesFor: #testCondition!public!tests! !
!ILEmailAddressConditionTest categoriesFor: #testConditionWithNil!public!tests! !

