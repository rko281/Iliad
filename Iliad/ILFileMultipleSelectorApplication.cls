"Filed out from Dolphin Smalltalk 7"!

ILAbstractSelectorApplication subclass: #ILFileMultipleSelectorApplication
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFileMultipleSelectorApplication guid: (GUID fromString: '{81c28c51-62d8-4646-9491-e4571e5f47a4}')!
ILFileMultipleSelectorApplication comment: 'Example application for multiple file selection  applying selections to files in a specified directory.'!
!ILFileMultipleSelectorApplication categoriesForClass!Iliad-More-Examples! !
!ILFileMultipleSelectorApplication methodsFor!

defaultWidget	^ ILFileBrowserMultipleSelectorWidget new			buttons: { 'Download' -> #downloadSelections };			yourself! !
!ILFileMultipleSelectorApplication categoriesFor: #defaultWidget!defaults!public! !

!ILFileMultipleSelectorApplication class methodsFor!

path	" Private - See superimplementor's comment "	^'examples/multiplefileselector'! !
!ILFileMultipleSelectorApplication class categoriesFor: #path!accessing!public! !

