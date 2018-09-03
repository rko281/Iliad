"Filed out from Dolphin Smalltalk 7"!

ILLengthCondition subclass: #ILMaximumLengthCondition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILMaximumLengthCondition guid: (GUID fromString: '{bf25ac71-2908-4b57-9b15-ebd64fdf5f26}')!
ILMaximumLengthCondition comment: ''!
!ILMaximumLengthCondition categoriesForClass!Iliad-More-Formula! !
!ILMaximumLengthCondition methodsFor!

defaultLabelFor: anObject	^'Entry greater than ', self length asString!

defaultLength	^12!

maximum: anInteger	self length: anInteger!

validate: anObject	^anObject isString and: [anObject size <= self length]! !
!ILMaximumLengthCondition categoriesFor: #defaultLabelFor:!defaults!public! !
!ILMaximumLengthCondition categoriesFor: #defaultLength!defaults!public! !
!ILMaximumLengthCondition categoriesFor: #maximum:!private! !
!ILMaximumLengthCondition categoriesFor: #validate:!public!validating! !

