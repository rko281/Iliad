"Filed out from Dolphin Smalltalk 7"!

ILRequestHandler subclass: #ILErrorHandler
	instanceVariableNames: 'error'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'mode'!
ILErrorHandler guid: (GUID fromString: '{1b817800-7484-4b8f-b6b5-25d26a2eb1b9}')!
ILErrorHandler comment: '""""""""""""""""""""""""" Error handling modes """""""""""""""""""""""""Errors handlers can be in one of the following modes: deployment, verbose ordebug. The default mode is verbose.You can switch between modes with class methods in the <accessing modes> protocol.When errors occur, the framework with handle them differently depending on the application mode:	- in deployment mode, it will respond an error 500;	- in verbose mode, it will also respond an error 500, but with error details;	- in debug mode, a debugger window will be opened on the error;'!
!ILErrorHandler categoriesForClass!Iliad-Core-RequestHandlers! !
!ILErrorHandler methodsFor!

error	^error!

error: anError	error := anError!

isDebugMode	^self mode = #debug!

isDeploymentMode	^self isDebugMode not and: [	self isVerboseMode not]!

isVerboseMode	^self mode = #verbose!

mode	^self class mode!

newResponse	^ILResponse new		status: 500;		yourself!

produceDebugResponse	GRPlatform current openDebuggerOn: self error  !

produceDeploymentResponse	self respond: [:response | 		response nextPutAll: '<html><h1>Error 500: Internal server error</h1></html>']!

produceResponse	self isDebugMode ifTrue: [		self produceDebugResponse].	self isVerboseMode ifTrue: [		self produceVerboseResponse].	self isDeploymentMode ifTrue: [		self produceDeploymentResponse]!

produceVerboseResponse	self respond: [:response || page e |		response nextPutAll: (String streamContents: [:stream |		page := ILHTMLPage new.		page body h1: 'Internal Error';			h2: self error description;			h3: self error messageText;			pre: (String streamContents: [:str |				(self error signalerContext sender stackOfSize: 15)					do: [:context | str nextPutAll: context greaseString]					separatedBy: [str nextPut: Character cr]]).		page build printHtmlOn: stream])]! !
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

mode	^mode ifNil: [mode := #verbose]!

mode: aSymbol	mode := aSymbol!

setDebugMode	self mode: #debug!

setDeploymentMode	self mode: #deployment!

setVerboseMode	self mode: #verbose! !
!ILErrorHandler class categoriesFor: #mode!accessing!public! !
!ILErrorHandler class categoriesFor: #mode:!accessing!public! !
!ILErrorHandler class categoriesFor: #setDebugMode!accessing!public! !
!ILErrorHandler class categoriesFor: #setDeploymentMode!accessing!public! !
!ILErrorHandler class categoriesFor: #setVerboseMode!accessing!public! !

