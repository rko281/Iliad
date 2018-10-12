"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ILTodoListItemRepository
	instanceVariableNames: 'items'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'default'!
ILTodoListItemRepository guid: (GUID fromString: '{e2ac7de2-0604-4038-bf3d-91cb167c8710}')!
ILTodoListItemRepository comment: ''!
!ILTodoListItemRepository categoriesForClass!Iliad-More-Examples! !
!ILTodoListItemRepository methodsFor!

addItem: anItem 	self items add: anItem!

items	^items ifNil: [items := OrderedCollection new]!

removeItem: anItem	self items remove: anItem! !
!ILTodoListItemRepository categoriesFor: #addItem:!message list!public! !
!ILTodoListItemRepository categoriesFor: #items!accessing!public! !
!ILTodoListItemRepository categoriesFor: #removeItem:!actions!public! !

!ILTodoListItemRepository class methodsFor!

default	^default ifNil: [default := self new]! !
!ILTodoListItemRepository class categoriesFor: #default!private! !

