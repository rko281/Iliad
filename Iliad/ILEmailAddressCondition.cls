"Filed out from Dolphin Smalltalk 7"!

ILCondition subclass: #ILEmailAddressCondition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILEmailAddressCondition guid: (GUID fromString: '{74c155ef-c43e-4344-81ac-8dcd1aa34949}')!
ILEmailAddressCondition comment: ''!
!ILEmailAddressCondition categoriesForClass!Iliad-More-Formula! !
!ILEmailAddressCondition methodsFor!

defaultLabelFor: anObject	^'Invalid email address'  !

validate: anObject	^anObject isString and: [anObject matchesRegex: '^.*\@.*\..*$']! !
!ILEmailAddressCondition categoriesFor: #defaultLabelFor:!defaults!public! !
!ILEmailAddressCondition categoriesFor: #validate:!public!validating! !

