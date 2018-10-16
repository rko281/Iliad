"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILCometSubscription
	instanceVariableNames: 'handler widget eventClass condition'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILCometSubscription guid: (GUID fromString: '{6d922580-f111-4040-88b6-8b54d09cc740}')!
ILCometSubscription comment: ''!
!ILCometSubscription categoriesForClass!Iliad-More-Comet! !
!ILCometSubscription methodsFor!

condition	^condition!

condition: aBlock	condition := aBlock!

eventClass	^eventClass!

eventClass: aClass	eventClass := aClass!

handleEvent: anEvent	(anEvent isKindOf: self eventClass) ifTrue: [			self widget handleCometEvent: anEvent.			self handler shouldPush]!

handler	^handler!

handler: aCometHandler	handler := aCometHandler!

session	^self handler session!

widget	^widget!

widget: aWidget	widget := aWidget! !
!ILCometSubscription categoriesFor: #condition!accessing!public! !
!ILCometSubscription categoriesFor: #condition:!accessing!public! !
!ILCometSubscription categoriesFor: #eventClass!accessing!public! !
!ILCometSubscription categoriesFor: #eventClass:!accessing!public! !
!ILCometSubscription categoriesFor: #handleEvent:!actions!public! !
!ILCometSubscription categoriesFor: #handler!accessing!public! !
!ILCometSubscription categoriesFor: #handler:!accessing!public! !
!ILCometSubscription categoriesFor: #session!accessing!public! !
!ILCometSubscription categoriesFor: #widget!accessing!public! !
!ILCometSubscription categoriesFor: #widget:!accessing!public! !

