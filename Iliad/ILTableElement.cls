"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILTableElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTableElement guid: (GUID fromString: '{02f30bed-2b8a-40c2-ad6c-87569619ff65}')!
ILTableElement comment: ''!
!ILTableElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILTableElement methodsFor!

aboveFrame	self frame: 'above'!

allRules	self rules: 'all'	!

belowFrame	self frame: 'below'!

border: anInteger 	self attributeAt: 'border' put: anInteger greaseString!

borderFrame	self frame: 'border'!

boxFrame	self frame: 'box'!

cellpadding: anInteger 	self attributeAt: 'cellpadding' put: anInteger greaseString!

cellspacing: anInteger 	self attributeAt: 'cellspacing' put: anInteger greaseString!

colsRules	self rules: 'cols'	!

frame: aString 	self attributeAt: 'frame' put: aString!

groupRules	self rules: 'groups'	!

hsidesFrame	self frame: 'hsides'!

lhsFrame	self frame: 'lhs'!

noRules	self rules: 'none'	!

rhsFrame	self frame: 'rhs'!

rowsRules	self rules: 'rows'	!

rules: aString 	self attributeAt: 'rules' put: aString!

summary: aString 	self attributeAt: 'summary' put: aString!

tag	^ 'table'!

voidFrame	self frame: 'void'!

vsidesFrame	self frame: 'vsides'!

width: anInteger 	self attributeAt: 'width' put: anInteger greaseString! !
!ILTableElement categoriesFor: #aboveFrame!accessing attributes!public! !
!ILTableElement categoriesFor: #allRules!accessing attributes!public! !
!ILTableElement categoriesFor: #belowFrame!accessing attributes!public! !
!ILTableElement categoriesFor: #border:!accessing attributes!public! !
!ILTableElement categoriesFor: #borderFrame!accessing attributes!public! !
!ILTableElement categoriesFor: #boxFrame!accessing attributes!public! !
!ILTableElement categoriesFor: #cellpadding:!accessing attributes!public! !
!ILTableElement categoriesFor: #cellspacing:!accessing attributes!public! !
!ILTableElement categoriesFor: #colsRules!accessing attributes!public! !
!ILTableElement categoriesFor: #frame:!accessing attributes!public! !
!ILTableElement categoriesFor: #groupRules!accessing attributes!public! !
!ILTableElement categoriesFor: #hsidesFrame!accessing attributes!public! !
!ILTableElement categoriesFor: #lhsFrame!accessing attributes!public! !
!ILTableElement categoriesFor: #noRules!accessing attributes!public! !
!ILTableElement categoriesFor: #rhsFrame!accessing attributes!public! !
!ILTableElement categoriesFor: #rowsRules!accessing attributes!public! !
!ILTableElement categoriesFor: #rules:!accessing attributes!public! !
!ILTableElement categoriesFor: #summary:!accessing attributes!public! !
!ILTableElement categoriesFor: #tag!accessing!public! !
!ILTableElement categoriesFor: #voidFrame!accessing attributes!public! !
!ILTableElement categoriesFor: #vsidesFrame!accessing attributes!public! !
!ILTableElement categoriesFor: #width:!accessing attributes!public! !

