﻿"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILCometHandler
	instanceVariableNames: 'session subscriptions semaphores shouldPush'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'pingProcess'!
ILCometHandler guid: (GUID fromString: '{54841e18-c0bf-486e-b945-41d5a8065eff}')!
ILCometHandler comment: ''!
!ILCometHandler categoriesForClass!Iliad-More-Comet! !
!ILCometHandler methodsFor!

allHandlers

cometConnection

handleEvent: anEvent

initialize

otherHandlers

push

session

session: aSession

sessionManager

shouldPush

subscribe: aWidget to: anEventClass

subscribe: aWidget to: anEventClass condition: aBlock

triggerEvent: anEvent

waitForEvent
!ILCometHandler categoriesFor: #allHandlers!accessing!public! !
!ILCometHandler categoriesFor: #cometConnection!accessing!public! !
!ILCometHandler categoriesFor: #handleEvent:!actions!public! !
!ILCometHandler categoriesFor: #initialize!initialization!public! !
!ILCometHandler categoriesFor: #otherHandlers!accessing!public! !
!ILCometHandler categoriesFor: #push!actions!public! !
!ILCometHandler categoriesFor: #session!accessing!public! !
!ILCometHandler categoriesFor: #session:!accessing!public! !
!ILCometHandler categoriesFor: #sessionManager!accessing!public! !
!ILCometHandler categoriesFor: #shouldPush!actions!public! !
!ILCometHandler categoriesFor: #subscribe:to:!accessing!public! !
!ILCometHandler categoriesFor: #subscribe:to:condition:!accessing!public! !
!ILCometHandler categoriesFor: #triggerEvent:!actions!public! !
!ILCometHandler categoriesFor: #waitForEvent!actions!public! !

!ILCometHandler class methodsFor!

initialize

on: aSession

pingClients

sessionManager

shutDown: isDown

startUp: isStarting
!ILCometHandler class categoriesFor: #initialize!initialization!public! !
!ILCometHandler class categoriesFor: #on:!instance creation!public! !
!ILCometHandler class categoriesFor: #pingClients!private! !
!ILCometHandler class categoriesFor: #sessionManager!accessing!public! !
!ILCometHandler class categoriesFor: #shutDown:!public!startup! !
!ILCometHandler class categoriesFor: #startUp:!public!startup! !
