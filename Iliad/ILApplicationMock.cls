"Filed out from Dolphin Smalltalk 7"!

ILApplication subclass: #ILApplicationMock
	instanceVariableNames: 'w1 w2 w3'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'path'!
ILApplicationMock guid: (GUID fromString: '{57b1b8f2-7578-456b-920a-e9ec5b24f4d5}')!
ILApplicationMock comment: ''!
!ILApplicationMock categoriesForClass!Iliad-Tests-Buildables! !
!ILApplicationMock methodsFor!

index	^[:e |		e build: w1; build: w2; build: w3]!

initialize	super initialize.	w1 := ILWidgetMock1 new.	w2 := ILWidgetMock2 new.	w3 := ILWidgetMock3 new!

w1 	^w1!

w2	^w2!

w3	^w3! !
!ILApplicationMock categoriesFor: #index!controllers!public! !
!ILApplicationMock categoriesFor: #initialize!initialization!public! !
!ILApplicationMock categoriesFor: #w1!accessing!public! !
!ILApplicationMock categoriesFor: #w2!accessing!public! !
!ILApplicationMock categoriesFor: #w3!accessing!public! !

!ILApplicationMock class methodsFor!

path	^path!

path: aString	path := aString ! !
!ILApplicationMock class categoriesFor: #path!accessing!public! !
!ILApplicationMock class categoriesFor: #path:!accessing!public! !

