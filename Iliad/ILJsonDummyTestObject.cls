"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ILJsonDummyTestObject
	instanceVariableNames: 'a b c'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILJsonDummyTestObject guid: (GUID fromString: '{afe63623-c0f4-4e4d-b33e-4253e8428026}')!
ILJsonDummyTestObject comment: ''!
!ILJsonDummyTestObject categoriesForClass!Iliad-Tests-lib-JSON! !
!ILJsonDummyTestObject methodsFor!

= other	^ other class == self class and: [		a = other a and: [		b = other b and: [		c = other c]]]!

a	"Answer the value of a"	^ a!

a: anObject	"Set the value of a"	a := anObject!

b	"Answer the value of b"	^ b!

b: anObject	"Set the value of b"	b := anObject!

c	"Answer the value of c"	^ c!

c: anObject	"Set the value of c"	c := anObject!

printJsonOn: s	ILJson renderInstanceVariables: {#a. #b. #c} of: self on: s! !
!ILJsonDummyTestObject categoriesFor: #=!comparing!public! !
!ILJsonDummyTestObject categoriesFor: #a!accessing!public! !
!ILJsonDummyTestObject categoriesFor: #a:!accessing!public! !
!ILJsonDummyTestObject categoriesFor: #b!accessing!public! !
!ILJsonDummyTestObject categoriesFor: #b:!accessing!public! !
!ILJsonDummyTestObject categoriesFor: #c!accessing!public! !
!ILJsonDummyTestObject categoriesFor: #c:!accessing!public! !
!ILJsonDummyTestObject categoriesFor: #printJsonOn:!printing!public! !

!ILJsonDummyTestObject class methodsFor!

constructFromJson: j	^ self new a: (j at: 'a'); b: (j at: 'b'); c: (j at: 'c'); yourself! !
!ILJsonDummyTestObject class categoriesFor: #constructFromJson:!private! !

