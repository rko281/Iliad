"Filed out from Dolphin Smalltalk 7"!

ILClosingElement subclass: #ILMetaElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILMetaElement guid: (GUID fromString: '{a21af156-3aca-4b20-a9ae-1348c4a1254f}')!
ILMetaElement comment: ''!
!ILMetaElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILMetaElement methodsFor!

beforePrintHtml	self attributeAt: 'content' ifAbsent: [self attributeError: 'content not set']!

class: aString	self doesNotUnderstandAttribute: 'class'!

classes: aCollection	self doesNotUnderstandAttribute: 'class'!

content: aString 	self attributeAt: 'content' put: aString!

contentType	self httpEquiv: 'content-type'!

expires	self httpEquiv: 'expires'!

httpEquiv: aString 	self attributeAt: 'http-equiv' put: aString!

name: aString 	self attributeAt: 'name' put: aString!

onEvent: event add: aString 	self doesNotUnderstandAttribute: 'on', event!

refresh	self httpEquiv: 'refresh'!

scheme: aString 	self attributeAt: 'scheme' put: aString!

setCookie	self httpEquiv: 'set-cookie'!

tag	^ 'meta'!

title: aString	self doesNotUnderstandAttribute: 'title'! !
!ILMetaElement categoriesFor: #beforePrintHtml!printing!public! !
!ILMetaElement categoriesFor: #class:!accessing attributes!public! !
!ILMetaElement categoriesFor: #classes:!accessing attributes!public! !
!ILMetaElement categoriesFor: #content:!accessing attributes!public! !
!ILMetaElement categoriesFor: #contentType!accessing attributes!public! !
!ILMetaElement categoriesFor: #expires!accessing attributes!public! !
!ILMetaElement categoriesFor: #httpEquiv:!accessing attributes!public! !
!ILMetaElement categoriesFor: #name:!accessing attributes!public! !
!ILMetaElement categoriesFor: #onEvent:add:!accessing attributes/events!public! !
!ILMetaElement categoriesFor: #refresh!accessing attributes!public! !
!ILMetaElement categoriesFor: #scheme:!accessing attributes!public! !
!ILMetaElement categoriesFor: #setCookie!accessing attributes!public! !
!ILMetaElement categoriesFor: #tag!accessing!public! !
!ILMetaElement categoriesFor: #title:!accessing attributes!public! !

