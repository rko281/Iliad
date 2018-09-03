"Filed out from Dolphin Smalltalk 7"!

AnsiString variableByteSubclass: #ILId
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILId guid: (GUID fromString: '{64f1fc9e-2244-4e3f-aaf2-74367c795256}')!
ILId isNullTerminated: true!
ILId comment: ''!
!ILId categoriesForClass!External-Data-Structured-COM! !
!ILId methodsFor!

asString

	^AnsiString withAll: self!

initialize
	| id |
	id := UUID new idlString.
	1 to: self size do: [:each |
		self at: each put: (id at: each)]! !
!ILId categoriesFor: #asString!converting!public! !
!ILId categoriesFor: #initialize!initialize/release!public! !

!ILId class methodsFor!

defaultSize
	^36!

new
	^self new: self defaultSize!

new: anInteger

	^ (self basicNew: anInteger)
		initialize;
		yourself! !
!ILId class categoriesFor: #defaultSize!constants!public! !
!ILId class categoriesFor: #new!instance creation!public! !
!ILId class categoriesFor: #new:!instance creation!public! !

