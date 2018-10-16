"Filed out from Dolphin Smalltalk 7"!

ILWidget subclass: #ILClassSearchWidget
	instanceVariableNames: 'resultsWidget searchText selectedClass infoWidget selectedMessage codeWidget'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILClassSearchWidget guid: (GUID fromString: '{a91d325b-0999-404b-877b-0f8c4f4686c5}')!
ILClassSearchWidget comment: ''!
!ILClassSearchWidget categoriesForClass!Iliad-More-Examples! !
!ILClassSearchWidget methodsFor!

codeWidget	^codeWidget ifNil: [codeWidget := self widgetFor: [:widget | 			widget style: 'float: left; text-align: left; width: 40%; margin-left: 5em;'.			self selectedMessage ifNotNil: [:aSymbol |				widget pre text: (self selectedClass decompile: aSymbol)]]]!

contents	^[:e |		e h1: 'Search Smalltalk classes'.		e br.		e form class: 'search_class';			build: [:form |				form text: 'Search:  '.				form input					beSubmitOnEvent: 'keyup';					action: [:val | self searchText: val].				form build: self resultsWidget].		e build: self infoWidget.		e build: self codeWidget]!

infoWidget	^infoWidget ifNil: [infoWidget := self widgetFor: [:widget | 			widget style: 'float: left; text-align: left; width: 40%; margin-left: 5em;'.			self selectedClass ifNotNil: [:aClass | 				widget h2: aClass name.				self renderSuperClassOf: aClass on: widget div.				self renderSubclassesOf: aClass on: widget div.				widget p text: aClass comment.				self renderInstanceMethodsOf: aClass on: widget ul]]]!

renderInstanceMethodsOf: aClass on: aListContainer	(self sortedMethodsForClass: aClass)		do: [:each |			aListContainer li				onClickDo: [self selectedInstanceMethod: each];				text: each asString;				text: ' (';				text: (aClass whichCategoryIncludesSelector: each);				text: ')']!

renderSubclassesOf: aClass on: aContainer	aContainer text: 'subclass(es): '.	(aClass allSubclasses asSortedCollection: [:a :b | a name <= b name])		do: [:each | 			aContainer a				onClickDo: [self selectedClass: each];				text: each name ]		separatedBy: [aContainer text: ', ']!

renderSuperClassOf: aClass on: aContainer	aContainer text: 'superClass: '.	aClass superclass 		ifNil: [ aContainer text: 'nil' ]		ifNotNil: [ : supa |			aContainer a 				onClickDo: [self selectedClass: supa];				text: supa name ]!

resultsWidget 	^resultsWidget ifNil: [resultsWidget := self widgetFor: [:widget |			(self search: self searchText) do: [:each | 				widget a					class: 'results';					onClickDo: [self selectedClass: each];					text: each name.				widget br]]]!

search: aString
	^(aString isNil or: [aString isEmpty])		ifTrue: [#()]		ifFalse: [			Object allSubclasses  				select: [:each | 					each isMetaclass not and: [each name beginsWith: aString]]]!

searchText	^searchText ifNil: [searchText := '']	!

searchText: aString	searchText := aString.	self resultsWidget markDirty		!

selectedClass	^selectedClass!

selectedClass: aClass	selectedClass := aClass.	self infoWidget markDirty.	self selectedMessage: nil!

selectedInstanceMethod: aSelector

	self selectedMessage: aSelector!

selectedMessage	^selectedMessage!

selectedMessage: aSymbol	selectedMessage := aSymbol.	self codeWidget markDirty!

sortedMethodsForClass: aClass	^ aClass methodDictionary keys asSortedCollection! !
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

