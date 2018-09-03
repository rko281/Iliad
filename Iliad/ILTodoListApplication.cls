"Filed out from Dolphin Smalltalk 7"!

ILApplication subclass: #ILTodoListApplication
	instanceVariableNames: 'todoListGridWidget'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTodoListApplication guid: (GUID fromString: '{f2665d1d-30e7-4780-9aae-83ec3f727f8d}')!
ILTodoListApplication comment: ''!
!ILTodoListApplication categoriesForClass!Iliad-More-Examples! !
!ILTodoListApplication methodsFor!

actionLinksContents	^[:e || div |		div := e div class: 'selection'; yourself.		div a			action: [self selectPending]			hash: 'pending';			text: 'pending'.		div space.		div a			action: [self selectCompleted]			hash: 'completed';			text: 'completed'.		e br]!

index	self updateFromHash.		^self mainContents!

initialize	super initialize.	self model: ILTodoListItemRepository default!

mainContents	^[:e | 		e div			class: 'wrapper';			build: [:div |				div h1: 'Todo List'.				div build: self actionLinksContents.				div build: self todoListGridWidget]]!

selectCompleted	self todoListGridWidget selectBlock: [:item | item completed].	self todoListGridWidget markDirty!

selectPending	self todoListGridWidget selectBlock: [:item | item completed not].	self todoListGridWidget markDirty!

todoListGridWidget	^todoListGridWidget ifNil: [todoListGridWidget := ILTodoListGridWidget new]!

updateFromHash	| path |	path := self router hashRoute next.	path = 'pending' ifTrue: [self selectPending].	path = 'completed' ifTrue: [self selectCompleted]!

updatePage: aPage	super updatePage: aPage.	aPage head stylesheet href: '/stylesheets/iliad.css'! !
!ILTodoListApplication categoriesFor: #actionLinksContents!building!public! !
!ILTodoListApplication categoriesFor: #index!controllers!public! !
!ILTodoListApplication categoriesFor: #initialize!initialization!public! !
!ILTodoListApplication categoriesFor: #mainContents!building!public! !
!ILTodoListApplication categoriesFor: #selectCompleted!accessing!public! !
!ILTodoListApplication categoriesFor: #selectPending!accessing!public! !
!ILTodoListApplication categoriesFor: #todoListGridWidget!accessing!public! !
!ILTodoListApplication categoriesFor: #updateFromHash!building!public! !
!ILTodoListApplication categoriesFor: #updatePage:!building!public! !

!ILTodoListApplication class methodsFor!

path	^'examples/todo'! !
!ILTodoListApplication class categoriesFor: #path!accessing!public! !

