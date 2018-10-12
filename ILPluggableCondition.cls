"Filed out from Dolphin Smalltalk 7"!

ILCondition subclass: #ILPluggableCondition
	instanceVariableNames: 'conditionBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILPluggableCondition guid: (GUID fromString: '{e58c9d93-e18b-4a9d-9e06-8a295a94e572}')!
ILPluggableCondition comment: ''!
!ILPluggableCondition categoriesForClass!Iliad-More-Formula! !
!ILPluggableCondition methodsFor!

conditionBlock	^conditionBlock!

conditionBlock: aBlock	conditionBlock := aBlock!

validate: anObject	^self conditionBlock value: anObject! !
!ILPluggableCondition categoriesFor: #conditionBlock!accessing!public! !
!ILPluggableCondition categoriesFor: #conditionBlock:!accessing!public! !
!ILPluggableCondition categoriesFor: #validate:!public!validating! !

