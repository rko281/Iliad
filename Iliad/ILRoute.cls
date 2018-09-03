"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILRoute
	instanceVariableNames: 'path stream position'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRoute guid: (GUID fromString: '{bef29ba2-6d0f-4f3a-9a5c-a58aca05a6c0}')!
ILRoute comment: 'I represent a route, used to dispatch a request. My path is a collection of string, representing each part of the path of an url,and can be streamed with methods in the <streaming> protocol.'!
!ILRoute categoriesForClass!Iliad-Core-Dispatching! !
!ILRoute methodsFor!

atEnd	^stream atEnd!

basePath	self path ifEmpty: [^'/'].	^'/', self path first!

currentPath	"Return an absolute url of the current streamed 	path separated with delimiters, like this:	/foo/bar/baz"	| part |		^String streamContents: [:s |		1 to: self position do: [:i |			part := path at: i.			s nextPut: $/; nextPutAll: part]]!

delimiter	^self delimiters first!

delimiters	^self class delimiters!

initializeWithPath: aCollection	path := aCollection.	stream := ReadStream on: path!

next	^stream atEnd		ifTrue: [nil]		ifFalse: [position := self position + 1. stream next]!

path	^ path ifNil: [path := OrderedCollection new]!

pathString	| str |	str := WriteStream on: String new.	str nextPut: $/.	self path 		do: [:each | str nextPutAll: each] 		separatedBy: [str nextPut: self delimiter].	^str contents!

peek	^stream peek!

position	"Gemstone stream positions start at 1."	^ILPlatform current getStreamPosition: stream!

position: anInteger	"Gemstone stream positions start at 1"	^ILPlatform current setStreamPosition: anInteger of: stream!

previous	^stream position = 0		ifTrue: [nil]		ifFalse: [position := self position - 1. stream peek]!

printOn: aStream	super printOn: aStream.	aStream 		nextPut: Character space;		nextPutAll: self uriString!

reset	stream reset!

uriString	^self pathString! !
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

delimiters	^Array with: $/!

path: aCollection	^self basicNew		initializeWithPath: aCollection;		initialize;		yourself! !
!ILRoute class categoriesFor: #delimiters!accessing!public! !
!ILRoute class categoriesFor: #path:!instance creation!public! !

