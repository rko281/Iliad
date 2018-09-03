﻿"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILRoute
	instanceVariableNames: 'path stream position'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRoute guid: (GUID fromString: '{bef29ba2-6d0f-4f3a-9a5c-a58aca05a6c0}')!
ILRoute comment: 'I represent a route, used to dispatch a request. 
!ILRoute categoriesForClass!Iliad-Core-Dispatching! !
!ILRoute methodsFor!

atEnd

basePath

currentPath

delimiter

delimiters

initializeWithPath: aCollection

next

path

pathString

peek

position

position: anInteger

previous

printOn: aStream

reset

uriString
!ILRoute categoriesFor: #atEnd!public!streaming! !
!ILRoute categoriesFor: #basePath!accessing!public! !
!ILRoute categoriesFor: #currentPath!iterating!public! !
!ILRoute categoriesFor: #delimiter!accessing!public! !
!ILRoute categoriesFor: #delimiters!accessing!public! !
!ILRoute categoriesFor: #initializeWithPath:!initialization!public! !
!ILRoute categoriesFor: #next!public!streaming! !
!ILRoute categoriesFor: #path!accessing!public! !
!ILRoute categoriesFor: #pathString!converting!public! !
!ILRoute categoriesFor: #peek!public!streaming! !
!ILRoute categoriesFor: #position!public!streaming! !
!ILRoute categoriesFor: #position:!public!streaming! !
!ILRoute categoriesFor: #previous!public!streaming! !
!ILRoute categoriesFor: #printOn:!printing!public! !
!ILRoute categoriesFor: #reset!public!streaming! !
!ILRoute categoriesFor: #uriString!converting!public! !

!ILRoute class methodsFor!

delimiters

path: aCollection
!ILRoute class categoriesFor: #delimiters!accessing!public! !
!ILRoute class categoriesFor: #path:!instance creation!public! !
