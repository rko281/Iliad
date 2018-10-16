"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ILTempFile
	instanceVariableNames: 'contentType fileName fileSize tempFileName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTempFile guid: (GUID fromString: '{69d82b72-3339-4fed-a364-f44c32d8d623}')!
ILTempFile comment: 'An ILTempFile is an object referring to a file that was just uploaded using a streaming API directly onto disk.All files are uploaded into a tempDirectory and can later be moved (and renamed to a proper name instead of tempFileName) to a proper place.The actual streaming onto disk is done in initializeFromChunk: upon instantiation.'!
!ILTempFile categoriesForClass!Iliad-Core-lib-HTTP! !
!ILTempFile methodsFor!

asFileReference	^ FileSystem workingDirectory / self fileName !

contents	"Return full contents of the file, may be very large so only use with small files."	^ FileStream 		readOnlyFileNamed: self tempFileName		do: [:f | f contents]!

contentType	^contentType!

contentType: aString	contentType := aString!

delete	"Delete the actual file we refer to."	(self tempDirectory / self tempFileName) ensureDelete!

extension	"Return the extension of path basename i.e., /foo/gloops.taz extension is 'taz'"	^ self fileName asPath extension!

fileName	^fileName!

fileName: aFileName	fileName := aFileName!

fileSize	^fileSize!

initializeFromChunk: aChunk	"This is where we actually read the file contents chunk wise and save it to disk.	Both implementations (the upper one uses AsyncFile) seem to work fine (at least on Linux)	but it is not clear which is fastest. It seems AsyncFile is faster for files up to 100Mb but	for a 700Mb file the StandardFileStream seems faster - no idea why."	"	| f |	fileName := aChunk fileName.	contentType := aChunk contentType.	f := AsyncFile new open: (self tempDirectory fullNameFor: self tempFileName) forWrite: true.	[fileSize := aChunk saveToAsyncFile: f] ensure: [		f waitForCompletion; close]"	| f |	fileName := aChunk fileName.	contentType := aChunk contentType.	f := StandardFileStream		forceNewFileNamed: (self tempDirectory / self tempFileName) fullName.	fileSize := [ aChunk saveToStream: f ]		ensure: [ f close ]!

printOn: aStream	super printOn: aStream.	self fileName notNil 		ifTrue: [ aStream nextPutAll: ' -> '; nextPutAll: self fileName ]!

readStream	"Get a read stream on the file on disk."		^(self tempDirectory readOnlyFileNamed: self tempFileName)			reset; yourself!

renameTo: aFullName	"At least on Unix this seems to do a quick move of the file."	(self tempDirectory / self tempFileName ) moveTo: aFullName asFileReference !

tempDirectory	" This is the directory where all ILTempFiles are stored. "	| tmpDirname fs  |		tmpDirname := 'tempuploads'.	fs := FileSystem workingDirectory fileSystem.	^ (fs isDirectory: tmpDirname)		ifFalse: [ (fs workingDirectory / tmpDirname) ensureCreateDirectory ]		ifTrue: [ fs workingDirectory / tmpDirname ]!

tempFileName	"This ensures we have a temporary unique name for the file	since all uploads are done into the same tempDirectory."	^ tempFileName ifNil: [tempFileName := UUID new asString36]! !
!ILTempFile categoriesFor: #asFileReference!accessing!public! !
!ILTempFile categoriesFor: #contents!file operations!public! !
!ILTempFile categoriesFor: #contentType!accessing!public! !
!ILTempFile categoriesFor: #contentType:!accessing!public! !
!ILTempFile categoriesFor: #delete!file operations!public! !
!ILTempFile categoriesFor: #extension!accessing!public! !
!ILTempFile categoriesFor: #fileName!accessing!public! !
!ILTempFile categoriesFor: #fileName:!accessing!public! !
!ILTempFile categoriesFor: #fileSize!accessing!public! !
!ILTempFile categoriesFor: #initializeFromChunk:!initialize/release!public! !
!ILTempFile categoriesFor: #printOn:!printing!public! !
!ILTempFile categoriesFor: #readStream!private! !
!ILTempFile categoriesFor: #renameTo:!file operations!public! !
!ILTempFile categoriesFor: #tempDirectory!private! !
!ILTempFile categoriesFor: #tempFileName!accessing!public! !

!ILTempFile class methodsFor!

fromChunk: aChunk	^ self new initializeFromChunk: aChunk! !
!ILTempFile class categoriesFor: #fromChunk:!instance creation!public! !

