"Filed out from Dolphin Smalltalk 7"!

ILLinkableElement subclass: #ILAnchorElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'useAjaxOnlyForActions'!
ILAnchorElement guid: (GUID fromString: '{0eb81e96-0d05-47be-ae4a-2cc8ade98d2a}')!
ILAnchorElement comment: ''!
!ILAnchorElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILAnchorElement methodsFor!

action: aBlock	self class useAjaxOnlyForActions 		ifTrue: [ self href: 'javascript:{}'; onClickDo: aBlock ]		ifFalse: [ self action: aBlock hash: '' ]!

action: aBlock hash: aString	| action |	action := self session registerActionFor: aBlock.	self href: (self context urlBuilder		urlForAction: action		hash: aString)!

circleShape	self shape: 'circle'!

coords: aString	self attributeAt: 'coords' put: aString!

defaultShape	self shape: 'default'!

polyShape	self shape: 'poly'!

rectShape	self shape: 'rect'!

shape: aString	self attributeAt: 'shape' put: aString!

tabindex: anInteger	self attributeAt: 'tabindex' put: anInteger greaseString!

tag	^ 'a'! !
!ILAnchorElement categoriesFor: #action:!accessing!public! !
!ILAnchorElement categoriesFor: #action:hash:!accessing!public! !
!ILAnchorElement categoriesFor: #circleShape!accessing attributes/imagemap!public! !
!ILAnchorElement categoriesFor: #coords:!accessing attributes/imagemap!public! !
!ILAnchorElement categoriesFor: #defaultShape!accessing attributes/imagemap!public! !
!ILAnchorElement categoriesFor: #polyShape!accessing attributes/imagemap!public! !
!ILAnchorElement categoriesFor: #rectShape!accessing attributes/imagemap!public! !
!ILAnchorElement categoriesFor: #shape:!accessing attributes/imagemap!public! !
!ILAnchorElement categoriesFor: #tabindex:!accessing attributes!public! !
!ILAnchorElement categoriesFor: #tag!accessing!public! !

!ILAnchorElement class methodsFor!

useAjaxOnlyForActions	^ useAjaxOnlyForActions ifNil: [ true ]!

useAjaxOnlyForActions: aBoolean	useAjaxOnlyForActions := aBoolean! !
!ILAnchorElement class categoriesFor: #useAjaxOnlyForActions!accessing!public! !
!ILAnchorElement class categoriesFor: #useAjaxOnlyForActions:!accessing!public! !

