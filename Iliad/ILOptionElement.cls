"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILOptionElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILOptionElement guid: (GUID fromString: '{2d285dab-d7c0-48e9-adeb-6d496b2f9578}')!
ILOptionElement comment: ''!
!ILOptionElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILOptionElement methodsFor!

action: aBlock	| action |	action := self session registerActionFor: aBlock.	self value: action key!

disabled	self disabled: true!

disabled: aBoolean	aBoolean ifTrue: [		self attributeAt: 'disabled' put: 'disabled']!

label: aString 	self attributeAt: 'label' put: aString!

selected	self attributeAt: 'selected' put: 'selected'!

selected: aBoolean	aBoolean ifTrue: [self selected]!

tag	^ 'option'!

value: aString 	self attributeAt: 'value' put: aString! !
!ILOptionElement categoriesFor: #action:!accessing attributes!public! !
!ILOptionElement categoriesFor: #disabled!accessing attributes!public! !
!ILOptionElement categoriesFor: #disabled:!accessing attributes!public! !
!ILOptionElement categoriesFor: #label:!accessing attributes!public! !
!ILOptionElement categoriesFor: #selected!accessing attributes!public! !
!ILOptionElement categoriesFor: #selected:!accessing attributes!public! !
!ILOptionElement categoriesFor: #tag!accessing!public! !
!ILOptionElement categoriesFor: #value:!accessing attributes!public! !

