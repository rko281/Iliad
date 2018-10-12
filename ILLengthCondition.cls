"Filed out from Dolphin Smalltalk 7"!

ILCondition subclass: #ILLengthCondition
	instanceVariableNames: 'length'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILLengthCondition guid: (GUID fromString: '{816a16a3-72b1-48fb-a6e7-eb9337a903ce}')!
ILLengthCondition comment: ''!
!ILLengthCondition categoriesForClass!Iliad-More-Formula! !
!ILLengthCondition methodsFor!

defaultLength	^self subclassResponsibility!

length	^length ifNil: [self defaultLength]!

length: anInteger	length := anInteger! !
!ILLengthCondition categoriesFor: #defaultLength!defaults!public! !
!ILLengthCondition categoriesFor: #length!accessing!public! !
!ILLengthCondition categoriesFor: #length:!accessing!public! !

