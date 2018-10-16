﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ILServerManager
	instanceVariableNames: 'adaptors'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'default'!
ILServerManager guid: (GUID fromString: '{9f556860-6cf0-4710-8d1c-2e236de04240}')!
ILServerManager comment: ''!
!ILServerManager categoriesForClass!Iliad-Core-Server! !
!ILServerManager methodsFor!

adaptors

canStart: aServerAdaptor

canStop: aServerAdaptor

initialize

register: aServerAdaptor

restart: aServerAdaptor

restartAll

start: aServerAdaptor

startAll

stop: aServerAdaptor

stopAll

unregister: aServerAdaptor
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

default

initialize

shutDown

startUp

unload
!ILServerManager class categoriesFor: #default!accessing!public! !
!ILServerManager class categoriesFor: #initialize!class initialization!public! !
!ILServerManager class categoriesFor: #shutDown!public!system startup! !
!ILServerManager class categoriesFor: #startUp!public!system startup! !
!ILServerManager class categoriesFor: #unload!class initialization!public! !
