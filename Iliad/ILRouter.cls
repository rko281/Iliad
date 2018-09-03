"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILRouter
	instanceVariableNames: 'route hashRoute application controller'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRouter guid: (GUID fromString: '{779c18e9-0f14-4741-9785-0095411a7492}')!
ILRouter comment: ''!
!ILRouter categoriesForClass!Iliad-Core-Dispatching! !
!ILRouter methodsFor!

application 	^application!

applicationClass	| applicationClass |	[ self route atEnd ]		whileFalse: [ self route next.			applicationClass := ILApplication allSubclasses				detect: [ :each | each absolutePath = self route currentPath ]				ifNone: [ applicationClass ] ].	^ applicationClass		ifNil: [ self route reset.			ILApplication allSubclasses				detect: [ :each | each isRootApplication ]				ifNone: [ nil ] ]!

applicationPathSize	^ self application 		ifNil: [ 0 ]		ifNotNil: [			(ILUrl absolute: self application class path) path size ]!

controller 	^controller!

dispatchRequest 	self shouldRedirect ifTrue: [		ILRedirectHandler new handleRequest].	self application isNil 		ifTrue: [ILFileHandler new handleRequest] 		ifFalse: [ILApplicationHandler new handleRequest]!

hashRoute	| hash |	hash := self request hashLocationField ifNil: [''].	^hashRoute ifNil: [hashRoute := ILRoute path: (hash findTokens: '/')]!

initialize	super initialize.	self 		setApplication;		setRoutePosition;		updateApplicationFromRoute!

route	^route ifNil: [route := ILRoute path: self request url path]!

setApplication 	application := self applicationClass		ifNotNil: [:applicationClass |			self session applications				at: applicationClass 				ifAbsentPut: [applicationClass new]]!

setRoutePosition 	self application ifNotNil: [		self route position: 			(self applicationPathSize - 1 max: 0)]!

shouldRedirect 	self request isTypeOfRequestForJson ifTrue: [^false].	^self request sessionField notNil and: [self request hasCookies]!

updateApplicationFromRoute 	"Set the route to the next segment. (used later as the controller)"	self applicationPathSize > 0 ifTrue: [		self route next ].	self application ifNotNil: [		self application updateFromRoute: self route].! !
!ILRouter categoriesFor: #application!accessing!public! !
!ILRouter categoriesFor: #applicationClass!private! !
!ILRouter categoriesFor: #applicationPathSize!private! !
!ILRouter categoriesFor: #controller!accessing!public! !
!ILRouter categoriesFor: #dispatchRequest!dispatching!public! !
!ILRouter categoriesFor: #hashRoute!accessing!public! !
!ILRouter categoriesFor: #initialize!initialization!public! !
!ILRouter categoriesFor: #route!accessing!public! !
!ILRouter categoriesFor: #setApplication!private! !
!ILRouter categoriesFor: #setRoutePosition!private! !
!ILRouter categoriesFor: #shouldRedirect!public!testing! !
!ILRouter categoriesFor: #updateApplicationFromRoute!public!updating! !

