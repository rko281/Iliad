"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ILCondition
	instanceVariableNames: 'labelBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILCondition guid: (GUID fromString: '{126cf348-f1f2-4478-bde4-c6444087e4ad}')!
ILCondition comment: ''!
!ILCondition categoriesForClass!Iliad-More-Formula! !
!ILCondition methodsFor!

asFormulaCondition!

defaultLabelFor: anObject	^'Condition failed'  !

labelBlock	^labelBlock!

labelBlock: aBlock	labelBlock := aBlock!

labelFor: anObject	^self labelBlock 		ifNil: [self defaultLabelFor: anObject]		ifNotNil: [self labelBlock value: anObject]!

validate: anObject	"Override in subclasses.	Validate in all cases by default"	^true! !
!ILCondition categoriesFor: #asFormulaCondition!converting!public! !
!ILCondition categoriesFor: #defaultLabelFor:!defaults!public! !
!ILCondition categoriesFor: #labelBlock!accessing!public! !
!ILCondition categoriesFor: #labelBlock:!accessing!public! !
!ILCondition categoriesFor: #labelFor:!public!validating! !
!ILCondition categoriesFor: #validate:!public!validating! !

