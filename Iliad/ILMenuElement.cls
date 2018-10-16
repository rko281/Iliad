"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILMenuElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILMenuElement guid: (GUID fromString: '{c42bf6a7-a0dc-4d8a-a021-fba6389084e7}')!
ILMenuElement comment: 'The menu element represents a list of commands.'!
!ILMenuElement categoriesForClass!Iliad-More-HTML5Elements! !
!ILMenuElement methodsFor!

beContext	self type: 'context'!

beToolbar	self type: 'toolbar'!

label: aString	"The label of menu"			self attributeAt: 'label' put: aString!

tag	^'menu'!

type: aString	"The kind of menu being declared.		- toolbar: indicates that the element represents a tool bar.		- context: indicates that the element represents a context menu.		- If the attribute is omitted, the element represents a list of 		commands that is neither a context menu or a toolbar"			self attributeAt: 'type' put: aString! !
!ILMenuElement categoriesFor: #beContext!accessing!public! !
!ILMenuElement categoriesFor: #beToolbar!accessing!public! !
!ILMenuElement categoriesFor: #label:!accessing attributes!public! !
!ILMenuElement categoriesFor: #tag!accessing!public! !
!ILMenuElement categoriesFor: #type:!accessing attributes!public! !

