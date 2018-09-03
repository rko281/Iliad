"Filed out from Dolphin Smalltalk 7"!

ILApplication subclass: #ILAbstractSelectorApplication
	instanceVariableNames: 'widget'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILAbstractSelectorApplication guid: (GUID fromString: '{308e9ade-1a18-4ca3-956a-74b9225d4c4e}')!
ILAbstractSelectorApplication comment: 'Abstract application class which renders a widget acting as browser or selector containing items.Items could be Smalltalk classes, files, directories, etc.'!
!ILAbstractSelectorApplication categoriesForClass!Iliad-More-Examples! !
!ILAbstractSelectorApplication methodsFor!

index	" Private - See superimplementor's comment "	^ [ : e | 	e build: self widget]!

updatePage: aPage	super updatePage: aPage.	aPage head stylesheet href: '/stylesheets/iliad.css'!

widget 	^ widget 		ifNil: [ widget := self defaultWidget ]! !
!ILAbstractSelectorApplication categoriesFor: #index!controllers!public! !
!ILAbstractSelectorApplication categoriesFor: #updatePage:!building!public! !
!ILAbstractSelectorApplication categoriesFor: #widget!accessing!public! !

