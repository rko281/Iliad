"Filed out from Dolphin Smalltalk 7"!

ILUIWidget subclass: #ILWidgetTabs
	instanceVariableNames: 'contentsBlock labelBlock items selectedItem hashBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILWidgetTabs guid: (GUID fromString: '{3be64beb-a204-48d4-a8ad-76d08cff1dd2}')!
ILWidgetTabs comment: ''!
!ILWidgetTabs categoriesForClass!Iliad-More-UI! !
!ILWidgetTabs methodsFor!

contents	^[:e |		e build: self tabsContents.		self contentsBlock value: e value: self selectedItem]!

contentsBlock	^contentsBlock!

contentsBlock: aViewBlock	contentsBlock := aViewBlock!

cssClass	^super cssClass, ' tabs'!

hashBlock	^hashBlock ifNil: [[:item | '']]!

hashBlock: aBlock	hashBlock := aBlock!

items	^items!

items: aCollection	items := aCollection!

labelBlock	^labelBlock!

labelBlock: aBlock	labelBlock := aBlock!

selectedItem	^selectedItem ifNil: [self items first]!

selectedItem: anItem		selectedItem := anItem!

selectItem: anItem	self selectedItem: anItem.	self markDirty!

tabsContents	^[:e || ul div |		div := e div class: self cssClass.		ul := div ul.		self items do: [:each || li |			li := ul li.			li a				build: (self labelBlock value: each);				action: [self selectItem: each]				hash: (self hashBlock value: each).			self selectedItem = each ifTrue: [				li class: 'selected']]]!

updateFromHash: aString	self items do: [:each |		(self hashBlock value: each) = aString ifTrue: [			self selectedItem: each. ^self]]! !
!ILWidgetTabs categoriesFor: #contents!building!public! !
!ILWidgetTabs categoriesFor: #contentsBlock!accessing!public! !
!ILWidgetTabs categoriesFor: #contentsBlock:!accessing!public! !
!ILWidgetTabs categoriesFor: #cssClass!accessing!public! !
!ILWidgetTabs categoriesFor: #hashBlock!accessing!public! !
!ILWidgetTabs categoriesFor: #hashBlock:!accessing!public! !
!ILWidgetTabs categoriesFor: #items!accessing!public! !
!ILWidgetTabs categoriesFor: #items:!accessing!public! !
!ILWidgetTabs categoriesFor: #labelBlock!accessing!public! !
!ILWidgetTabs categoriesFor: #labelBlock:!accessing!public! !
!ILWidgetTabs categoriesFor: #selectedItem!accessing!public! !
!ILWidgetTabs categoriesFor: #selectedItem:!accessing!public! !
!ILWidgetTabs categoriesFor: #selectItem:!actions!public! !
!ILWidgetTabs categoriesFor: #tabsContents!building!public! !
!ILWidgetTabs categoriesFor: #updateFromHash:!public!updating! !

