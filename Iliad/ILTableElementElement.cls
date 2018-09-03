"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILTableElementElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTableElementElement guid: (GUID fromString: '{0e7a803c-678f-4d3d-9e28-13f9f4d221c8}')!
ILTableElementElement comment: ''!
!ILTableElementElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILTableElementElement methodsFor!

align: aString 	self attributeAt: 'align' put: aString!

baselineValign	self valign: 'baseline'!

bottomValign	self valign: 'bottom'!

centerAlign	self align: 'center'!

character: aCharacter	| alignment |	alignment := self attributeAt: 'align' ifAbsent: ['left'].	(alignment = 'char') ifFalse: [self attributeError: 'Alignment must be "char"'].	self attributeAt: 'char' put: aCharacter greaseString!

characterAlign	self align: 'char'!

charoff: anInteger 	self attributeAt: 'char'		ifAbsent: [self attributeError: 'Must specify alignment character'].	self attributeAt: 'charoff' put: anInteger greaseString!

justifyAlign	self align: 'justify'!

leftAlign	self align: 'left'!

middleValign	self valign: 'middle'!

rightAlign	self align: 'right'!

topValign	self valign: 'top'!

valign: aString 	self attributeAt: 'valign' put: aString! !
!ILTableElementElement categoriesFor: #align:!accessing attributes/table!public! !
!ILTableElementElement categoriesFor: #baselineValign!accessing attributes/table!public! !
!ILTableElementElement categoriesFor: #bottomValign!accessing attributes/table!public! !
!ILTableElementElement categoriesFor: #centerAlign!accessing attributes/table!public! !
!ILTableElementElement categoriesFor: #character:!accessing attributes/table!public! !
!ILTableElementElement categoriesFor: #characterAlign!accessing attributes/table!public! !
!ILTableElementElement categoriesFor: #charoff:!accessing attributes/table!public! !
!ILTableElementElement categoriesFor: #justifyAlign!accessing attributes/table!public! !
!ILTableElementElement categoriesFor: #leftAlign!accessing attributes/table!public! !
!ILTableElementElement categoriesFor: #middleValign!accessing attributes/table!public! !
!ILTableElementElement categoriesFor: #rightAlign!accessing attributes/table!public! !
!ILTableElementElement categoriesFor: #topValign!accessing attributes/table!public! !
!ILTableElementElement categoriesFor: #valign:!accessing attributes/table!public! !

