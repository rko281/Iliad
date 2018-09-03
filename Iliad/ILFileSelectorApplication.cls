"Filed out from Dolphin Smalltalk 7"!

ILAbstractSelectorApplication subclass: #ILFileSelectorApplication
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFileSelectorApplication guid: (GUID fromString: '{f4cf18ee-b371-4b2e-8dd6-31db40cd356f}')!
ILFileSelectorApplication comment: 'Example class for single file selector widget.'!
!ILFileSelectorApplication categoriesForClass!Iliad-More-Examples! !
!ILFileSelectorApplication methodsFor!

defaultWidget	^ ILFileBrowserSelectorWidget new! !
!ILFileSelectorApplication categoriesFor: #defaultWidget!defaults!public! !

!ILFileSelectorApplication class methodsFor!

path	" Private - See superimplementor's comment "	^'examples/fileselector'! !
!ILFileSelectorApplication class categoriesFor: #path!accessing!public! !

