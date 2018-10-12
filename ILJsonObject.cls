﻿"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILJsonObject
	instanceVariableNames: 'properties'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILJsonObject guid: (GUID fromString: '{8fac471d-569a-437b-bef4-918380a3eb5a}')!
ILJsonObject comment: ''!
!ILJsonObject categoriesForClass!Iliad-Core-lib-JSON! !
!ILJsonObject methodsFor!

at: key

at: key ifAbsent: aBlock

at: key put: value

doesNotUnderstand: aMessage

initialize

printJsonOn: aStream

properties
!ILJsonObject categoriesFor: #at:!accessing!public! !
!ILJsonObject categoriesFor: #at:ifAbsent:!accessing!public! !
!ILJsonObject categoriesFor: #at:put:!accessing!public! !
!ILJsonObject categoriesFor: #doesNotUnderstand:!error handling!public! !
!ILJsonObject categoriesFor: #initialize!initialization!public! !
!ILJsonObject categoriesFor: #printJsonOn:!printing!public! !
!ILJsonObject categoriesFor: #properties!accessing!public! !
