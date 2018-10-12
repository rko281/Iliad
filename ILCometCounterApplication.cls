"Filed out from Dolphin Smalltalk 7"!

ILApplication subclass: #ILCometCounterApplication
	instanceVariableNames: 'counter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILCometCounterApplication guid: (GUID fromString: '{55749961-b5cf-4e14-a995-d7dfc4259cd3}')!
ILCometCounterApplication comment: ''!
!ILCometCounterApplication categoriesForClass!Iliad-More-CometExample! !
!ILCometCounterApplication methodsFor!

index	^[:e |		e 			build: self cometConnection;			build: counter]!

initialize	super initialize.	counter := ILCometCounter new!

updatePage: aPage	super updatePage: aPage.	aPage head stylesheet href: '/stylesheets/iliad.css'! !
!ILCometCounterApplication categoriesFor: #index!controllers!public! !
!ILCometCounterApplication categoriesFor: #initialize!initialization!public! !
!ILCometCounterApplication categoriesFor: #updatePage:!building!public! !

!ILCometCounterApplication class methodsFor!

path	^'examples/comet'! !
!ILCometCounterApplication class categoriesFor: #path!private! !

