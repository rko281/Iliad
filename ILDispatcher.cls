"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILDispatcher
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'current'!
ILDispatcher guid: (GUID fromString: '{57e20de3-068e-45b8-a6cb-5cf416fbb01c}')!
ILDispatcher comment: 'I am the entry point of requests. I dispatch them with the #dispatch: method to an ILApplicationHandler or an ILFileHandler.Web server adapters should use the #dispatch: method on the current instance of ILDispatcher - returned by ILDispatcher class>>current - to handle requests, and wait for an ILResponseNotificationto respond to them.'!
!ILDispatcher categoriesForClass!Iliad-Core-Dispatching! !
!ILDispatcher methodsFor!

createContextFor: aRequest	^ILContext new		request: aRequest;		session: (self findSessionFor: aRequest);		yourself!

dispatch: aRequest	"Entry point of requests"		self withErrorHandling: [		self dispatchRequest: aRequest]!

dispatchRequest: aRequest	ILCurrentContext 		use: (self createContextFor: aRequest)		during: [			self withDispatchErrorHandling: [				self context router dispatchRequest]]!

findSessionFor: aRequest	^ILSessionManager current 		sessionFor: aRequest!

withDispatchErrorHandling: aBlock	"Catch dispatch errors"		aBlock 		on: ILDispatchError		do: [:error | ILFileHandler new 			handleRequest]!

withErrorHandling: aBlock	"Catch errors and use an ILErrorHandler to handle them"		aBlock		on: Error		do: [:error |			ILErrorHandler new				error: error; 				handleRequest]! !
!ILDispatcher categoriesFor: #createContextFor:!private! !
!ILDispatcher categoriesFor: #dispatch:!dispatching!public! !
!ILDispatcher categoriesFor: #dispatchRequest:!dispatching!public! !
!ILDispatcher categoriesFor: #findSessionFor:!private! !
!ILDispatcher categoriesFor: #withDispatchErrorHandling:!error handling!public! !
!ILDispatcher categoriesFor: #withErrorHandling:!error handling!public! !

!ILDispatcher class methodsFor!

current	current ifNil: [self register].	^current!

register	ILDispatcher setCurrent: self new!

setCurrent: aDispatcher	current := aDispatcher! !
!ILDispatcher class categoriesFor: #current!instance creation!public! !
!ILDispatcher class categoriesFor: #register!public!registration! !
!ILDispatcher class categoriesFor: #setCurrent:!public!registration! !

