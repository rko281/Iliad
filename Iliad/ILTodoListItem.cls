"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ILTodoListItem
	instanceVariableNames: 'deadline title body completed number'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTodoListItem guid: (GUID fromString: '{a85eb186-854b-4501-9bdb-f2b929365245}')!
ILTodoListItem comment: ''!
!ILTodoListItem categoriesForClass!Iliad-More-Examples! !
!ILTodoListItem methodsFor!

body	^body ifNil: ['']!

body: aString	body := aString!

completed	^completed ifNil: [false]!

completed: aBoolean	completed := aBoolean!

deadline	^deadline ifNil: [deadline := Date tomorrow]!

deadline: aDeadline	deadline := aDeadline!

number 	^number!

number: aNumber	number := aNumber!

title	^title ifNil: ['']!

title: aString	title := aString! !
!ILTodoListItem categoriesFor: #body!accessing!public! !
!ILTodoListItem categoriesFor: #body:!accessing!public! !
!ILTodoListItem categoriesFor: #completed!accessing!public! !
!ILTodoListItem categoriesFor: #completed:!accessing!public! !
!ILTodoListItem categoriesFor: #deadline!accessing!public! !
!ILTodoListItem categoriesFor: #deadline:!accessing!public! !
!ILTodoListItem categoriesFor: #number!accessing!public! !
!ILTodoListItem categoriesFor: #number:!accessing!public! !
!ILTodoListItem categoriesFor: #title!accessing!public! !
!ILTodoListItem categoriesFor: #title:!accessing!public! !

