﻿"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILContext
	instanceVariableNames: 'request router session urlBuilder previousStateRegistry stateRegistry builtWidgets attributes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILContext guid: (GUID fromString: '{788b7c07-6865-4915-999e-edccfeb1347a}')!
ILContext comment: 'I store the current request context objects:
!ILContext categoriesForClass!Iliad-Core-Sessions! !
!ILContext methodsFor!

addBuiltWidget: aWidget

application

attributeAt: aKey

attributeAt: aKey put: anObject

attributes 

baseUrl

builtWidgets

previousStateRegistry

request

request: aRequest

router 

session

session: aSession

stateRegistry

urlBuilder
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
