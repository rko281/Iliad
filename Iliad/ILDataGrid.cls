﻿"Filed out from Dolphin Smalltalk 7"!

ILUIWidget subclass: #ILDataGrid
	instanceVariableNames: 'items columnNames builders headerClass footerClass rowClass caption'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILDataGrid guid: (GUID fromString: '{58cbf1c9-ccd1-42fd-985f-3c776857abdf}')!
ILDataGrid comment: ''!
!ILDataGrid categoriesForClass!Iliad-More-UI! !
!ILDataGrid methodsFor!

body

builders

caption 

caption: aString

column: anInteger buildContents: aBlock

columnNames

columnNames: anObject

contents

cssClass

footerClass

headerClass

items

items: anObject

rowClass

rowForItem: anItem even: aBoolean

visibleItemsDo: aBlock
!ILDataGrid categoriesFor: #body!building!public! !
!ILDataGrid categoriesFor: #builders!accessing!public! !
!ILDataGrid categoriesFor: #caption!accessing!public! !
!ILDataGrid categoriesFor: #caption:!accessing!public! !
!ILDataGrid categoriesFor: #column:buildContents:!accessing!public! !
!ILDataGrid categoriesFor: #columnNames!accessing!public! !
!ILDataGrid categoriesFor: #columnNames:!accessing!public! !
!ILDataGrid categoriesFor: #contents!building!public! !
!ILDataGrid categoriesFor: #cssClass!accessing!public! !
!ILDataGrid categoriesFor: #footerClass!building!public! !
!ILDataGrid categoriesFor: #headerClass!building!public! !
!ILDataGrid categoriesFor: #items!accessing!public! !
!ILDataGrid categoriesFor: #items:!accessing!public! !
!ILDataGrid categoriesFor: #rowClass!building!public! !
!ILDataGrid categoriesFor: #rowForItem:even:!building!public! !
!ILDataGrid categoriesFor: #visibleItemsDo:!building!public! !

!ILDataGrid class methodsFor!

defaultFooterClass

defaultHeaderClass

defaultRowClass
!ILDataGrid class categoriesFor: #defaultFooterClass!defaults!public! !
!ILDataGrid class categoriesFor: #defaultHeaderClass!defaults!public! !
!ILDataGrid class categoriesFor: #defaultRowClass!defaults!public! !
