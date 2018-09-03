﻿"Filed out from Dolphin Smalltalk 7"!

ILDirectory subclass: #ILFileDirectory
	instanceVariableNames: 'directory path'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFileDirectory guid: (GUID fromString: '{7835c7b2-d96f-4598-a4ea-a16d7b8d88a7}')!
ILFileDirectory comment: 'A basic Iliad directory that maps to a filesystem using a FileDirectory instance.
!ILFileDirectory categoriesForClass!Iliad-Core-RequestHandlers! !
!ILFileDirectory methodsFor!

adjustPath: urlPath

directory

directory: aFSReference

fileContentsFor: anUrlPath

path

path: aPath
!ILFileDirectory categoriesFor: #adjustPath:!private! !
!ILFileDirectory categoriesFor: #directory!accessing!public! !
!ILFileDirectory categoriesFor: #directory:!accessing!public! !
!ILFileDirectory categoriesFor: #fileContentsFor:!accessing!public! !
!ILFileDirectory categoriesFor: #path!accessing!public! !
!ILFileDirectory categoriesFor: #path:!accessing!public! !

!ILFileDirectory class methodsFor!

directory: aFSReference
!ILFileDirectory class categoriesFor: #directory:!private! !
