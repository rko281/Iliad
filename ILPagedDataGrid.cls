"Filed out from Dolphin Smalltalk 7"!

ILDataGrid subclass: #ILPagedDataGrid
	instanceVariableNames: 'rowsPerPage currentPage'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILPagedDataGrid guid: (GUID fromString: '{7c2932b6-a856-4975-949e-5df4eba4f925}')!
ILPagedDataGrid comment: ''!
!ILPagedDataGrid categoriesForClass!Iliad-More-UI! !
!ILPagedDataGrid methodsFor!

currentPage	^ (currentPage ifNil: [1]) min: self totalPages!

currentPage: anInteger	currentPage := anInteger.	self markDirty!

defaultRowsPerPage	^10!

rowsPerPage	^rowsPerPage ifNil: [self defaultRowsPerPage]!

rowsPerPage: anInteger	rowsPerPage = anInteger ifFalse: [self markDirty].	rowsPerPage := anInteger!

totalPages 	^(self items size / self rowsPerPage) ceiling max: 1!

visibleItemsDo: aBlock	| fromIndex toIndex |	fromIndex := ((self currentPage - 1) * self rowsPerPage) + 1.	toIndex := (fromIndex + self rowsPerPage - 1) min: (self items size).	fromIndex to: toIndex do: [:each |		aBlock value: (self items at: each)].! !
!ILPagedDataGrid categoriesFor: #currentPage!accessing!public! !
!ILPagedDataGrid categoriesFor: #currentPage:!accessing!public! !
!ILPagedDataGrid categoriesFor: #defaultRowsPerPage!defaults!public! !
!ILPagedDataGrid categoriesFor: #rowsPerPage!accessing!public! !
!ILPagedDataGrid categoriesFor: #rowsPerPage:!accessing!public! !
!ILPagedDataGrid categoriesFor: #totalPages!accessing!public! !
!ILPagedDataGrid categoriesFor: #visibleItemsDo:!accessing!public! !

!ILPagedDataGrid class methodsFor!

defaultFooterClass	^ILPagedDataGridFooter! !
!ILPagedDataGrid class categoriesFor: #defaultFooterClass!defaults!public! !

