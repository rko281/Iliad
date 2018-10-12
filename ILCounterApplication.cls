"Filed out from Dolphin Smalltalk 7"!

ILApplication subclass: #ILCounterApplication
	instanceVariableNames: 'counters'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILCounterApplication guid: (GUID fromString: '{71a899b7-ff68-443f-8a6e-1b108ef99d38}')!
ILCounterApplication comment: ''!
!ILCounterApplication categoriesForClass!Iliad-More-Examples! !
!ILCounterApplication methodsFor!

counter	^[:e |		e a			text: 'Switch to the multi counter example';			linkToLocal: 'multicounter'.		e build: self counters first]!

counters	^counters ifNil: [counters := {ILCounter new. ILCounter new. ILCounter new. ILCounter new}]!

index	^self counter!

multicounter	^[:e | 		e a			text: 'Switch to the simple counter example';			linkToLocal: 'counter'.		self counters do: [:each |			e build: each]]!

updatePage: aPage	super updatePage: aPage.	aPage head stylesheet href: '/stylesheets/iliad.css'! !
!ILCounterApplication categoriesFor: #counter!controllers!public! !
!ILCounterApplication categoriesFor: #counters!accessing!public! !
!ILCounterApplication categoriesFor: #index!controllers!public! !
!ILCounterApplication categoriesFor: #multicounter!controllers!public! !
!ILCounterApplication categoriesFor: #updatePage:!building!public! !

!ILCounterApplication class methodsFor!

path	^'examples/counters'! !
!ILCounterApplication class categoriesFor: #path!accessing!public! !

