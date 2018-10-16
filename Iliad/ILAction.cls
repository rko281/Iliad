"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILAction
	instanceVariableNames: 'key block value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILAction guid: (GUID fromString: '{59ac282d-363b-4c97-b6f9-93e041aae426}')!
ILAction comment: ''!
!ILAction categoriesForClass!Iliad-Core-Sessions! !
!ILAction methodsFor!

block	^ block!

block: aBlock	block := aBlock fixActionTemps!

evaluate	self block ifNil: [ ^ nil ].	^ self block valueWithPossibleArguments: (Array with: self value)!

key	^ key!

key: anId	key := anId!

respondOn: aResponse	self value respondOn: aResponse!

value	^ value!

value: anObject	value := anObject! !
!ILAction categoriesFor: #block!accessing!public! !
!ILAction categoriesFor: #block:!accessing!public! !
!ILAction categoriesFor: #evaluate!evaluating!public! !
!ILAction categoriesFor: #key!accessing!public! !
!ILAction categoriesFor: #key:!accessing!public! !
!ILAction categoriesFor: #respondOn:!converting!public! !
!ILAction categoriesFor: #value!accessing!public! !
!ILAction categoriesFor: #value:!accessing!public! !

