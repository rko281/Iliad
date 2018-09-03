﻿"Filed out from Dolphin Smalltalk 7"!

ILUIWidget subclass: #ILFileBrowserListWidget
	instanceVariableNames: 'selectedMessage selectedDirectory title displayFileStrategy rootDirectory'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFileBrowserListWidget guid: (GUID fromString: '{96a0ede3-091f-4517-b232-b26b1cdd4ddb}')!
ILFileBrowserListWidget comment: 'A simple file browser widget for one-level browsing, based in the Iliad Class Browser  example.
!ILFileBrowserListWidget categoriesForClass!Iliad-More-UI! !
!ILFileBrowserListWidget methodsFor!

contents

defaultRootDirectory

displayBasenameSelector

displayFileStrategy

displayFullnameSelector

renderButtonsOn: e

renderFilenamesOf: aDirectoryEntry on: builder

rootDirectories

rootDirectory

rootDirectory: aFileReference

selectedDirectory

selectedDirectory: aClass

sortedFilenamesForDirectory: aDirectoryEntry

title

title: anObject
!ILFileBrowserListWidget categoriesFor: #contents!building!public! !
!ILFileBrowserListWidget categoriesFor: #defaultRootDirectory!accessing!public! !
!ILFileBrowserListWidget categoriesFor: #displayBasenameSelector!accessing!public! !
!ILFileBrowserListWidget categoriesFor: #displayFileStrategy!accessing!public! !
!ILFileBrowserListWidget categoriesFor: #displayFullnameSelector!accessing!public! !
!ILFileBrowserListWidget categoriesFor: #renderButtonsOn:!building!public! !
!ILFileBrowserListWidget categoriesFor: #renderFilenamesOf:on:!private! !
!ILFileBrowserListWidget categoriesFor: #rootDirectories!private! !
!ILFileBrowserListWidget categoriesFor: #rootDirectory!accessing!public! !
!ILFileBrowserListWidget categoriesFor: #rootDirectory:!accessing!public! !
!ILFileBrowserListWidget categoriesFor: #selectedDirectory!accessing!public! !
!ILFileBrowserListWidget categoriesFor: #selectedDirectory:!actions!public! !
!ILFileBrowserListWidget categoriesFor: #sortedFilenamesForDirectory:!private! !
!ILFileBrowserListWidget categoriesFor: #title!accessing!public! !
!ILFileBrowserListWidget categoriesFor: #title:!accessing!public! !
