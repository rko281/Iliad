"Filed out from Dolphin Smalltalk 7"!

ILUIWidget subclass: #ILTree
	instanceVariableNames: 'item expanded childrenBlock subTrees root contentsBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTree guid: (GUID fromString: '{d2504cb4-ba99-48d5-9ad8-3c6dc3aecc32}')!
ILTree comment: 'I am a graphical tree widget.Usage example:ILTree new	item: Object;	childrenBlock: [:class | class subclasses];	contentsBlock: [:e :class | e text: class name]'!
!ILTree categoriesForClass!Iliad-More-UI! !
!ILTree methodsFor!

childrenBlock	^childrenBlock!

childrenBlock: aBlock	"aBlock is used to compute the children of the given argument.	Example: [:item | item children]"		childrenBlock := aBlock!

collapse	expanded := false.	self markDirty!

contents	^[:e || div |		div := e div.		self isRoot ifTrue: [div class: self cssClass].		div build: self contentsForItem]!

contentsBlock	^contentsBlock!

contentsBlock: aViewBlock	"aViewBlock takes two arguments.	Example: [:e :item | e text: item printString]"		contentsBlock := aViewBlock!

contentsForItem	^[:e || div |		div := e div class: self cssClassForItem.		self hasChildren ifTrue: [| arrow |			arrow := div a class: 'arrow'.			self expanded 				ifTrue: [					arrow img 						src: '/images/arrow_down.png'						alt: 'collapse'.					arrow action: [self collapse]]				ifFalse: [					arrow img 						src: '/images/arrow_right.png'						alt: 'expand'.					arrow action: [self expand]]].		div space.		self contentsBlock value: div value: self item.		(self hasChildren and: [self expanded]) ifTrue: [| ul |			ul := div ul.					self subTrees do: [:each |						ul li build: each]]]!

cssClass	^super cssClass, ' tree'!

cssClassForItem	| str |	str := WriteStream on: String new.	self hasChildren ifTrue: [str nextPutAll: ' expandable'].	self expanded ifTrue: [str nextPutAll: ' expanded'].	^str contents!

expand	expanded := true.	self markDirty!

expanded	^expanded ifNil: [false]!

expanded: aBoolean	expanded :=  aBoolean!

hasChildren		^self treeChildren notNil and: [self treeChildren notEmpty]!

isRoot	^self root!

item	^item!

item: anItem	item := anItem!

root	^root ifNil: [root := true]!

root: aBoolean	root := aBoolean!

subTrees	^subTrees ifNil: [		subTrees := self treeChildren collect: [:each |			self treeForChild: each]]!

treeChildren	^self childrenBlock value: self item!

treeForChild: anObject	^self class new		root: false;		childrenBlock: self childrenBlock;		item: anObject;		contentsBlock: self contentsBlock;		yourself! !
!ILTree categoriesFor: #childrenBlock!accessing!public! !
!ILTree categoriesFor: #childrenBlock:!accessing!public! !
!ILTree categoriesFor: #collapse!actions!public! !
!ILTree categoriesFor: #contents!building!public! !
!ILTree categoriesFor: #contentsBlock!accessing!public! !
!ILTree categoriesFor: #contentsBlock:!accessing!public! !
!ILTree categoriesFor: #contentsForItem!building!public! !
!ILTree categoriesFor: #cssClass!accessing!public! !
!ILTree categoriesFor: #cssClassForItem!accessing!public! !
!ILTree categoriesFor: #expand!actions!public! !
!ILTree categoriesFor: #expanded!accessing!public! !
!ILTree categoriesFor: #expanded:!accessing!public! !
!ILTree categoriesFor: #hasChildren!public!testing! !
!ILTree categoriesFor: #isRoot!public!testing! !
!ILTree categoriesFor: #item!accessing!public! !
!ILTree categoriesFor: #item:!accessing!public! !
!ILTree categoriesFor: #root!accessing!public! !
!ILTree categoriesFor: #root:!accessing!public! !
!ILTree categoriesFor: #subTrees!accessing!public! !
!ILTree categoriesFor: #treeChildren!accessing!public! !
!ILTree categoriesFor: #treeForChild:!accessing!public! !

