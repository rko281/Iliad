"Filed out from Dolphin Smalltalk 7"!

ILConditionTest subclass: #ILAlphanumericConditionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILAlphanumericConditionTest guid: (GUID fromString: '{e3bf0132-2610-458f-a47f-8576ff0f8b7c}')!
ILAlphanumericConditionTest comment: ''!
!ILAlphanumericConditionTest categoriesForClass!Iliad-Tests-Formula! !
!ILAlphanumericConditionTest methodsFor!

testCondition	input addCondition: ILAlphanumericCondition new.	formula validate.	self deny: formula isValid.	input value: ''.	formula validate.	self assert: formula isValid.	input value: '1234foo'.	formula validate.	self assert: formula isValid.	input value: '"!!'.	formula validate.	self deny: formula isValid!

testConditionWithNil	input addCondition: ILAlphanumericCondition new.	input value: nil.	formula validate.	self deny: formula isValid! !
!ILAlphanumericConditionTest categoriesFor: #testCondition!public!tests! !
!ILAlphanumericConditionTest categoriesFor: #testConditionWithNil!public!tests! !

