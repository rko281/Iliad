﻿"Filed out from Dolphin Smalltalk 7"!

ILRequestHandler subclass: #ILErrorHandler
	instanceVariableNames: 'error'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'mode'!
ILErrorHandler guid: (GUID fromString: '{1b817800-7484-4b8f-b6b5-25d26a2eb1b9}')!
ILErrorHandler comment: '""""""""""""""""""""""""
!ILErrorHandler categoriesForClass!Iliad-Core-RequestHandlers! !
!ILErrorHandler methodsFor!

error

error: anError

isDebugMode

isDeploymentMode

isVerboseMode

mode

newResponse

produceDebugResponse

produceDeploymentResponse

produceResponse

produceVerboseResponse
!ILErrorHandler categoriesFor: #error!accessing!public! !
!ILErrorHandler categoriesFor: #error:!accessing!public! !
!ILErrorHandler categoriesFor: #isDebugMode!public!testing! !
!ILErrorHandler categoriesFor: #isDeploymentMode!public!testing! !
!ILErrorHandler categoriesFor: #isVerboseMode!public!testing! !
!ILErrorHandler categoriesFor: #mode!accessing!public! !
!ILErrorHandler categoriesFor: #newResponse!private! !
!ILErrorHandler categoriesFor: #produceDebugResponse!public!responding! !
!ILErrorHandler categoriesFor: #produceDeploymentResponse!public!responding! !
!ILErrorHandler categoriesFor: #produceResponse!public!responding! !
!ILErrorHandler categoriesFor: #produceVerboseResponse!public!responding! !

!ILErrorHandler class methodsFor!

mode

mode: aSymbol

setDebugMode

setDeploymentMode

setVerboseMode
!ILErrorHandler class categoriesFor: #mode!accessing!public! !
!ILErrorHandler class categoriesFor: #mode:!accessing!public! !
!ILErrorHandler class categoriesFor: #setDebugMode!accessing!public! !
!ILErrorHandler class categoriesFor: #setDeploymentMode!accessing!public! !
!ILErrorHandler class categoriesFor: #setVerboseMode!accessing!public! !
