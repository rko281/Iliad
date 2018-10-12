﻿"Filed out from Dolphin Smalltalk 7"!

ILWidget subclass: #ILApplication
	instanceVariableNames: 'model page'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'selectorFilter'!
ILApplication guid: (GUID fromString: '{0766f3d1-d5fa-46a0-bb01-4f4fc673ff00}')!
ILApplication comment: 'I am the implementation of an application.
!ILApplication categoriesForClass!Iliad-Core-Buildables! !
!ILApplication methodsFor!

allowedSelector: aSelector

contents

convertSelector: aString

defaultPageClass

dispatch

dispatchOn: aMethod

dispatchOverride

index

model

model: anObject

newRootElement 

page

request

respondOn: aResponse

returnResponse: aResponse

rootElementClass 

selectorFilter

updateBaseUrl: anUrl

updateFromRoute: aRoute

updatePage: aPage
	"aPage head javascript src: '/javascripts/jquery-1.12.4.min.js'."

widgetFor: aBuildable
!ILApplication categoriesFor: #allowedSelector:!dispatching!public! !
!ILApplication categoriesFor: #contents!building!public! !
!ILApplication categoriesFor: #convertSelector:!converting!public! !
!ILApplication categoriesFor: #defaultPageClass!defaults!public! !
!ILApplication categoriesFor: #dispatch!dispatching!public! !
!ILApplication categoriesFor: #dispatchOn:!dispatching!public! !
!ILApplication categoriesFor: #dispatchOverride!dispatching!public! !
!ILApplication categoriesFor: #index!controllers!public! !
!ILApplication categoriesFor: #model!accessing!public! !
!ILApplication categoriesFor: #model:!accessing!public! !
!ILApplication categoriesFor: #newRootElement!private! !
!ILApplication categoriesFor: #page!accessing!public! !
!ILApplication categoriesFor: #request!accessing!public! !
!ILApplication categoriesFor: #respondOn:!converting!public! !
!ILApplication categoriesFor: #returnResponse:!converting!public! !
!ILApplication categoriesFor: #rootElementClass!defaults!public! !
!ILApplication categoriesFor: #selectorFilter!accessing!public! !
!ILApplication categoriesFor: #updateBaseUrl:!public!updating! !
!ILApplication categoriesFor: #updateFromRoute:!public!updating! !
!ILApplication categoriesFor: #updatePage:!public!updating! !
!ILApplication categoriesFor: #widgetFor:!accessing!public! !

!ILApplication class methodsFor!

absolutePath

categoryOfElement: aSelector inClassOrSuperclass: aClass

defaultSelectorFilter

isRootApplication

path

selectorFilter

selectorFilter: aBlock
!ILApplication class categoriesFor: #absolutePath!accessing!public! !
!ILApplication class categoriesFor: #categoryOfElement:inClassOrSuperclass:!private! !
!ILApplication class categoriesFor: #defaultSelectorFilter!defaults!public! !
!ILApplication class categoriesFor: #isRootApplication!public!testing! !
!ILApplication class categoriesFor: #path!accessing!public! !
!ILApplication class categoriesFor: #selectorFilter!accessing!public! !
!ILApplication class categoriesFor: #selectorFilter:!accessing!public! !
