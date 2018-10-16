"Filed out from Dolphin Smalltalk 7"!

ILCondition subclass: #ILNotEmptyCondition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILNotEmptyCondition guid: (GUID fromString: '{fa8a93bf-d8f3-44ee-87d7-1c6f8f9416e9}')!
ILNotEmptyCondition comment: ''!
!ILNotEmptyCondition categoriesForClass!Iliad-More-Formula! !
!ILNotEmptyCondition methodsFor!

defaultLabelFor: anObject	^'This field is required'  !

validate: anObject	^anObject notNil and: [anObject notEmpty]! !
!ILNotEmptyCondition categoriesFor: #defaultLabelFor:!defaults!public! !
!ILNotEmptyCondition categoriesFor: #validate:!public!validating! !

