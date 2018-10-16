﻿"Filed out from Dolphin Smalltalk 7"!

ILDirectory subclass: #ILMemoryDirectory
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILMemoryDirectory guid: (GUID fromString: '{36fc8cf7-b973-4411-9ed3-8e587305c51c}')!
ILMemoryDirectory comment: ''!
!ILMemoryDirectory categoriesForClass!Iliad-Core-RequestHandlers! !
!ILMemoryDirectory methodsFor!

adjustPath: aString

asFilename: aSelector 

convertToSelector: aString

deployFiles

fileContentsFor: aString

fileSelectors

isFileSelector: aSelector

lastUpperCaseIndexIn: aString

path
!ILMemoryDirectory categoriesFor: #adjustPath:!accessing!public! !
!ILMemoryDirectory categoriesFor: #asFilename:!accessing!public! !
!ILMemoryDirectory categoriesFor: #convertToSelector:!private! !
!ILMemoryDirectory categoriesFor: #deployFiles!maintenance!public! !
!ILMemoryDirectory categoriesFor: #fileContentsFor:!accessing!public! !
!ILMemoryDirectory categoriesFor: #fileSelectors!accessing!public! !
!ILMemoryDirectory categoriesFor: #isFileSelector:!public!testing! !
!ILMemoryDirectory categoriesFor: #lastUpperCaseIndexIn:!accessing!public! !
!ILMemoryDirectory categoriesFor: #path!accessing!public! !

!ILMemoryDirectory class methodsFor!

addAllFilesIn: aPathString 

addFileAt: aPath

addFileAt: aPath contents: aByteArrayOrString

addFileNamed: aFilename contents: aByteArrayOrString

allFilesIn: aPathString 

compileBinary: aByteArrayOrString selector: aSymbol

compileText: aByteArrayOrString selector: aSymbol

convertToSelector: aString
!ILMemoryDirectory class categoriesFor: #addAllFilesIn:!maintenance!public! !
!ILMemoryDirectory class categoriesFor: #addFileAt:!maintenance!public! !
!ILMemoryDirectory class categoriesFor: #addFileAt:contents:!private! !
!ILMemoryDirectory class categoriesFor: #addFileNamed:contents:!private! !
!ILMemoryDirectory class categoriesFor: #allFilesIn:!maintenance!public! !
!ILMemoryDirectory class categoriesFor: #compileBinary:selector:!private! !
!ILMemoryDirectory class categoriesFor: #compileText:selector:!private! !
!ILMemoryDirectory class categoriesFor: #convertToSelector:!private! !
