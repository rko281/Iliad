"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILDirectionElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILDirectionElement guid: (GUID fromString: '{5a332e00-4564-47d4-b3c0-98eee8fcf30d}')!
ILDirectionElement comment: ''!
!ILDirectionElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILDirectionElement methodsFor!

beforePrintHtml	self attributeAt: 'dir' ifAbsent: [self attributeError: '''dir'' not set']!

dir: aString	self attributeAt: 'dir' put: aString!

onEvent: event do: aString	self doesNotUnderstandAttribute: 'on', event!

tag	^'bdo'!

xmlLang: aString	self doesNotUnderstandAttribute: 'xml:lang'! !
!ILDirectionElement categoriesFor: #beforePrintHtml!printing!public! !
!ILDirectionElement categoriesFor: #dir:!accessing attributes!public! !
!ILDirectionElement categoriesFor: #onEvent:do:!accessing attributes/events!public! !
!ILDirectionElement categoriesFor: #tag!accessing!public! !
!ILDirectionElement categoriesFor: #xmlLang:!accessing!public! !

