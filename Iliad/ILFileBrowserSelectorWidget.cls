"Filed out from Dolphin Smalltalk 7"!

ILFileBrowserListWidget subclass: #ILFileBrowserSelectorWidget
	instanceVariableNames: 'selection'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFileBrowserSelectorWidget guid: (GUID fromString: '{9423b058-e14c-427c-9c68-62451ca54d69}')!
ILFileBrowserSelectorWidget comment: 'A simple single file selector (radio button) widget for one-level browsing, based in the Iliad Class Browser  example.'!
!ILFileBrowserSelectorWidget categoriesForClass!Iliad-More-UI! !
!ILFileBrowserSelectorWidget methodsFor!

renderButtonsOn: e"	e div 		class: '';		build: [ : div |			self buttons do: [ : each |				div button					cssClass: self buttonsClass;					text: each key;					action: [ self perform: each value ]  ] ] "!

renderFilenamesOf: aDirectoryEntry on: builder	" Private - Render a list with sorted elements found in aDirectoryEntry "	(self sortedFilenamesForDirectory: aDirectoryEntry)		do: [: fileName |			builder radio				onClickDo: [ self selectFile: (aDirectoryEntry asFileReference / fileName) fullName ];				text: fileName;				name: 'ILFileBrowserSelectorWidget_Group' ]		separatedBy: [ builder br ]!

selectedFile	^ selection!

selectFile: aFilename 	" Private - Set the receiver's selected file to be aFilename "		selection := aFilename!

selection	^ selection! !
!ILFileBrowserSelectorWidget categoriesFor: #renderButtonsOn:!private! !
!ILFileBrowserSelectorWidget categoriesFor: #renderFilenamesOf:on:!private! !
!ILFileBrowserSelectorWidget categoriesFor: #selectedFile!accessing!public! !
!ILFileBrowserSelectorWidget categoriesFor: #selectFile:!actions!public! !
!ILFileBrowserSelectorWidget categoriesFor: #selection!accessing!public! !

