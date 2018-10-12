﻿"Filed out from Dolphin Smalltalk 7"!

ILWidget subclass: #ILClassSearchWidget
	instanceVariableNames: 'resultsWidget searchText selectedClass infoWidget selectedMessage codeWidget'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILClassSearchWidget guid: (GUID fromString: '{a91d325b-0999-404b-877b-0f8c4f4686c5}')!
ILClassSearchWidget comment: ''!
!ILClassSearchWidget categoriesForClass!Iliad-More-Examples! !
!ILClassSearchWidget methodsFor!

codeWidget

contents

infoWidget

renderInstanceMethodsOf: aClass on: aListContainer

renderSubclassesOf: aClass on: aContainer

renderSuperClassOf: aClass on: aContainer

resultsWidget 

search: aString


searchText

searchText: aString

selectedClass

selectedClass: aClass

selectedInstanceMethod: aSelector

	self selectedMessage: aSelector!

selectedMessage

selectedMessage: aSymbol

sortedMethodsForClass: aClass
!ILClassSearchWidget categoriesFor: #codeWidget!accessing!public! !
!ILClassSearchWidget categoriesFor: #contents!building!public! !
!ILClassSearchWidget categoriesFor: #infoWidget!accessing!public! !
!ILClassSearchWidget categoriesFor: #renderInstanceMethodsOf:on:!public!rendering! !
!ILClassSearchWidget categoriesFor: #renderSubclassesOf:on:!public!rendering! !
!ILClassSearchWidget categoriesFor: #renderSuperClassOf:on:!public!rendering! !
!ILClassSearchWidget categoriesFor: #resultsWidget!accessing!public! !
!ILClassSearchWidget categoriesFor: #search:!execution!public! !
!ILClassSearchWidget categoriesFor: #searchText!accessing!public! !
!ILClassSearchWidget categoriesFor: #searchText:!actions!public! !
!ILClassSearchWidget categoriesFor: #selectedClass!accessing!public! !
!ILClassSearchWidget categoriesFor: #selectedClass:!actions!public! !
!ILClassSearchWidget categoriesFor: #selectedInstanceMethod:!public!rendering! !
!ILClassSearchWidget categoriesFor: #selectedMessage!accessing!public! !
!ILClassSearchWidget categoriesFor: #selectedMessage:!actions!public! !
!ILClassSearchWidget categoriesFor: #sortedMethodsForClass:!public!rendering! !
