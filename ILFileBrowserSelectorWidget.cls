﻿"Filed out from Dolphin Smalltalk 7"!

ILFileBrowserListWidget subclass: #ILFileBrowserSelectorWidget
	instanceVariableNames: 'selection'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFileBrowserSelectorWidget guid: (GUID fromString: '{9423b058-e14c-427c-9c68-62451ca54d69}')!
ILFileBrowserSelectorWidget comment: 'A simple single file selector (radio button) widget for one-level browsing, based in the Iliad Class Browser  example.
!ILFileBrowserSelectorWidget categoriesForClass!Iliad-More-UI! !
!ILFileBrowserSelectorWidget methodsFor!

renderButtonsOn: e

renderFilenamesOf: aDirectoryEntry on: builder

selectedFile

selectFile: aFilename 

selection
!ILFileBrowserSelectorWidget categoriesFor: #renderButtonsOn:!private! !
!ILFileBrowserSelectorWidget categoriesFor: #renderFilenamesOf:on:!private! !
!ILFileBrowserSelectorWidget categoriesFor: #selectedFile!accessing!public! !
!ILFileBrowserSelectorWidget categoriesFor: #selectFile:!actions!public! !
!ILFileBrowserSelectorWidget categoriesFor: #selection!accessing!public! !
