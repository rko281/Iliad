﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ILModelProxy
	instanceVariableNames: 'cache model'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILModelProxy guid: (GUID fromString: '{335a6c4d-a906-445e-af04-7f7027d75408}')!
ILModelProxy comment: ''!
!ILModelProxy categoriesForClass!Iliad-Core-Utilities! !
!ILModelProxy methodsFor!

commit

doesNotUnderstand: aMessage

model

performRead: aSymbol

performRealWrite: aSymbol with: anObject

performWrite: aSymbol with: anObject

setModel: anObject
!ILModelProxy categoriesFor: #commit!forwarding!public! !
!ILModelProxy categoriesFor: #doesNotUnderstand:!forwarding!public! !
!ILModelProxy categoriesFor: #model!accessing!public! !
!ILModelProxy categoriesFor: #performRead:!private! !
!ILModelProxy categoriesFor: #performRealWrite:with:!private! !
!ILModelProxy categoriesFor: #performWrite:with:!private! !
!ILModelProxy categoriesFor: #setModel:!initializing!public! !

!ILModelProxy class methodsFor!

on: anObject
!ILModelProxy class categoriesFor: #on:!instance creation!public! !
