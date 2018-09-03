"Filed out from Dolphin Smalltalk 7"!

ILCondition subclass: #ILMultipleCondition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILMultipleCondition guid: (GUID fromString: '{3fd845f3-30b1-401e-8a69-9dd65caf86a8}')!
ILMultipleCondition comment: ''!
!ILMultipleCondition categoriesForClass!Iliad-More-Formula! !
!ILMultipleCondition methodsFor!

defaultLabelFor: anObject	^'Two entries are the minimum required'!

validate: anObject	^anObject isCollection and: [anObject size > 1]! !
!ILMultipleCondition categoriesFor: #defaultLabelFor:!defaults!public! !
!ILMultipleCondition categoriesFor: #validate:!public!validating! !

