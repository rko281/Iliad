"Filed out from Dolphin Smalltalk 7"!

ILWidget subclass: #ILTodoListGridWidget
	instanceVariableNames: 'selectBlock dataGrid'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTodoListGridWidget guid: (GUID fromString: '{3e007a3c-e011-4414-ba93-d16e5e1d89a3}')!
ILTodoListGridWidget comment: ''!
!ILTodoListGridWidget categoriesForClass!Iliad-More-Examples! !
!ILTodoListGridWidget methodsFor!

addNewItem	| newItem |	newItem := ILTodoListItem new.	self 		lightbox: ((self formulaForItem: newItem)			addMessage: [:e | e h2: 'Add item'];			yourself)		onAnswer: [:item | item ifNotNil: [self application model addItem: item]]		!

contents	^[:e |		self updateDataGridItems.		e build: self dataGrid.		e div a			action: [self addNewItem];			text: 'new']!

dataGrid	^dataGrid ifNil: [		dataGrid := (ILPagedDataGrid new		items: (self items asSortedCollection: [:a :b | a deadline < b deadline]);		columnNames: #('' 'Title' 'Body' 'Deadline' '' '');		column: 1 buildContents:[:e :item | e form checkbox 			checked: item completed;			beSubmitOnClick;			action:[:val | self setItem: item completed: val]];		column: 2 buildContents:[:e :item | e text: item title];		column: 3 buildContents:[:e :item | e text: item body];		column: 4 buildContents:[:e :item | e text: item deadline greaseString];		column: 5 buildContents:[:e :item | e a text: 'Edit'; action: [self editItem: item]];		column: 6 buildContents:[:e :item | e a text: 'Remove'; action: [self removeItem: item]];		rowsPerPage: 3;		yourself)]!

editItem: anItem	self 		lightbox: ((self formulaForItem: anItem)			addMessage: [:e | e h2: 'Edit item ', anItem title];			yourself)		!

formulaForItem: anItem	| formula |	formula := ILFormula on: anItem.	(formula dateInputOn: #deadline)		label: 'Deadline'.	(formula inputOn: #title)		labelContents: [:e | e span class: 'required'; text: 'Title'];		addCondition: [:val | val notNil and: [val notEmpty]]		labelled: [:val | 'This field is required'].	(formula textareaOn: #body)		size: 30@10;		labelContents: [:e | e span class: 'required'; text: 'Body'];		addCondition: [:val | val notNil and: [val notEmpty]]		labelled: [:val | 'This field is required'].	(formula checkboxOn: #completed)		label: 'Completed'.	(formula numberInputOn: #number)		label: 'Number test'.	^formula!

items	^self application model items select: self selectBlock!

removeItem: anItem	self application model removeItem: anItem.	self markDirty!

selectBlock	^selectBlock ifNil: [selectBlock := [:each | each completed not]]!

selectBlock: aBlock	selectBlock := aBlock!

setItem: anItem completed: aBoolean	anItem completed: aBoolean.	self updateDataGridItems!

tableHeadContents	^[:e || head |		head := e thead.		head td text: ''.		head td text: 'Title'.		head td text: 'Body'.		head td text: 'Deadline']!

updateDataGridItems 	self dataGrid items:		(self items asSortedCollection: [:a :b| a deadline < b deadline])! !
!ILTodoListGridWidget categoriesFor: #addNewItem!actions!public! !
!ILTodoListGridWidget categoriesFor: #contents!building!public! !
!ILTodoListGridWidget categoriesFor: #dataGrid!accessing!public! !
!ILTodoListGridWidget categoriesFor: #editItem:!actions!public! !
!ILTodoListGridWidget categoriesFor: #formulaForItem:!accessing!public! !
!ILTodoListGridWidget categoriesFor: #items!accessing!public! !
!ILTodoListGridWidget categoriesFor: #removeItem:!actions!public! !
!ILTodoListGridWidget categoriesFor: #selectBlock!accessing!public! !
!ILTodoListGridWidget categoriesFor: #selectBlock:!accessing!public! !
!ILTodoListGridWidget categoriesFor: #setItem:completed:!actions!public! !
!ILTodoListGridWidget categoriesFor: #tableHeadContents!building!public! !
!ILTodoListGridWidget categoriesFor: #updateDataGridItems!public!updating! !

