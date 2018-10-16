﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ILServerAdaptor
	instanceVariableNames: 'manager port requestHandler codec'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILServerAdaptor guid: (GUID fromString: '{338a19ca-5cb8-46e7-b1c2-3531d1f536b2}')!
ILServerAdaptor comment: 'Abstract class for servers'!
!ILServerAdaptor categoriesForClass!Iliad-Core-Server! !
!ILServerAdaptor methodsFor!

additionalStatusOn: aStream!

basicStart

basicStop

canStart

canStop

codec

codec: aCodec

debugStart

defaultCodec

defaultPort

initialize

initializeWithManager: anILServerManager 

isRunning

isStarting

isStopped

isStopping

isUnregistered

kill

manager

mode

port

port: anInteger 

restart

shutDown!

start

startUp!

statusString

stop

unregister

unregistered

verboseStart
!ILServerAdaptor categoriesFor: #additionalStatusOn:!accessing/readonly!public! !
!ILServerAdaptor categoriesFor: #basicStart!private! !
!ILServerAdaptor categoriesFor: #basicStop!private! !
!ILServerAdaptor categoriesFor: #canStart!public!testing! !
!ILServerAdaptor categoriesFor: #canStop!public!testing! !
!ILServerAdaptor categoriesFor: #codec!accessing!public! !
!ILServerAdaptor categoriesFor: #codec:!accessing!public! !
!ILServerAdaptor categoriesFor: #debugStart!private! !
!ILServerAdaptor categoriesFor: #defaultCodec!defaults!public! !
!ILServerAdaptor categoriesFor: #defaultPort!defaults!public! !
!ILServerAdaptor categoriesFor: #initialize!initialization!public! !
!ILServerAdaptor categoriesFor: #initializeWithManager:!initialization!public! !
!ILServerAdaptor categoriesFor: #isRunning!public!testing! !
!ILServerAdaptor categoriesFor: #isStarting!public!testing! !
!ILServerAdaptor categoriesFor: #isStopped!public!testing! !
!ILServerAdaptor categoriesFor: #isStopping!public!testing! !
!ILServerAdaptor categoriesFor: #isUnregistered!public!testing! !
!ILServerAdaptor categoriesFor: #kill!public!starting/stopping! !
!ILServerAdaptor categoriesFor: #manager!accessing!public! !
!ILServerAdaptor categoriesFor: #mode!accessing!public! !
!ILServerAdaptor categoriesFor: #port!accessing!public! !
!ILServerAdaptor categoriesFor: #port:!accessing!public! !
!ILServerAdaptor categoriesFor: #restart!public!starting/stopping! !
!ILServerAdaptor categoriesFor: #shutDown!private! !
!ILServerAdaptor categoriesFor: #start!public!starting/stopping! !
!ILServerAdaptor categoriesFor: #startUp!private! !
!ILServerAdaptor categoriesFor: #statusString!accessing/readonly!public! !
!ILServerAdaptor categoriesFor: #stop!public!starting/stopping! !
!ILServerAdaptor categoriesFor: #unregister!public!registration! !
!ILServerAdaptor categoriesFor: #unregistered!public!registration! !
!ILServerAdaptor categoriesFor: #verboseStart!private! !

!ILServerAdaptor class methodsFor!

adaptorClasses

default

isAbstract

manager: aServerManager

new

port: anInteger

start

startOn: portInteger

stop
!ILServerAdaptor class categoriesFor: #adaptorClasses!accessing!public! !
!ILServerAdaptor class categoriesFor: #default!public!utilities! !
!ILServerAdaptor class categoriesFor: #isAbstract!accessing!public! !
!ILServerAdaptor class categoriesFor: #manager:!instance creation!public! !
!ILServerAdaptor class categoriesFor: #new!instance creation!public! !
!ILServerAdaptor class categoriesFor: #port:!instance creation!public! !
!ILServerAdaptor class categoriesFor: #start!public!utilities! !
!ILServerAdaptor class categoriesFor: #startOn:!public!utilities! !
!ILServerAdaptor class categoriesFor: #stop!public!utilities! !
