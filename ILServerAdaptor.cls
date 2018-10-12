"Filed out from Dolphin Smalltalk 7"!

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

basicStart	self subclassResponsibility!

basicStop	self subclassResponsibility!

canStart	^ manager notNil and: [ self manager canStart: self ]!

canStop	^ manager notNil and: [ self manager canStop: self ]!

codec	^ codec 		ifNil: [ codec := self defaultCodec ]!

codec: aCodec	codec := aCodec!

debugStart	" Private - See #startVerboseOn: comment "		self subclassResponsibility !

defaultCodec	^ GRPharoUtf8Codec new!

defaultPort	^ 8080!

initialize	super initialize.	codec := self defaultCodec.	port := self defaultPort!

initializeWithManager: anILServerManager 	self initialize.	manager := anILServerManager!

isRunning	self subclassResponsibility!

isStarting	self subclassResponsibility!

isStopped	self subclassResponsibility!

isStopping	self subclassResponsibility!

isUnregistered	^ self manager isNil!

kill	self basicStop!

manager	^ manager!

mode	" Answer a <String> describing the receiver running mode "		self subclassResponsibility!

port	^ port!

port: anInteger 	port := anInteger !

restart	self manager restart: self!

shutDown!

start	self manager start: self!

startUp!

statusString	^ self isRunning		ifTrue: [ 'running' ]		ifFalse: [ 'stopped' ]!

stop	self manager stop: self!

unregister	self manager ifNotNil: [ :m | m unregister: self ]!

unregistered	manager := nil!

verboseStart	" Private - See #startVerboseOn: comment "		self subclassResponsibility ! !
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

adaptorClasses	" Answer a <Collection> of receiver's available servers "		^ self allSubclasses reject: #isAbstract!

default	"Helper method that returns a single adaptor of this class from the default WAServerManager.	If there are no adaptors of this class registered, return nil. If there are multiple adaptors	of this type, signal an error."		self shouldBeImplemented !

isAbstract	^ self name = #ILServerAdaptor!

manager: aServerManager	^ aServerManager register: 		(self basicNew			initializeWithManager: aServerManager;			yourself)!

new	^ self manager: ILServerManager default!

port: anInteger	^ self new		port: anInteger;		yourself!

start	"Convenience method to start a single already registered adaptor of the type of the	receiver."	self default start!

startOn: portInteger	"Convenience method to start a single adaptor on the specified port. If an existing	adaptor of this type is already registered, it will be restarted on the specified port."	| adaptor |	adaptor := self default.	adaptor isNil		ifFalse: [ adaptor stop; port: portInteger ]		ifTrue: [ adaptor := self port: portInteger ].	adaptor start!

stop	"Convenience method to stop a currently running adaptor of the type of the receiver	as long as there is only one such adaptor currently registered."	| default |	default := self default.	default isNil ifFalse: [ default stop ]! !
!ILServerAdaptor class categoriesFor: #adaptorClasses!accessing!public! !
!ILServerAdaptor class categoriesFor: #default!public!utilities! !
!ILServerAdaptor class categoriesFor: #isAbstract!accessing!public! !
!ILServerAdaptor class categoriesFor: #manager:!instance creation!public! !
!ILServerAdaptor class categoriesFor: #new!instance creation!public! !
!ILServerAdaptor class categoriesFor: #port:!instance creation!public! !
!ILServerAdaptor class categoriesFor: #start!public!utilities! !
!ILServerAdaptor class categoriesFor: #startOn:!public!utilities! !
!ILServerAdaptor class categoriesFor: #stop!public!utilities! !

