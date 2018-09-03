"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ILServerManager
	instanceVariableNames: 'adaptors'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'default'!
ILServerManager guid: (GUID fromString: '{9f556860-6cf0-4710-8d1c-2e236de04240}')!
ILServerManager comment: ''!
!ILServerManager categoriesForClass!Iliad-Core-Server! !
!ILServerManager methodsFor!

adaptors	^ adaptors!

canStart: aServerAdaptor	"Because we can't rely on the socket refusing to listen on a port already in use, we simply check here if we know of another adaptor using this adaptor's port"	^ aServerAdaptor isStopped		and: [ self adaptors				noneSatisfy: [ :adaptor | 					adaptor ~= aServerAdaptor						and:							[ adaptor port = aServerAdaptor port and: [ adaptor isStopped not ] ] ] ]!

canStop: aServerAdaptor	^ aServerAdaptor isStopped not!

initialize	super initialize.	adaptors := Set new!

register: aServerAdaptor	^ adaptors add: aServerAdaptor!

restart: aServerAdaptor	self stop: aServerAdaptor.	self start: aServerAdaptor!

restartAll	adaptors do: #restart!

start: aServerAdaptor	(self canStart: aServerAdaptor) ifTrue: [		[ aServerAdaptor basicStart ]			ifCurtailed: [ self stop: aServerAdaptor ] ]!

startAll	adaptors do: #start!

stop: aServerAdaptor	(self canStop: aServerAdaptor) ifTrue: [ aServerAdaptor basicStop ]!

stopAll	adaptors do: #stop!

unregister: aServerAdaptor	self stop: aServerAdaptor.	adaptors remove: aServerAdaptor.	aServerAdaptor unregistered.	^ aServerAdaptor! !
!ILServerManager categoriesFor: #adaptors!accessing!public! !
!ILServerManager categoriesFor: #canStart:!private! !
!ILServerManager categoriesFor: #canStop:!private! !
!ILServerManager categoriesFor: #initialize!initialization!public! !
!ILServerManager categoriesFor: #register:!accessing!public! !
!ILServerManager categoriesFor: #restart:!public!starting/stopping! !
!ILServerManager categoriesFor: #restartAll!public!starting/stopping! !
!ILServerManager categoriesFor: #start:!public!starting/stopping! !
!ILServerManager categoriesFor: #startAll!public!starting/stopping! !
!ILServerManager categoriesFor: #stop:!public!starting/stopping! !
!ILServerManager categoriesFor: #stopAll!public!starting/stopping! !
!ILServerManager categoriesFor: #unregister:!accessing!public! !

!ILServerManager class methodsFor!

default	^ default ifNil: [ default := self new ]!

initialize	GRPlatform current		addToStartUpList: self;		addToShutDownList: self!

shutDown	self default adaptors do: #shutDown!

startUp	self default adaptors do: #startUp!

unload	GRPlatform current		removeFromStartUpList: self;		removeFromShutDownList: self! !
!ILServerManager class categoriesFor: #default!accessing!public! !
!ILServerManager class categoriesFor: #initialize!class initialization!public! !
!ILServerManager class categoriesFor: #shutDown!public!system startup! !
!ILServerManager class categoriesFor: #startUp!public!system startup! !
!ILServerManager class categoriesFor: #unload!class initialization!public! !

