"Filed out from Dolphin Smalltalk 7"!

ILLinkableElement subclass: #ILLinkElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILLinkElement guid: (GUID fromString: '{00b52b1c-fd1c-4b15-9f87-6917cae72bc0}')!
ILLinkElement comment: ''!
!ILLinkElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILLinkElement methodsFor!

allMedia	self media: 'all'!

auralMedia	self media: 'aural'!

brailleMedia	self media: 'braille'!

handheldMedia	self media: 'handheld'!

media: aString 	self attributeAt: 'media' put: aString!

printHtmlOn: aStream	" Private - See superimplementor's comment "		aStream 		nextPut: $<;		nextPutAll: self tag.	self attributes 		associationsDo: [ : each | self printAttribute: each on: aStream ].	aStream nextPutAll: '/>'!

printMedia	self media: 'print'!

projectionMedia	self media: 'projection'!

screenMedia	self media: 'screen'!

tag	^'link'!

ttyMedia	self media: 'tty'!

tvMedia	self media: 'tv'!

type: aString 	self attributeAt: 'type' put: aString! !
!ILLinkElement categoriesFor: #allMedia!accessing attributes!public! !
!ILLinkElement categoriesFor: #auralMedia!accessing attributes!public! !
!ILLinkElement categoriesFor: #brailleMedia!accessing attributes!public! !
!ILLinkElement categoriesFor: #handheldMedia!accessing attributes!public! !
!ILLinkElement categoriesFor: #media:!accessing attributes!public! !
!ILLinkElement categoriesFor: #printHtmlOn:!printing!public! !
!ILLinkElement categoriesFor: #printMedia!accessing attributes!public! !
!ILLinkElement categoriesFor: #projectionMedia!accessing attributes!public! !
!ILLinkElement categoriesFor: #screenMedia!accessing attributes!public! !
!ILLinkElement categoriesFor: #tag!accessing!public! !
!ILLinkElement categoriesFor: #ttyMedia!accessing attributes!public! !
!ILLinkElement categoriesFor: #tvMedia!accessing attributes!public! !
!ILLinkElement categoriesFor: #type:!accessing attributes!public! !

