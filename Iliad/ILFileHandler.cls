﻿"Filed out from Dolphin Smalltalk 7"!

ILRequestHandler subclass: #ILFileHandler
	instanceVariableNames: 'file'
	classVariableNames: 'BaseDirectories Directories MimeTypes'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFileHandler guid: (GUID fromString: '{ba65720d-54b9-4b0f-b940-2089643d3232}')!
ILFileHandler comment: ''!
!ILFileHandler categoriesForClass!Iliad-Core-RequestHandlers! !
!ILFileHandler methodsFor!

directories 

fileContentsFor: aFileName

handleRequest

mimeTypeFor: aFilename

newResponse

produceResponse
!ILFileHandler categoriesFor: #directories!accessing!public! !
!ILFileHandler categoriesFor: #fileContentsFor:!private! !
!ILFileHandler categoriesFor: #handleRequest!public!request handling! !
!ILFileHandler categoriesFor: #mimeTypeFor:!accessing!public! !
!ILFileHandler categoriesFor: #newResponse!private! !
!ILFileHandler categoriesFor: #produceResponse!public!responding! !

!ILFileHandler class methodsFor!

addDirectory: aDirectory

defaultFilePath

defaultMimeType

defaultMimeTypes

directories

directories: aCollection

initMimeTypes

isBinary: aFilename

mimeTypeFor: aString

mimeTypes
!ILFileHandler class categoriesFor: #addDirectory:!accessing!public! !
!ILFileHandler class categoriesFor: #defaultFilePath!defaults!public! !
!ILFileHandler class categoriesFor: #defaultMimeType!accessing!public! !
!ILFileHandler class categoriesFor: #defaultMimeTypes!accessing!public! !
!ILFileHandler class categoriesFor: #directories!accessing!public! !
!ILFileHandler class categoriesFor: #directories:!accessing!public! !
!ILFileHandler class categoriesFor: #initMimeTypes!initialize/release!public! !
!ILFileHandler class categoriesFor: #isBinary:!public!testing! !
!ILFileHandler class categoriesFor: #mimeTypeFor:!accessing!public! !
!ILFileHandler class categoriesFor: #mimeTypes!accessing!public! !
