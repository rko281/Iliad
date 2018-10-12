"Filed out from Dolphin Smalltalk 7"!

ILLengthCondition subclass: #ILMinimumLengthCondition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILMinimumLengthCondition guid: (GUID fromString: '{1dc86262-cd07-4eb6-8faf-863d8055d54c}')!
ILMinimumLengthCondition comment: ''!
!ILMinimumLengthCondition categoriesForClass!Iliad-More-Formula! !
!ILMinimumLengthCondition methodsFor!

defaultLabelFor: anObject	^'Entry below ', self length asString  !

defaultLength	^8!

minimum: anInteger	self length: anInteger !

validate: anObject	^anObject isString and: [anObject size >= self length]! !
!ILMinimumLengthCondition categoriesFor: #defaultLabelFor:!defaults!public! !
!ILMinimumLengthCondition categoriesFor: #defaultLength!defaults!public! !
!ILMinimumLengthCondition categoriesFor: #minimum:!private! !
!ILMinimumLengthCondition categoriesFor: #validate:!public!validating! !

