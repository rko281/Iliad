"Filed out from Dolphin Smalltalk 7"!

ILWidget subclass: #ILInformationWidget
	instanceVariableNames: 'informationString'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILInformationWidget guid: (GUID fromString: '{72ac87a8-9452-4499-8dd5-712e206e41d8}')!
ILInformationWidget comment: ''!
!ILInformationWidget categoriesForClass!Iliad-Core-Buildables! !
!ILInformationWidget methodsFor!

contents	^[:e |		e text: self informationString.		e form button			action: [self answer];			text: 'Ok']!

informationString	^informationString!

informationString: aString	informationString := aString! !
!ILInformationWidget categoriesFor: #contents!building!public! !
!ILInformationWidget categoriesFor: #informationString!accessing!public! !
!ILInformationWidget categoriesFor: #informationString:!accessing!public! !

