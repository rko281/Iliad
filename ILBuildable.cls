"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILBuildable
	instanceVariableNames: 'attributes children'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILBuildable guid: (GUID fromString: '{1bc6d905-23cc-4562-86f1-40653c2795d8}')!
ILBuildable comment: 'I am an abstract buildable object. My subclasses must override #buildContents method, which should return an instance of a subclass of ILElement.'!
!ILBuildable categoriesForClass!Iliad-Core-Buildables! !
!ILBuildable methodsFor!

attributeAt: aSymbol	^ self attributes at: aSymbol ifAbsent: [ nil ]!

attributeAt: aSymbol ifAbsentPut: aBlock	^ self attributes at: aSymbol ifAbsentPut: aBlock!

attributeAt: aSymbol put: anObject	^ self attributes at: aSymbol put: anObject!

attributes	^ attributes ifNil: [attributes := Dictionary new]!

build	self withChildrenRegistrationDo: [		^ self buildContents ]!

buildContents	"Override this method in subclasses.	It must answer an ILElement"	self subclassResponsibility!

buildOn: anElement	anElement add: self build!

children	^ children 		ifNil: [ children := OrderedCollection new ]!

printHtmlString	^ String streamContents: [ : str |		self build printHtmlOn: str ]!

redirectTo: anUrlString	"Abort all other request handling.	Redirect to anUrlString"	self session		redirectUrl: anUrlString;		redirect!

redirectToApplication: aClass	"Abort all other request handling.	Redirect to the index method of <aClass>"		self redirectToApplication: aClass controller: '' !

redirectToApplication: aClass controller: aString	" Abort all other request handling.	Redirect to the controller named <aString> of <aClass>"		self redirectTo: 		(self context urlBuilder urlFor: 			(String streamContents: [ : stream | 				stream					nextPutAll: aClass path;					nextPut: $/;					nextPutAll: aString ])) greaseString !

redirectToCurrentController	"Abort all other request handling.	Redirect to the current controller method"		self redirectTo: 		(self context urlBuilder urlFor: self router route pathString)			greaseString!

redirectToIndex	"Abort all other request handling.	Redirect to the index method of this class"		self redirectToLocal: 'index'!

redirectToLocal: aString	"Abort all other request handling.	Make a redirection to another controller method in this application"		self 		redirectToApplication: self application class		controller: aString!

registerChild: aBuildable	(self children includes: aBuildable) 		ifFalse: [ self children add: aBuildable ]!

respondOn: aResponse	self build respondOn: aResponse!

router	^ self context router!

send: aSymbol	^ self send: aSymbol to: self!

send: aSymbol to: anObject	^ self 		send: aSymbol 		to: anObject 		arguments: #()!

send: aSymbol to: anObject arguments: anArray	^ GRDelayedSend		receiver: anObject		selector: aSymbol		arguments: anArray!

withChildrenRegistrationDo: aBlock	ILCurrentBuildable value 		ifNotNil: [ : parent | parent registerChild: self ].	ILCurrentBuildable use: self during: aBlock! !
!ILBuildable categoriesFor: #attributeAt:!accessing attributes!public! !
!ILBuildable categoriesFor: #attributeAt:ifAbsentPut:!accessing attributes!public! !
!ILBuildable categoriesFor: #attributeAt:put:!accessing attributes!public! !
!ILBuildable categoriesFor: #attributes!accessing attributes!public! !
!ILBuildable categoriesFor: #build!building!public! !
!ILBuildable categoriesFor: #buildContents!building!public! !
!ILBuildable categoriesFor: #buildOn:!building!public! !
!ILBuildable categoriesFor: #children!accessing!public! !
!ILBuildable categoriesFor: #printHtmlString!printing!public! !
!ILBuildable categoriesFor: #redirectTo:!public!redirecting! !
!ILBuildable categoriesFor: #redirectToApplication:!public!redirecting! !
!ILBuildable categoriesFor: #redirectToApplication:controller:!public!redirecting! !
!ILBuildable categoriesFor: #redirectToCurrentController!public!redirecting! !
!ILBuildable categoriesFor: #redirectToIndex!public!redirecting! !
!ILBuildable categoriesFor: #redirectToLocal:!public!redirecting! !
!ILBuildable categoriesFor: #registerChild:!building!public! !
!ILBuildable categoriesFor: #respondOn:!converting!public! !
!ILBuildable categoriesFor: #router!accessing!public! !
!ILBuildable categoriesFor: #send:!actions!public! !
!ILBuildable categoriesFor: #send:to:!actions!public! !
!ILBuildable categoriesFor: #send:to:arguments:!actions!public! !
!ILBuildable categoriesFor: #withChildrenRegistrationDo:!private! !

