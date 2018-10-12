"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILObjectElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILObjectElement guid: (GUID fromString: '{c42e4a1e-fba5-4eb5-adcf-39cbd67d2204}')!
ILObjectElement comment: ''!
!ILObjectElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILObjectElement methodsFor!

archive: aString 	self attributeAt: 'archive' put: aString!

archives: aCollection 	| archives |	archives := WriteStream on: String new.	aCollection 		do: [:each | archives nextPutAll: each]		separatedBy: [archives nextPutAll: ' '].	self attributeAt: 'archive'put: archives contents!

classid: aString 	self attributeAt: 'classid' put: aString!

codebase: aString 	self attributeAt: 'codebase' put: aString!

codetype: aString 	self attributeAt: 'codetype' put: aString!

data: aString 	self attributeAt: 'data' put: aString!

declare	self attributeAt: 'declare' put: 'declare'!

declareOnly	self declare!

height: anInteger 	self attributeAt: 'height' put: anInteger greaseString!

name: aString 	self attributeAt: 'name' put: aString!

standby: aString 	self attributeAt: 'standby' put: aString!

tabindex: anInteger 	self attributeAt: 'tabindex' put: anInteger greaseString!

tag	^ 'object'!

type: aString 	self attributeAt: 'type' put: aString!

usemap: aString 	self attributeAt: 'usemap' put: aString!

width: anInteger 	self attributeAt: 'width' put: anInteger greaseString! !
!ILObjectElement categoriesFor: #archive:!accessing attributes!public! !
!ILObjectElement categoriesFor: #archives:!accessing attributes!public! !
!ILObjectElement categoriesFor: #classid:!accessing attributes!public! !
!ILObjectElement categoriesFor: #codebase:!accessing attributes!public! !
!ILObjectElement categoriesFor: #codetype:!accessing attributes!public! !
!ILObjectElement categoriesFor: #data:!accessing attributes!public! !
!ILObjectElement categoriesFor: #declare!accessing attributes!public! !
!ILObjectElement categoriesFor: #declareOnly!accessing attributes!public! !
!ILObjectElement categoriesFor: #height:!accessing attributes!public! !
!ILObjectElement categoriesFor: #name:!accessing attributes!public! !
!ILObjectElement categoriesFor: #standby:!accessing attributes!public! !
!ILObjectElement categoriesFor: #tabindex:!accessing attributes!public! !
!ILObjectElement categoriesFor: #tag!accessing!public! !
!ILObjectElement categoriesFor: #type:!accessing attributes!public! !
!ILObjectElement categoriesFor: #usemap:!accessing attributes!public! !
!ILObjectElement categoriesFor: #width:!accessing attributes!public! !

