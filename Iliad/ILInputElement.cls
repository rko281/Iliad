"Filed out from Dolphin Smalltalk 7"!

ILFormElementElement subclass: #ILInputElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILInputElement guid: (GUID fromString: '{bcaa9ed4-f195-4b07-b432-055979d861e9}')!
ILInputElement comment: ''!
!ILInputElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILInputElement methodsFor!

accept: aString 	self attributeAt: 'accept' put: aString!

accepts: aCollection	| contentTypes |	contentTypes := WriteStream on: String new.	aCollection		do: [:each | contentTypes nextPutAll: each]		separatedBy: [contentTypes nextPutAll: ' '].	self accept: contentTypes contents!

alt: aString	self attributeAt: 'alt' put: aString!

beFile	self type: 'file'!

beforePrintHtml	self attributeAt: 'type' ifAbsentPut: ['text'].!

beHidden	self type: 'hidden'!

beImage	self type: 'image'!

bePassword	self type: 'password'!

beReset	self type: 'reset'!

beSubmit	self type: 'submit'!

beText	self type: 'text'!

ismap	self attributeAt: 'ismap' put: 'ismap'!

maxlength: anInteger 	self attributeAt: 'maxlength' put: anInteger greaseString!

printHtmlOn: aStream	" This should(?) be removed. It seems superimplementor already provides better implementation "	self flag: #toDo.	self beforePrintHtml.	aStream		nextPut: $<;		nextPutAll: self tag.	self attributes associationsDo: [:each | 			self printAttribute: each on: aStream].	aStream nextPutAll: '/>'!

size: anInteger 	self attributeAt: 'size' put: anInteger greaseString!

tag	^ 'input'!

type: aString 	self attributeAt: 'type' put: aString!

usemap: aString 	self attributeAt: 'usemap' put: aString!

value: aString 	self attributeAt: 'value' put: aString! !
!ILInputElement categoriesFor: #accept:!accessing attributes!public! !
!ILInputElement categoriesFor: #accepts:!accessing attributes!public! !
!ILInputElement categoriesFor: #alt:!accessing attributes!public! !
!ILInputElement categoriesFor: #beFile!accessing attributes/types!public! !
!ILInputElement categoriesFor: #beforePrintHtml!printing!public! !
!ILInputElement categoriesFor: #beHidden!accessing attributes/types!public! !
!ILInputElement categoriesFor: #beImage!accessing attributes/types!public! !
!ILInputElement categoriesFor: #bePassword!accessing attributes/types!public! !
!ILInputElement categoriesFor: #beReset!accessing attributes/types!public! !
!ILInputElement categoriesFor: #beSubmit!accessing attributes/types!public! !
!ILInputElement categoriesFor: #beText!accessing attributes/types!public! !
!ILInputElement categoriesFor: #ismap!accessing attributes!public! !
!ILInputElement categoriesFor: #maxlength:!accessing attributes!public! !
!ILInputElement categoriesFor: #printHtmlOn:!printing!public! !
!ILInputElement categoriesFor: #size:!accessing attributes!public! !
!ILInputElement categoriesFor: #tag!accessing!public! !
!ILInputElement categoriesFor: #type:!accessing attributes/types!public! !
!ILInputElement categoriesFor: #usemap:!accessing attributes!public! !
!ILInputElement categoriesFor: #value:!accessing attributes!public! !

