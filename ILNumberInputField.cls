"Filed out from Dolphin Smalltalk 7"!

ILInputField subclass: #ILNumberInputField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILNumberInputField guid: (GUID fromString: '{7d39e87c-7da7-4135-8bf6-0594ab853311}')!
ILNumberInputField comment: ''!
!ILNumberInputField categoriesForClass!Iliad-More-Formula! !
!ILNumberInputField methodsFor!

convertToNumber: aString	^ILPlatform current convertStringToNumber: aString!

fieldContents       ^[:e |               e input                       value: (self value ifNil: [''] ifNotNil: [self value greaseString]);                       action: [:val |                            (val isEmpty)                                ifTrue: [ self value: nil ]                                ifFalse: [ self value: (self convertToNumber: val)]]]! !
!ILNumberInputField categoriesFor: #convertToNumber:!private! !
!ILNumberInputField categoriesFor: #fieldContents!building!public! !

