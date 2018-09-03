"Filed out from Dolphin Smalltalk 7"!

ILTableElementElement subclass: #ILTableCellElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTableCellElement guid: (GUID fromString: '{fcc30be5-d604-4525-b7a3-b86706910447}')!
ILTableCellElement comment: ''!
!ILTableCellElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILTableCellElement methodsFor!

abbr: aString 	self attributeAt: 'abbr' put: aString!

axis: aString 	self attributeAt: 'axis' put: aString!

colgroupScope	self scope: 'colgroup'!

colScope	self scope: 'col'!

colspan: anInteger 	self attributeAt: 'colspan' put: anInteger greaseString!

headers: aCollection 	| headers |	headers := WriteStream on: String new.	aCollection 		do: [:each | headers nextPutAll: each]		separatedBy: [headers nextPutAll: ','].	self attributeAt: 'headers' put: headers contents!

rowgroupScope	self scope: 'rowgroup'!

rowScope	self scope: 'row'!

rowspan: anInteger 	self attributeAt: 'rowspan' put: anInteger greaseString!

scope: aString 	self attributeAt: 'scope' put: aString! !
!ILTableCellElement categoriesFor: #abbr:!accessing attributes/table!public! !
!ILTableCellElement categoriesFor: #axis:!accessing attributes/table!public! !
!ILTableCellElement categoriesFor: #colgroupScope!accessing attributes/table!public! !
!ILTableCellElement categoriesFor: #colScope!accessing attributes/table!public! !
!ILTableCellElement categoriesFor: #colspan:!accessing attributes/table!public! !
!ILTableCellElement categoriesFor: #headers:!accessing attributes/table!public! !
!ILTableCellElement categoriesFor: #rowgroupScope!accessing attributes/table!public! !
!ILTableCellElement categoriesFor: #rowScope!accessing attributes/table!public! !
!ILTableCellElement categoriesFor: #rowspan:!accessing attributes/table!public! !
!ILTableCellElement categoriesFor: #scope:!accessing attributes/table!public! !

