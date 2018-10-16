"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILContext
	instanceVariableNames: 'request router session urlBuilder previousStateRegistry stateRegistry builtWidgets attributes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILContext guid: (GUID fromString: '{788b7c07-6865-4915-999e-edccfeb1347a}')!
ILContext comment: 'I store the current request context objects:- the router- the session- the request itselfI can be accessed through ILObject>>context'!
!ILContext categoriesForClass!Iliad-Core-Sessions! !
!ILContext methodsFor!

addBuiltWidget: aWidget	self builtWidgets add: aWidget!

application	^self router application!

attributeAt: aKey	^self attributes at: aKey ifAbsent: [nil]!

attributeAt: aKey put: anObject	self attributes at: aKey put: anObject!

attributes 	^attributes ifNil: [attributes := Dictionary new]!

baseUrl	^self urlBuilder baseUrl!

builtWidgets	^builtWidgets ifNil: [builtWidgets := OrderedCollection new]!

previousStateRegistry	^previousStateRegistry ifNil: [		previousStateRegistry := (self session stateRegistryAt: self request stateField) copy]!

request	^request!

request: aRequest	request := aRequest!

router 	^router ifNil: [router := ILRouter new]!

session	^session!

session: aSession	session := aSession!

stateRegistry	^stateRegistry ifNil: [		stateRegistry := (self session stateRegistryAt: self request stateField)			ifNil: [self session newStateRegistry]]!

urlBuilder	^urlBuilder ifNil: [urlBuilder := ILUrlBuilder new]! !
!ILContext categoriesFor: #addBuiltWidget:!accessing!public! !
!ILContext categoriesFor: #application!accessing!public! !
!ILContext categoriesFor: #attributeAt:!accessing!public! !
!ILContext categoriesFor: #attributeAt:put:!accessing!public! !
!ILContext categoriesFor: #attributes!accessing!public! !
!ILContext categoriesFor: #baseUrl!accessing!public! !
!ILContext categoriesFor: #builtWidgets!accessing!public! !
!ILContext categoriesFor: #previousStateRegistry!accessing!public! !
!ILContext categoriesFor: #request!accessing!public! !
!ILContext categoriesFor: #request:!accessing!public! !
!ILContext categoriesFor: #router!accessing!public! !
!ILContext categoriesFor: #session!accessing!public! !
!ILContext categoriesFor: #session:!accessing!public! !
!ILContext categoriesFor: #stateRegistry!accessing!public! !
!ILContext categoriesFor: #urlBuilder!accessing!public! !

