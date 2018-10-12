"Filed out from Dolphin Smalltalk 7"!

ILFileBrowserListWidget subclass: #ILFileBrowserSearchableWidget
	instanceVariableNames: 'resultsWidget searchFilename infoWidget'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFileBrowserSearchableWidget guid: (GUID fromString: '{f68e3d1a-2549-46c2-ab75-c2caa29a52f5}')!
ILFileBrowserSearchableWidget comment: ''!
!ILFileBrowserSearchableWidget categoriesForClass!Iliad-More-UI! !
!ILFileBrowserSearchableWidget methodsFor!

contents	^[:e |		e h1: self title.		e br.		e form class: 'search_class';			build: [:form |				form text: 'Search:  '.				form input					beSubmitOnEvent: 'keyup';					action: [:val | self searchFilename: val].				form br; br.				form build: self resultsWidget].		e build: self infoWidget ]!

infoWidget	" Private - Answer an anonymous widget which renders the files in search root "	^ infoWidget ifNil: [		infoWidget := self widgetFor: [ : widget | 			widget style: 'float: left; text-align: left; width: 40%; margin-left: 5em;'.			self renderFilenamesOf: self rootDirectory on: widget ul ] ] !

infoWidget: anObject	^ infoWidget := anObject!

initialize	super initialize.	resultsWidget := nil.!

resultsWidget 	^ resultsWidget ifNil: [		resultsWidget := self widgetFor: [ : widget |			(self search: self searchFilename) do: [ : each | 				widget a					class: 'results';					onClickDo: [ self selectedDirectory: each ];					text: each basename.				widget br ] ] ]!

resultsWidget: anObject	resultsWidget := anObject!

search: aString	^ (aString isNil or: [aString isEmpty])		ifTrue: [ self rootDirectories ]		ifFalse: [ self rootDirectories select: [: each | each basename beginsWith: aString ] ]!

searchFilename	^searchFilename ifNil: [searchFilename := '']	!

searchFilename: anObject	searchFilename := anObject.	self resultsWidget markDirty	! !
!ILFileBrowserSearchableWidget categoriesFor: #contents!building!public! !
!ILFileBrowserSearchableWidget categoriesFor: #infoWidget!accessing!public! !
!ILFileBrowserSearchableWidget categoriesFor: #infoWidget:!accessing!public! !
!ILFileBrowserSearchableWidget categoriesFor: #initialize!initialize!public! !
!ILFileBrowserSearchableWidget categoriesFor: #resultsWidget!accessing!public! !
!ILFileBrowserSearchableWidget categoriesFor: #resultsWidget:!accessing!public! !
!ILFileBrowserSearchableWidget categoriesFor: #search:!actions!public! !
!ILFileBrowserSearchableWidget categoriesFor: #searchFilename!accessing!public! !
!ILFileBrowserSearchableWidget categoriesFor: #searchFilename:!accessing!public! !

