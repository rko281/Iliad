"Filed out from Dolphin Smalltalk 7"!

ILCondition subclass: #ILSingleCondition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILSingleCondition guid: (GUID fromString: '{71bed816-80b5-4a76-be10-699843107321}')!
ILSingleCondition comment: ''!
!ILSingleCondition categoriesForClass!Iliad-More-Formula! !
!ILSingleCondition methodsFor!

defaultLabelFor: anObject	^'One entrie are the maximum required'!

validate: anObject	^anObject isCollection and: [anObject size < 2]! !
!ILSingleCondition categoriesFor: #defaultLabelFor:!private! !
!ILSingleCondition categoriesFor: #validate:!private! !

