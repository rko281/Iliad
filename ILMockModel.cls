"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ILMockModel
	instanceVariableNames: 'foo bar checkbox date number password repeatedPassword email minimum maximum choice singleChoice'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILMockModel guid: (GUID fromString: '{1795fe75-5425-4124-ba1b-8045e7d46ac6}')!
ILMockModel comment: ''!
!ILMockModel categoriesForClass!Iliad-Tests-Formula! !
!ILMockModel methodsFor!

bar	^bar!

bar: aString	bar := aString!

checkbox	^ checkbox!

checkbox: aBoolean	checkbox := aBoolean!

choice 	^choice ifNil: [choice := OrderedCollection new add: 'foo'; add: 'bar']!

choice: aCollection	choice := aCollection!

date	^ date!

date: aTimestamp	date := aTimestamp!

email	^email!

email: aString	email := aString!

foo	^foo!

foo: aString	foo := aString !

maximum	^maximum !

maximum: anInteger	maximum := anInteger !

minimum 	^minimum !

minimum: anInteger	minimum := anInteger !

number	^ number!

number: aNumber	number := aNumber!

password	^password !

password: aString	password := aString!

repeatedPassword 	^repeatedPassword !

repeatedPassword: aString	repeatedPassword := aString!

singleChoice 	^singleChoice ifNil: [singleChoice := OrderedCollection new]!

singleChoice: aCollection	singleChoice := aCollection! !
!ILMockModel categoriesFor: #bar!accessing!public! !
!ILMockModel categoriesFor: #bar:!accessing!public! !
!ILMockModel categoriesFor: #checkbox!accessing!public! !
!ILMockModel categoriesFor: #checkbox:!accessing!public! !
!ILMockModel categoriesFor: #choice!accessing!public! !
!ILMockModel categoriesFor: #choice:!accessing!public! !
!ILMockModel categoriesFor: #date!accessing!public! !
!ILMockModel categoriesFor: #date:!accessing!public! !
!ILMockModel categoriesFor: #email!accessing!public! !
!ILMockModel categoriesFor: #email:!accessing!public! !
!ILMockModel categoriesFor: #foo!accessing!public! !
!ILMockModel categoriesFor: #foo:!accessing!public! !
!ILMockModel categoriesFor: #maximum!accessing!public! !
!ILMockModel categoriesFor: #maximum:!accessing!public! !
!ILMockModel categoriesFor: #minimum!accessing!public! !
!ILMockModel categoriesFor: #minimum:!accessing!public! !
!ILMockModel categoriesFor: #number!accessing!public! !
!ILMockModel categoriesFor: #number:!accessing!public! !
!ILMockModel categoriesFor: #password!accessing!public! !
!ILMockModel categoriesFor: #password:!accessing!public! !
!ILMockModel categoriesFor: #repeatedPassword!accessing!public! !
!ILMockModel categoriesFor: #repeatedPassword:!accessing!public! !
!ILMockModel categoriesFor: #singleChoice!accessing!public! !
!ILMockModel categoriesFor: #singleChoice:!accessing!public! !

