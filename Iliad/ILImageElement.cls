"Filed out from Dolphin Smalltalk 7"!

ILClosingElement subclass: #ILImageElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILImageElement guid: (GUID fromString: '{81e993d7-dfcf-4aaa-9bc2-38a609dbde0d}')!
ILImageElement comment: ''!
!ILImageElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILImageElement methodsFor!

alt: aString 	self attributeAt: 'alt' put: aString!

beforePrintHtml	self attributeAt: 'src' ifAbsent: [self attributeError: 'src not set'].	self attributeAt: 'alt' ifAbsentPut: [''].!

height: anInteger 	self attributeAt: 'height' put: anInteger greaseString!

ismap	self attributeAt: 'ismap' put: 'ismap'!

longdesc: aString 	self attributeAt: 'longdesc' put: aString!

src: aString 	self attributeAt: 'src' put: aString!

src: src alt: alt	self src: src; alt: alt!

tag	^'img'!

usemap: aString 	self attributeAt: 'usemap' put: aString!

width: anInteger 	self attributeAt: 'width' put: anInteger greaseString! !
!ILImageElement categoriesFor: #alt:!accessing attributes!public! !
!ILImageElement categoriesFor: #beforePrintHtml!printing!public! !
!ILImageElement categoriesFor: #height:!accessing attributes!public! !
!ILImageElement categoriesFor: #ismap!accessing attributes!public! !
!ILImageElement categoriesFor: #longdesc:!accessing attributes!public! !
!ILImageElement categoriesFor: #src:!accessing attributes!public! !
!ILImageElement categoriesFor: #src:alt:!accessing attributes!public! !
!ILImageElement categoriesFor: #tag!accessing!public! !
!ILImageElement categoriesFor: #usemap:!accessing attributes!public! !
!ILImageElement categoriesFor: #width:!accessing attributes!public! !

