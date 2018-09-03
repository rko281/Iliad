"Filed out from Dolphin Smalltalk 7"!

ILAbstractSelectorApplication subclass: #ILFileBrowserApplication
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFileBrowserApplication guid: (GUID fromString: '{18c57000-db44-48b5-a3e5-f2e53d264eec}')!
ILFileBrowserApplication comment: 'Example class for file browser widget.'!
!ILFileBrowserApplication categoriesForClass!Iliad-More-Examples! !
!ILFileBrowserApplication methodsFor!

defaultWidget	^ ILFileBrowserSelectorWidget new! !
!ILFileBrowserApplication categoriesFor: #defaultWidget!defaults!public! !

!ILFileBrowserApplication class methodsFor!

path	" Private - See superimplementor's comment "	^'examples/filebrowser'! !
!ILFileBrowserApplication class categoriesFor: #path!accessing!public! !

