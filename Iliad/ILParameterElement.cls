"Filed out from Dolphin Smalltalk 7"!

ILClosingElement subclass: #ILParameterElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILParameterElement guid: (GUID fromString: '{cac71469-1652-49c4-8d09-54bc1057cf02}')!
ILParameterElement comment: ''!
!ILParameterElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILParameterElement methodsFor!

add: anElement	ILElementError signal: 'Can''t add an element to a', self className!

beData	self valuetype: 'data'!

beforePrintHtml	self		attributeAt: 'name'		ifAbsent: [self attributeError: 'name can''t be null']!

beObject	self valuetype: 'object'!

beReference	self valuetype: 'ref'!

name: aString 	self attributeAt: 'name' put: aString!

tag	^ 'param'!

type: aString 	self attributeAt: 'type' put: aString!

value: aString 	self attributeAt: 'value' put: aString!

valuetype: aString 	self attributeAt: 'valuetype' put: aString! !
!ILParameterElement categoriesFor: #add:!adding!public! !
!ILParameterElement categoriesFor: #beData!accessing attributes!public! !
!ILParameterElement categoriesFor: #beforePrintHtml!printing!public! !
!ILParameterElement categoriesFor: #beObject!accessing attributes!public! !
!ILParameterElement categoriesFor: #beReference!accessing attributes!public! !
!ILParameterElement categoriesFor: #name:!accessing attributes!public! !
!ILParameterElement categoriesFor: #tag!accessing!public! !
!ILParameterElement categoriesFor: #type:!accessing attributes!public! !
!ILParameterElement categoriesFor: #value:!accessing attributes!public! !
!ILParameterElement categoriesFor: #valuetype:!accessing attributes!public! !

