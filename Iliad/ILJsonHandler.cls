"Filed out from Dolphin Smalltalk 7"!

ILRequestHandler subclass: #ILJsonHandler
	instanceVariableNames: 'jsonContents widgets scripts head'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILJsonHandler guid: (GUID fromString: '{e9b5e030-c2d0-4dc0-a161-f7881f66df80}')!
ILJsonHandler comment: ''!
!ILJsonHandler categoriesForClass!Iliad-Core-RequestHandlers! !
!ILJsonHandler methodsFor!

initialize	super initialize.	jsonContents := Dictionary new.	head := OrderedCollection new.	widgets := Dictionary new!

newResponse	^ILResponse ok		contentType: 'application/json'; 		yourself!

produceResponse	self respond: [:response |		self shouldRedirect 			ifTrue: [				jsonContents 					at: 'redirect'					put: self session redirectUrl greaseString]			ifFalse: [				self shouldUpdateApplication 					ifFalse: [						self updateHead.						self updateWidgets]					ifTrue: [self updateApplication]].		response nextPutAll: (String streamContents: [:stream |			jsonContents printJsonOn: stream]).		self session clearRedirectUrl.	self addNoCacheHeaderTo: response]!

shouldRedirect	^self session redirectUrl notNil!

shouldUpdateApplication	(self session dirtyWidgets includes: self application) ifTrue: [^true].	^self request hashLocationField notNil and: [		self request actionField isNil]!

updateApplication 	jsonContents 		at:'application'		put: self application build!

"protocol: private"updateHead	"We build the head for all dirty widgets, then add the missing elements to the application head and to the json answer. The head can only grow, elements are never removed from it."	| newHead applicationHead |	newHead := ILHeadElement new.	applicationHead := self application page head.	self session dirtyWidgets do: [ :each | each buildHead: newHead ].	newHead childrenDo: [ :each |		(applicationHead children includes: each) ifFalse: [			"applicationHead add: each."			head add: each ] ].	head do: [ :each | 		applicationHead add: each ].	jsonContents at: 'head' put: head	!

updateWidgets	self session dirtyWidgets do: [:each || e |		e := each build.		widgets at: each id put: e].	jsonContents 		at: 'widgets' put: widgets! !
!ILJsonHandler categoriesFor: #initialize!initialization!public! !
!ILJsonHandler categoriesFor: #newResponse!private! !
!ILJsonHandler categoriesFor: #produceResponse!public!responding! !
!ILJsonHandler categoriesFor: #shouldRedirect!public!testing! !
!ILJsonHandler categoriesFor: #shouldUpdateApplication!public!testing! !
!ILJsonHandler categoriesFor: #updateApplication!private! !
!ILJsonHandler categoriesFor: #updateHead!private! !
!ILJsonHandler categoriesFor: #updateWidgets!private! !

