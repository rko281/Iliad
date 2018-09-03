"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILFormElementElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFormElementElement guid: (GUID fromString: '{510dcce5-51e1-4aea-9c1c-56dfa4ceab35}')!
ILFormElementElement comment: ''!
!ILFormElementElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILFormElementElement methodsFor!

accesskey: aCharacter 	self attributeAt: 'accesskey' put: aCharacter greaseString!

action: aBlock	| action |	action := self session registerActionFor: aBlock.	self name: action key!

beSubmitOnChange	self beSubmitOnEvent: 'change'!

beSubmitOnClick	self beSubmitOnEvent: 'click'!

beSubmitOnEvent: aString	self onEvent: aString add: 'iliad.evaluateFormElementAction(this)'!

disabled	self disabled: true!

disabled: aBoolean	aBoolean ifTrue: [		self attributeAt: 'disabled' put: 'disabled']!

name	^self attributeAt: 'name'!

name: aString 	self attributeAt: 'name' put: aString greaseString!

readonly: aBoolean 	self attributeAt: 'readonly' put: aBoolean greaseString! !
!ILFormElementElement categoriesFor: #accesskey:!accessing!public! !
!ILFormElementElement categoriesFor: #action:!accessing attributes!public! !
!ILFormElementElement categoriesFor: #beSubmitOnChange!accessing attributes!public! !
!ILFormElementElement categoriesFor: #beSubmitOnClick!accessing attributes!public! !
!ILFormElementElement categoriesFor: #beSubmitOnEvent:!accessing attributes!public! !
!ILFormElementElement categoriesFor: #disabled!accessing attributes!public! !
!ILFormElementElement categoriesFor: #disabled:!accessing attributes!public! !
!ILFormElementElement categoriesFor: #name!accessing attributes!public! !
!ILFormElementElement categoriesFor: #name:!accessing attributes!public! !
!ILFormElementElement categoriesFor: #readonly:!accessing attributes!public! !

