"Filed out from Dolphin Smalltalk 7"!

ILCondition subclass: #ILNumericCondition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILNumericCondition guid: (GUID fromString: '{e1a378d0-b64c-4a2e-9c27-90830a15f732}')!
ILNumericCondition comment: 'An ILAlphanumericCondition is xxxxxxxxx.'!
!ILNumericCondition categoriesForClass!Iliad-More-Formula! !
!ILNumericCondition methodsFor!

defaultLabelFor: anObject	^ 'Only numeric characters are allowed'  !

validate: anObject	" Answer <true> if anObject is a number "	^ anObject notNil and: [ anObject isNumber ]! !
!ILNumericCondition categoriesFor: #defaultLabelFor:!defaults!public! !
!ILNumericCondition categoriesFor: #validate:!public!validating! !

