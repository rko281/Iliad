"Filed out from Dolphin Smalltalk 7"!

ILUIWidget subclass: #ILDataGridRow
	instanceVariableNames: 'grid item even'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILDataGridRow guid: (GUID fromString: '{3858d151-9071-4ac3-baba-7c95cfc19095}')!
ILDataGridRow comment: ''!
!ILDataGridRow categoriesForClass!Iliad-More-UI! !
!ILDataGridRow methodsFor!

contents	^[:tr |		self even ifTrue: [tr cssClass: tr cssClass, ' even'].		self grid builders do: [:builder |			(builder argumentCount = 3)				ifTrue: [builder value: tr td value: item value: self]				ifFalse: [builder value: tr td value: item]]]!

even 	^even ifNil: [false]!

even: aBoolean	even := aBoolean!

grid	^grid!

grid: anObject	grid := anObject!

item	^item!

item: anObject	item := anObject!

rootElementClass	^ILTableRowElement! !
!ILDataGridRow categoriesFor: #contents!building!public! !
!ILDataGridRow categoriesFor: #even!accessing!public! !
!ILDataGridRow categoriesFor: #even:!accessing!public! !
!ILDataGridRow categoriesFor: #grid!accessing!public! !
!ILDataGridRow categoriesFor: #grid:!accessing!public! !
!ILDataGridRow categoriesFor: #item!accessing!public! !
!ILDataGridRow categoriesFor: #item:!accessing!public! !
!ILDataGridRow categoriesFor: #rootElementClass!accessing!public! !

