"Filed out from Dolphin Smalltalk 7"!

ILInputElement subclass: #ILSearchInputElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILSearchInputElement guid: (GUID fromString: '{6073af4e-faee-417d-9581-db09871bd235}')!
ILSearchInputElement comment: 'The input element with a type attribute whose value is search represents a one-line plain-text edit control for entering one or more search terms.'!
!ILSearchInputElement categoriesForClass!Iliad-More-HTML5Elements! !
!ILSearchInputElement methodsFor!

initialize	super initialize.	self type: 'search'!

placeholder: aString	self attributeAt: 'placeholder' put: aString!

results: anInteger	self attributeAt: 'results' put: anInteger greaseString!

type	^'search'!

value: aString	self attributeAt: 'value' put: aString! !
!ILSearchInputElement categoriesFor: #initialize!private! !
!ILSearchInputElement categoriesFor: #placeholder:!accessing!public! !
!ILSearchInputElement categoriesFor: #results:!accessing!public! !
!ILSearchInputElement categoriesFor: #type!accessing!public! !
!ILSearchInputElement categoriesFor: #value:!accessing!public! !

