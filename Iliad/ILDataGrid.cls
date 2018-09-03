"Filed out from Dolphin Smalltalk 7"!

ILUIWidget subclass: #ILDataGrid
	instanceVariableNames: 'items columnNames builders headerClass footerClass rowClass caption'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILDataGrid guid: (GUID fromString: '{58cbf1c9-ccd1-42fd-985f-3c776857abdf}')!
ILDataGrid comment: ''!
!ILDataGrid categoriesForClass!Iliad-More-UI! !
!ILDataGrid methodsFor!

body	^[:tbody | | index |		index := 1.		self visibleItemsDo: [:item | 			tbody build: (self rowForItem: item even: index even).			index := index + 1]]!

builders	builders isNil ifTrue: [builders := OrderedCollection new].	^builders!

caption 	^ caption.!

caption: aString	caption := aString.	self markDirty!

column: anInteger buildContents: aBlock	[self builders size < anInteger] whileTrue: [		self builders addLast: [:e :item |]].	self builders at: anInteger put: aBlock.	self markDirty!

columnNames	^columnNames!

columnNames: anObject	columnNames := anObject.	self markDirty!

contents	^[:e |		e div			class: self cssClass;			build: [:div |				div table build: [:table |					table caption: self caption.					table thead build: (self headerClass new grid: self).					table tbody build: self body.					table tfoot build: (self footerClass new grid: self)]]]!

cssClass	^super cssClass, ' datagrid'!

footerClass	footerClass isNil ifTrue: [		footerClass := self class defaultFooterClass].	^footerClass!

headerClass	headerClass isNil ifTrue: [		headerClass := self class defaultHeaderClass].	^headerClass!

items	^items!

items: anObject	items := anObject.	self markDirty!

rowClass	rowClass isNil ifTrue: [		rowClass := self class defaultRowClass].	^rowClass!

rowForItem: anItem even: aBoolean	^[:tbody |		tbody build: (self rowClass new 			grid: self; 			even: aBoolean;			item: anItem)]!

visibleItemsDo: aBlock	self items do: aBlock! !
!ILDataGrid categoriesFor: #body!building!public! !
!ILDataGrid categoriesFor: #builders!accessing!public! !
!ILDataGrid categoriesFor: #caption!accessing!public! !
!ILDataGrid categoriesFor: #caption:!accessing!public! !
!ILDataGrid categoriesFor: #column:buildContents:!accessing!public! !
!ILDataGrid categoriesFor: #columnNames!accessing!public! !
!ILDataGrid categoriesFor: #columnNames:!accessing!public! !
!ILDataGrid categoriesFor: #contents!building!public! !
!ILDataGrid categoriesFor: #cssClass!accessing!public! !
!ILDataGrid categoriesFor: #footerClass!building!public! !
!ILDataGrid categoriesFor: #headerClass!building!public! !
!ILDataGrid categoriesFor: #items!accessing!public! !
!ILDataGrid categoriesFor: #items:!accessing!public! !
!ILDataGrid categoriesFor: #rowClass!building!public! !
!ILDataGrid categoriesFor: #rowForItem:even:!building!public! !
!ILDataGrid categoriesFor: #visibleItemsDo:!building!public! !

!ILDataGrid class methodsFor!

defaultFooterClass	^ILDataGridFooter!

defaultHeaderClass	^ILDataGridHeader!

defaultRowClass	^ILDataGridRow! !
!ILDataGrid class categoriesFor: #defaultFooterClass!defaults!public! !
!ILDataGrid class categoriesFor: #defaultHeaderClass!defaults!public! !
!ILDataGrid class categoriesFor: #defaultRowClass!defaults!public! !

