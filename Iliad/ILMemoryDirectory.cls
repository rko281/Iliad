"Filed out from Dolphin Smalltalk 7"!

ILDirectory subclass: #ILMemoryDirectory
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILMemoryDirectory guid: (GUID fromString: '{36fc8cf7-b973-4411-9ed3-8e587305c51c}')!
ILMemoryDirectory comment: ''!
!ILMemoryDirectory categoriesForClass!Iliad-Core-RequestHandlers! !
!ILMemoryDirectory methodsFor!

adjustPath: aString	^aString 		copyWithRegex: '^\/', self path, '\/' 		matchesReplacedWith: ''!

asFilename: aSelector 	| dotIndex extension |	dotIndex := self lastUpperCaseIndexIn: aSelector.	dotIndex = 0 ifTrue: [		"convert Symbol to String"		^ aSelector greaseString ].	extension := (aSelector last: aSelector size - dotIndex + 1) asLowercase.	^ (aSelector first: dotIndex - 1) , '.' , extension!

convertToSelector: aString	^self class convertToSelector: aString !

deployFiles	"Write to disk the files that the receiver use to serve as methods.	The files are stored in a subfolder named like the classname of the receiver in a subfolder of Smalltalk image folder."	GRPlatform current ensureExistenceOfFolder: self path.	self fileSelectors do: 		[:each | 		GRPlatform current 			write: (self perform: each)			toFile: (self asFilename: each)			inFolder: self path]!

fileContentsFor: aString	| fileSelector |	fileSelector := self convertToSelector: (self adjustPath: aString).	(self isFileSelector: fileSelector) ifFalse: [^nil].	^(self perform: fileSelector)!

fileSelectors	^self class selectors select: [:each |		self isFileSelector: each]!

isFileSelector: aSelector	"Only methods in 'files' protocol are allowed to be served as files"		^(self class whichCategoryIncludesSelector: aSelector) greaseString = 'files'!

lastUpperCaseIndexIn: aString	^ aString findLast: [ :each | each isUppercase ]!

path	"answer the base path of the memory directory"		^self subclassResponsibility ! !
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

addAllFilesIn: aPathString 	"adds all files in the directory specified by aPathString to the current file library"	(GRPlatform current filesIn: aPathString) do: [:each | self addFileAt: each]!

addFileAt: aPath	"adds the file specified by aFilename to the current file library"	self 		addFileAt: aPath		contents: (GRPlatform current 			contentsOfFile: aPath			binary: (ILFileHandler isBinary: aPath)) !

addFileAt: aPath contents: aByteArrayOrString	self 		addFileNamed: (GRPlatform current localNameOf: aPath)		contents: aByteArrayOrString !

addFileNamed: aFilename contents: aByteArrayOrString	| selector |	selector := self convertToSelector: aFilename.	(ILFileHandler isBinary: aFilename)		ifTrue: [self compileBinary: aByteArrayOrString selector: selector]		ifFalse: [self compileText: aByteArrayOrString selector: selector]!

allFilesIn: aPathString 	"adds all files in the directory specified by aPathString to the current file library"	(GRPlatform current filesIn: aPathString) do: [:each | self addFileAt: each]!

compileBinary: aByteArrayOrString selector: aSymbol	GRPlatform current 		compile: (GRPlatform current asMethodReturningByteArray: aByteArrayOrString  named: aSymbol)		into: self		classified: 'files'	!

compileText: aByteArrayOrString selector: aSymbol	GRPlatform current 		compile: (GRPlatform current asMethodReturningString: aByteArrayOrString  named: aSymbol)			into: self		classified: 'files'!

convertToSelector: aString	| mainPart extension |	mainPart := (aString copyUpToLast: $.)		reject: [:each | each isAlphaNumeric not].	mainPart isEmpty not ifTrue: [		[mainPart first isDigit]			whileTrue: [mainPart := mainPart allButFirst]].	extension := (aString copyAfterLast: $.) asLowercase capitalized.	^(mainPart, extension) asSymbol ! !
!ILMemoryDirectory class categoriesFor: #addAllFilesIn:!maintenance!public! !
!ILMemoryDirectory class categoriesFor: #addFileAt:!maintenance!public! !
!ILMemoryDirectory class categoriesFor: #addFileAt:contents:!private! !
!ILMemoryDirectory class categoriesFor: #addFileNamed:contents:!private! !
!ILMemoryDirectory class categoriesFor: #allFilesIn:!maintenance!public! !
!ILMemoryDirectory class categoriesFor: #compileBinary:selector:!private! !
!ILMemoryDirectory class categoriesFor: #compileText:selector:!private! !
!ILMemoryDirectory class categoriesFor: #convertToSelector:!private! !

