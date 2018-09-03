"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ILModelProxy
	instanceVariableNames: 'cache model'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILModelProxy guid: (GUID fromString: '{335a6c4d-a906-445e-af04-7f7027d75408}')!
ILModelProxy comment: ''!
!ILModelProxy categoriesForClass!Iliad-Core-Utilities! !
!ILModelProxy methodsFor!

commit	cache keysAndValuesDo:		[:key :value |		self performRealWrite: key with: value].	cache := Dictionary new!

doesNotUnderstand: aMessage	^ aMessage selector isUnary		ifTrue: [self performRead: aMessage selector]		ifFalse: [			(aMessage selector isKeyword and: [aMessage arguments size = 1])				ifTrue: [self performWrite: aMessage selector allButLast with: aMessage argument]				ifFalse: [super doesNotUnderstand: aMessage]]!

model	^model!

performRead: aSymbol	^ cache		at: aSymbol asSymbol		ifAbsent: [model perform: aSymbol]!

performRealWrite: aSymbol with: anObject	model perform: (aSymbol copyWith: $:) asSymbol with: anObject!

performWrite: aSymbol with: anObject	cache at: aSymbol asSymbol put: anObject!

setModel: anObject	model := anObject.	cache := Dictionary new! !
!ILModelProxy categoriesFor: #commit!forwarding!public! !
!ILModelProxy categoriesFor: #doesNotUnderstand:!forwarding!public! !
!ILModelProxy categoriesFor: #model!accessing!public! !
!ILModelProxy categoriesFor: #performRead:!private! !
!ILModelProxy categoriesFor: #performRealWrite:with:!private! !
!ILModelProxy categoriesFor: #performWrite:with:!private! !
!ILModelProxy categoriesFor: #setModel:!initializing!public! !

!ILModelProxy class methodsFor!

on: anObject	^ self new setModel: anObject! !
!ILModelProxy class categoriesFor: #on:!instance creation!public! !

