﻿"Filed out from Dolphin Smalltalk 7"!

ILBuildable subclass: #ILWidget
	instanceVariableNames: 'id state decorator owner dependentWidgets'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILWidget guid: (GUID fromString: '{7e853109-9bcd-4c4b-8f27-14bc03520490}')!
ILWidget comment: 'I am a stateful graphical component. 
!ILWidget categoriesForClass!Iliad-Core-Buildables! !
!ILWidget methodsFor!

addDependentWidget: aWidget

answer

answer: anAnswer

append: aWidget

append: aWidget onAnswer: aBlock

beDirty

buildContents

buildHead: aHead

confirm: aString ifTrue: aBlock

confirm: aString ifTrue: aBlock ifFalse: anotherBlock

contents

decorateWith: aDecorator

decorateWith: aDecorator during: aBlock

decoratorsDo: aBlock

dependantWidget

fullContents 

handleAnswer: anAnswer

id

id: aString

inform: aString

initialize

markDirty

newRootElement

owner

owner: aWidget

postCopy

prepend: aWidget

prepend: aWidget onAnswer: aBlock

printJsonOn: aStream

registerState

removeDecorator: aDecorator

removeDependentWidget: aWidget

retrieveControl

rootElementClass

scripts

show: aWidget

show: aWidget onAnswer: aBlock

show: aWidget onAnswer: aBlock delegator: aDelegator

state

stateRegistry

styles

updateHead: aHead

widget

widgetFor: aBuildable

widgetFor: aBuildable

withDecoratorsDo: aBlock
!ILWidget categoriesFor: #addDependentWidget:!public!states! !
!ILWidget categoriesFor: #answer!control flow!public! !
!ILWidget categoriesFor: #answer:!control flow!public! !
!ILWidget categoriesFor: #append:!control flow!public! !
!ILWidget categoriesFor: #append:onAnswer:!control flow!public! !
!ILWidget categoriesFor: #beDirty!private! !
!ILWidget categoriesFor: #buildContents!building!public! !
!ILWidget categoriesFor: #buildHead:!building!public! !
!ILWidget categoriesFor: #confirm:ifTrue:!control flow!public! !
!ILWidget categoriesFor: #confirm:ifTrue:ifFalse:!control flow!public! !
!ILWidget categoriesFor: #contents!building!public! !
!ILWidget categoriesFor: #decorateWith:!decorators!public! !
!ILWidget categoriesFor: #decorateWith:during:!decorators!public! !
!ILWidget categoriesFor: #decoratorsDo:!decorators!public! !
!ILWidget categoriesFor: #dependantWidget!accessing!public! !
!ILWidget categoriesFor: #fullContents!building!public! !
!ILWidget categoriesFor: #handleAnswer:!control flow!public! !
!ILWidget categoriesFor: #id!accessing!public! !
!ILWidget categoriesFor: #id:!accessing!public! !
!ILWidget categoriesFor: #inform:!control flow!public! !
!ILWidget categoriesFor: #initialize!initialization!public! !
!ILWidget categoriesFor: #markDirty!public!states! !
!ILWidget categoriesFor: #newRootElement!private! !
!ILWidget categoriesFor: #owner!accessing!public! !
!ILWidget categoriesFor: #owner:!accessing!public! !
!ILWidget categoriesFor: #postCopy!copying!public! !
!ILWidget categoriesFor: #prepend:!control flow!public! !
!ILWidget categoriesFor: #prepend:onAnswer:!control flow!public! !
!ILWidget categoriesFor: #printJsonOn:!printing!public! !
!ILWidget categoriesFor: #registerState!public!states! !
!ILWidget categoriesFor: #removeDecorator:!decorators!public! !
!ILWidget categoriesFor: #removeDependentWidget:!public!states! !
!ILWidget categoriesFor: #retrieveControl!control flow!public! !
!ILWidget categoriesFor: #rootElementClass!defaults!public! !
!ILWidget categoriesFor: #scripts!building!public! !
!ILWidget categoriesFor: #show:!control flow!public! !
!ILWidget categoriesFor: #show:onAnswer:!control flow!public! !
!ILWidget categoriesFor: #show:onAnswer:delegator:!control flow!public! !
!ILWidget categoriesFor: #state!accessing!public! !
!ILWidget categoriesFor: #stateRegistry!accessing!public! !
!ILWidget categoriesFor: #styles!building!public! !
!ILWidget categoriesFor: #updateHead:!private! !
!ILWidget categoriesFor: #widget!accessing!public! !
!ILWidget categoriesFor: #widgetFor:!accessing!public! !
!ILWidget categoriesFor: #widgetFor:withInPlaceEditor:!accessing!public! !
!ILWidget categoriesFor: #withDecoratorsDo:!decorators!public! !
