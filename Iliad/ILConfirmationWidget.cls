"Filed out from Dolphin Smalltalk 7"!

ILWidget subclass: #ILConfirmationWidget
	instanceVariableNames: 'confirmationString'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILConfirmationWidget guid: (GUID fromString: '{87ef0595-7d2e-4a9d-8781-ec73db356702}')!
ILConfirmationWidget comment: ''!
!ILConfirmationWidget categoriesForClass!Iliad-Core-Buildables! !
!ILConfirmationWidget methodsFor!

confirmationString	^confirmationString!

confirmationString: aString	confirmationString := aString!

contents	^[:e |		e text: self confirmationString.		e form build: [:form |			form button				action: [self answer: true];				text: 'Yes'.				form button					action: [self answer: false];					text: 'No']]! !
!ILConfirmationWidget categoriesFor: #confirmationString!accessing!public! !
!ILConfirmationWidget categoriesFor: #confirmationString:!accessing!public! !
!ILConfirmationWidget categoriesFor: #contents!building!public! !

