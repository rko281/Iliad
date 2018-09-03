"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILCommandElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILCommandElement guid: (GUID fromString: '{dc75cc3b-0967-4967-8bae-06c9dc8d2009}')!
ILCommandElement comment: 'A command element with no type attribute specified represents the same thing as a command element with its type attribute set to command. '!
!ILCommandElement categoriesForClass!Iliad-More-HTML5Elements! !
!ILCommandElement methodsFor!

beCheckbox	self type: 'checkbox'!

beChecked	self checked: true!

beCommand	"Specifies that its command element is a command with an associated action"	self type: 'command'!

beDisabled	self disabled: true!

beHidden	self hidden: true!

beRadio	"Specifies that its command element represents a selection of one item from a list of items"	self type: 'radio'!

checked: aBoolean	"Specifies that the command is selected"		aBoolean ifTrue: [		self attributeAt: 'checked' put: 'checked']!

disabled: aBoolean	"Specifies that the command is not currently available"		aBoolean ifTrue: [		self attributeAt: 'disabled' put: 'disabled']!

hidden: aBoolean	aBoolean ifTrue: [		self attributeAt: 'hidden' put: aBoolean]!

icon: aString	"An url for an image that represents the command"		self attributeAt: 'icon' put: aString!

label: aString	"The name of the command, as shown to the user"		self attributeAt: 'label' put: aString!

tag	^'command'!

type: aString	"Specifies that the command is not currently available"		self attributeAt: 'type' put: aString! !
!ILCommandElement categoriesFor: #beCheckbox!accessing!public! !
!ILCommandElement categoriesFor: #beChecked!accessing!public! !
!ILCommandElement categoriesFor: #beCommand!accessing!public! !
!ILCommandElement categoriesFor: #beDisabled!accessing!public! !
!ILCommandElement categoriesFor: #beHidden!accessing!public! !
!ILCommandElement categoriesFor: #beRadio!accessing!public! !
!ILCommandElement categoriesFor: #checked:!accessing attributes!public! !
!ILCommandElement categoriesFor: #disabled:!accessing attributes!public! !
!ILCommandElement categoriesFor: #hidden:!accessing attributes!public! !
!ILCommandElement categoriesFor: #icon:!accessing attributes!public! !
!ILCommandElement categoriesFor: #label:!accessing attributes!public! !
!ILCommandElement categoriesFor: #tag!accessing!public! !
!ILCommandElement categoriesFor: #type:!accessing attributes!public! !

