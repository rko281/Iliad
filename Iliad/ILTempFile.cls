﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ILTempFile
	instanceVariableNames: 'contentType fileName fileSize tempFileName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTempFile guid: (GUID fromString: '{69d82b72-3339-4fed-a364-f44c32d8d623}')!
ILTempFile comment: 'An ILTempFile is an object referring to a file that was just uploaded using a streaming API directly onto disk.
!ILTempFile categoriesForClass!Iliad-Core-lib-HTTP! !
!ILTempFile methodsFor!

asFileReference

contents

contentType

contentType: aString

delete

extension

fileName

fileName: aFileName

fileSize

initializeFromChunk: aChunk

printOn: aStream

readStream

renameTo: aFullName

tempDirectory

tempFileName
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

fromChunk: aChunk
!ILTempFile class categoriesFor: #fromChunk:!instance creation!public! !
