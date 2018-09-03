"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILConditionTest
	instanceVariableNames: 'formula input mailInput minimumInput maximumInput multiple single'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILConditionTest guid: (GUID fromString: '{813063e1-5025-430b-be63-720f25a5fb88}')!
ILConditionTest comment: ''!
!ILConditionTest categoriesForClass!Iliad-Tests-Formula! !
!ILConditionTest methodsFor!

setUp	formula := ILFormula on: ILMockModel new.	input := formula inputOn: #foo.	mailInput := formula inputOn: #email.	maximumInput := formula inputOn: #maximum.	minimumInput := formula inputOn: #minimum.	multiple := formula multipleCheckBoxOn: #choice.	single := formula multipleCheckBoxOn: #singleChoice.  ! !
!ILConditionTest categoriesFor: #setUp!public!tests! !

