"Filed out from Dolphin Smalltalk 7"!

ILApplication subclass: #ILFileUploadApplication
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFileUploadApplication guid: (GUID fromString: '{18088e80-1de2-41a7-900a-c0c425d41a7d}')!
ILFileUploadApplication comment: ''!
!ILFileUploadApplication categoriesForClass!Iliad-More-Examples! !
!ILFileUploadApplication methodsFor!

index	^[ : e |		e form build: [:form |			"We need a multipart form for file uploads"			form multipart: true.			form file action: [:tempFile |				"Here we can delete, move or do whatever we want with the ILTempFile.				Typically we rename it to a different path which means we both give it				a proper name and move it out from the temp directory"				tempFile renameTo: tempFile asFileReference fullName ].			form button value: 'OK'; submit ] ]! !
!ILFileUploadApplication categoriesFor: #index!controllers!public! !

!ILFileUploadApplication class methodsFor!

path	^'examples/upload'! !
!ILFileUploadApplication class categoriesFor: #path!private! !

