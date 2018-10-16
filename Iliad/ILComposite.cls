"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILComposite
	instanceVariableNames: 'tail next'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILComposite guid: (GUID fromString: '{38cf3b74-c263-4bd6-add7-2aba52b4d972}')!
ILComposite comment: ''!
!ILComposite categoriesForClass!Iliad-Core-Utilities! !
!ILComposite methodsFor!

= anObject	^self species = anObject species and: [		self children = anObject children]!

add: aComposite	| head |	tail ifNil: [tail := aComposite].	head := tail next ifNil: [tail].	tail next: aComposite.	tail := tail next.	tail next: head.	^aComposite!

allChildrenDo: aBlock	self childrenDo: [:each | 		aBlock value: each.		each allChildrenDo: aBlock]!

children	| children |	children := OrderedCollection new.	self childrenDo: [:each | children add: each].	^children!

childrenDo: aBlock	| child |	tail ifNil: [^self].	child := tail next.	[child == tail] whileFalse: [		aBlock value: child.		child := child next].	aBlock value: tail.	!

hash	^self species hash bitXor: 		self children hash!

next	^next!

next: aComposite	next := aComposite! !
!ILComposite categoriesFor: #=!comparing!public! !
!ILComposite categoriesFor: #add:!adding!public! !
!ILComposite categoriesFor: #allChildrenDo:!enumerating!public! !
!ILComposite categoriesFor: #children!accessing!public! !
!ILComposite categoriesFor: #childrenDo:!enumerating!public! !
!ILComposite categoriesFor: #hash!comparing!public! !
!ILComposite categoriesFor: #next!accessing!public! !
!ILComposite categoriesFor: #next:!accessing!public! !

