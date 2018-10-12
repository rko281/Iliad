"Filed out from Dolphin Smalltalk 7"!

ILUIWidget subclass: #ILDataGridHeader
	instanceVariableNames: 'grid'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILDataGridHeader guid: (GUID fromString: '{1032da3d-49eb-44a7-9e3e-5d88f1f54937}')!
ILDataGridHeader comment: ''!
!ILDataGridHeader categoriesForClass!Iliad-More-UI! !
!ILDataGridHeader methodsFor!

contents	^[:tr |		self grid columnNames do: [:each |			tr th text: each]]!

grid	^grid!

grid: anObject	grid := anObject!

rootElementClass	^ILTableRowElement! !
!ILDataGridHeader categoriesFor: #contents!building!public! !
!ILDataGridHeader categoriesFor: #grid!accessing!public! !
!ILDataGridHeader categoriesFor: #grid:!accessing!public! !
!ILDataGridHeader categoriesFor: #rootElementClass!accessing!public! !

