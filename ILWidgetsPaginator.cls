"Filed out from Dolphin Smalltalk 7"!

ILWidget subclass: #ILWidgetsPaginator
	instanceVariableNames: 'widgets currentPage widgetsPerPage beforeContentsBlock afterContentsBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILWidgetsPaginator guid: (GUID fromString: '{76052f71-890e-4fb8-b6bd-557bfc6fbff9}')!
ILWidgetsPaginator comment: ''!
!ILWidgetsPaginator categoriesForClass!Iliad-More-UI! !
!ILWidgetsPaginator methodsFor!

afterContentsBlock	^afterContentsBlock!

afterContentsBlock: aBlock	afterContentsBlock := aBlock!

beforeContentsBlock 	^beforeContentsBlock!

beforeContentsBlock: aBlock	beforeContentsBlock := aBlock!

contents	^[:e |		self beforeContentsBlock ifNotNil: [			e build: self beforeContentsBlock].		self visibleWidgets do: [:each |			e build: each].		self afterContentsBlock ifNotNil: [			e build: self afterContentsBlock].		e build: self paginator]!

currentPage 	^(currentPage ifNil: [1]) min: self totalPages!

currentPage: 	anInteger	currentPage := anInteger.	self markDirty!

defaultWidgetsPerPage 	^5!

paginator	^ILPaginator new		totalPages: self totalPages;		currentPage: self currentPage;		action: [:val | self currentPage: val]!

totalPages	^(self widgets size / self widgetsPerPage) ceiling max: 1!

visibleWidgets	| formIndex toIndex |	formIndex := (self currentPage - 1) * self widgetsPerPage + 1.	toIndex := formIndex + self widgetsPerPage - 1 min: self widgets size.	^(formIndex to: toIndex) collect: [:each | self widgets at: each]!

widgets	^widgets ifNil: [widgets := OrderedCollection new]!

widgets: aCollection	widgets := aCollection!

widgetsPerPage	^widgetsPerPage ifNil: [self defaultWidgetsPerPage]!

widgetsPerPage: anInteger	widgetsPerPage := anInteger! !
!ILWidgetsPaginator categoriesFor: #afterContentsBlock!accessing!public! !
!ILWidgetsPaginator categoriesFor: #afterContentsBlock:!accessing!public! !
!ILWidgetsPaginator categoriesFor: #beforeContentsBlock!accessing!public! !
!ILWidgetsPaginator categoriesFor: #beforeContentsBlock:!accessing!public! !
!ILWidgetsPaginator categoriesFor: #contents!building!public! !
!ILWidgetsPaginator categoriesFor: #currentPage!accessing!public! !
!ILWidgetsPaginator categoriesFor: #currentPage:!accessing!public! !
!ILWidgetsPaginator categoriesFor: #defaultWidgetsPerPage!defaults!public! !
!ILWidgetsPaginator categoriesFor: #paginator!accessing!public! !
!ILWidgetsPaginator categoriesFor: #totalPages!accessing!public! !
!ILWidgetsPaginator categoriesFor: #visibleWidgets!accessing!public! !
!ILWidgetsPaginator categoriesFor: #widgets!accessing!public! !
!ILWidgetsPaginator categoriesFor: #widgets:!accessing!public! !
!ILWidgetsPaginator categoriesFor: #widgetsPerPage!accessing!public! !
!ILWidgetsPaginator categoriesFor: #widgetsPerPage:!accessing!public! !

