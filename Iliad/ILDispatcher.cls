﻿"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILDispatcher
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'current'!
ILDispatcher guid: (GUID fromString: '{57e20de3-068e-45b8-a6cb-5cf416fbb01c}')!
ILDispatcher comment: 'I am the entry point of requests. I dispatch them with the #dispatch: method 
!ILDispatcher categoriesForClass!Iliad-Core-Dispatching! !
!ILDispatcher methodsFor!

createContextFor: aRequest

dispatch: aRequest

dispatchRequest: aRequest

findSessionFor: aRequest

withDispatchErrorHandling: aBlock

withErrorHandling: aBlock
self halt.
!ILDispatcher categoriesFor: #createContextFor:!private! !
!ILDispatcher categoriesFor: #dispatch:!dispatching!public! !
!ILDispatcher categoriesFor: #dispatchRequest:!dispatching!public! !
!ILDispatcher categoriesFor: #findSessionFor:!private! !
!ILDispatcher categoriesFor: #withDispatchErrorHandling:!error handling!public! !
!ILDispatcher categoriesFor: #withErrorHandling:!error handling!public! !

!ILDispatcher class methodsFor!

current

register

setCurrent: aDispatcher
!ILDispatcher class categoriesFor: #current!instance creation!public! !
!ILDispatcher class categoriesFor: #register!public!registration! !
!ILDispatcher class categoriesFor: #setCurrent:!public!registration! !
