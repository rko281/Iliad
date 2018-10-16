﻿"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILBuildable
	instanceVariableNames: 'attributes children'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILBuildable guid: (GUID fromString: '{1bc6d905-23cc-4562-86f1-40653c2795d8}')!
ILBuildable comment: 'I am an abstract buildable object. 
!ILBuildable categoriesForClass!Iliad-Core-Buildables! !
!ILBuildable methodsFor!

attributeAt: aSymbol

attributeAt: aSymbol ifAbsentPut: aBlock

attributeAt: aSymbol put: anObject

attributes

build

buildContents

buildOn: anElement

children

printHtmlString

redirectTo: anUrlString

redirectToApplication: aClass

redirectToApplication: aClass controller: aString

redirectToCurrentController

redirectToIndex

redirectToLocal: aString

registerChild: aBuildable

respondOn: aResponse

router

send: aSymbol

send: aSymbol to: anObject

send: aSymbol to: anObject arguments: anArray

withChildrenRegistrationDo: aBlock
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
