"Filed out from Dolphin Smalltalk 7"!

ILDataGridFooter subclass: #ILPagedDataGridFooter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILPagedDataGridFooter guid: (GUID fromString: '{79ecfa89-f073-4a58-9b41-cbcccfe41250}')!
ILPagedDataGridFooter comment: ''!
!ILPagedDataGridFooter categoriesForClass!Iliad-More-UI! !
!ILPagedDataGridFooter methodsFor!

contents	^[:tr |		tr td			colspan: self grid columnNames size;			build: (ILPaginator new				totalPages: self grid totalPages;				currentPage: self grid currentPage;				action: [:val | self grid currentPage: val])]! !
!ILPagedDataGridFooter categoriesFor: #contents!building!public! !

