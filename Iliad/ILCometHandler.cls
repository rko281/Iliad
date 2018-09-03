"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILCometHandler
	instanceVariableNames: 'session subscriptions semaphores shouldPush'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'pingProcess'!
ILCometHandler guid: (GUID fromString: '{54841e18-c0bf-486e-b945-41d5a8065eff}')!
ILCometHandler comment: ''!
!ILCometHandler categoriesForClass!Iliad-More-Comet! !
!ILCometHandler methodsFor!

allHandlers	^self sessionManager sessions collect: [:each | each cometHandler]!

cometConnection	^self application cometConnection!

handleEvent: anEvent	subscriptions do: [:each | each handleEvent: anEvent].	shouldPush ifTrue: [self push]!

initialize	super initialize.	shouldPush := false.	semaphores := OrderedCollection new.	subscriptions := OrderedCollection new!

otherHandlers	^(self sessionManager sessions		 copyWithout: self session) collect: [:each |			each cometHandler] !

push	semaphores do: [:each | each signal].	semaphores := OrderedCollection new.	shouldPush := false!

session	^session!

session: aSession	session := aSession!

sessionManager	^self class sessionManager!

shouldPush	shouldPush := true!

subscribe: aWidget to: anEventClass	subscriptions add: (ILCometSubscription new		handler: self;		widget: aWidget;		eventClass: anEventClass)!

subscribe: aWidget to: anEventClass condition: aBlock	subscriptions add: (ILCometSubscription new		handler: self;		widget: aWidget;		eventClass: anEventClass;		condition: aBlock)!

triggerEvent: anEvent	self otherHandlers do: [:each |		each handleEvent: anEvent]!

waitForEvent	| s |	s := Semaphore new.	semaphores add: s.	s wait! !
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

initialize	GRPlatform current addToStartUpList: self.	GRPlatform current addToShutDownList: self.	self startUp: true!

on: aSession	^self new		session: aSession;		yourself!

pingClients	(Delay forSeconds: 3 * 60) wait.	self sessionManager sessions do: [:each | 		each cometHandler push]!

sessionManager	^ILSessionManager current!

shutDown: isDown	isDown ifTrue: [		pingProcess ifNotNil: [			pingProcess terminate.			pingProcess := nil]]!

startUp: isStarting	isStarting ifTrue: [		self shutDown: true.		pingProcess := [[self pingClients] repeat] fork]! !
!ILCometHandler class categoriesFor: #initialize!initialization!public! !
!ILCometHandler class categoriesFor: #on:!instance creation!public! !
!ILCometHandler class categoriesFor: #pingClients!private! !
!ILCometHandler class categoriesFor: #sessionManager!accessing!public! !
!ILCometHandler class categoriesFor: #shutDown:!public!startup! !
!ILCometHandler class categoriesFor: #startUp:!public!startup! !

