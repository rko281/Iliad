"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ILFileProxy
	instanceVariableNames: 'filename contentType contents timestamps fileName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFileProxy guid: (GUID fromString: '{eb368206-d770-4795-897e-b7b49be1690f}')!
ILFileProxy comment: ''!
!ILFileProxy categoriesForClass!Iliad-Core-lib-HTTP! !
!ILFileProxy methodsFor!

contents	^contents!

contents: anObject	contents := anObject!

contentType	^contentType!

contentType: anObject	contentType := anObject!

createdTimestamp	^self timestampsAt: #created!

fileName	^fileName!

fileName: anObject	fileName := anObject!

initialize	super initialize.	self setCreatedTimestamp !

setCreatedTimestamp	self timestampsAt: #created put: DateAndTime now!

timestamps	^timestamps ifNil: [timestamps := Dictionary new]!

timestampsAt: aSymbol	^self timestamps at: aSymbol ifAbsent: [nil]!

timestampsAt: aSymbol put: aTimestamp	^self timestamps at: aSymbol put: aTimestamp!

writeToFile	(FileStream fileNamed: self fileName)		binary;		nextPutAll: self contents; 		close! !
!ILFileProxy categoriesFor: #contents!accessing!public! !
!ILFileProxy categoriesFor: #contents:!accessing!public! !
!ILFileProxy categoriesFor: #contentType!accessing!public! !
!ILFileProxy categoriesFor: #contentType:!accessing!public! !
!ILFileProxy categoriesFor: #createdTimestamp!accessing!public! !
!ILFileProxy categoriesFor: #fileName!accessing!public! !
!ILFileProxy categoriesFor: #fileName:!accessing!public! !
!ILFileProxy categoriesFor: #initialize!initialization!public! !
!ILFileProxy categoriesFor: #setCreatedTimestamp!initialization!public! !
!ILFileProxy categoriesFor: #timestamps!accessing!public! !
!ILFileProxy categoriesFor: #timestampsAt:!accessing!public! !
!ILFileProxy categoriesFor: #timestampsAt:put:!accessing!public! !
!ILFileProxy categoriesFor: #writeToFile!public!writing! !

