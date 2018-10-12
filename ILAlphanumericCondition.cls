"Filed out from Dolphin Smalltalk 7"!

ILCondition subclass: #ILAlphanumericCondition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILAlphanumericCondition guid: (GUID fromString: '{92912bf3-9f13-4d6e-8fd7-471c8da69d24}')!
ILAlphanumericCondition comment: ''!
!ILAlphanumericCondition categoriesForClass!Iliad-More-Formula! !
!ILAlphanumericCondition methodsFor!

defaultLabelFor: anObject	^'Only alphanumeric characters are allowed'  !

validate: anObject	^anObject isString and: [(anObject reject: [:each | each isAlphaNumeric]) isEmpty]! !
!ILAlphanumericCondition categoriesFor: #defaultLabelFor:!defaults!public! !
!ILAlphanumericCondition categoriesFor: #validate:!public!validating! !

