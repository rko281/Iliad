"Filed out from Dolphin Smalltalk 7"!

ILClosingElement subclass: #ILAreaElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILAreaElement guid: (GUID fromString: '{db7a46aa-3b65-4861-acf1-4fc489c1f05d}')!
ILAreaElement comment: ''!
!ILAreaElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILAreaElement methodsFor!

accesskey: aCharacter	self attributeAt: 'accesskey' put: aCharacter greaseString!

alt: aString	self attributeAt: 'alt' put: aString!

circleShape	self shape: 'circle'!

coords: aString 	self attributeAt: 'coords' put: aString!

defaultShape	self shape: 'default'!

href: aString 	self attributeAt: 'href' put: aString!

linkToApplication: anApplicationClass	self linkToApplication: anApplicationClass controller: ''!

linkToApplication: anApplicationClass controller: aString	self href: (self context urlBuilder urlFor: anApplicationClass absolutePath, '/', aString)!

linkToLocal: aString	self linkToApplication: self application class controller: aString!

nohref	self attributeAt: 'nohref' put: 'nohref'!

polyShape	self shape: 'poly'!

rectShape	self shape: 'rect'!

shape: aString 	self attributeAt: 'shape' put: aString!

tabindex: anInteger 	self attributeAt: 'tabindex' put: anInteger greaseString!

tag	^ 'area'! !
!ILAreaElement categoriesFor: #accesskey:!accessing attributes!public! !
!ILAreaElement categoriesFor: #alt:!accessing attributes!public! !
!ILAreaElement categoriesFor: #circleShape!accessing attributes/imagemap!public! !
!ILAreaElement categoriesFor: #coords:!accessing attributes/imagemap!public! !
!ILAreaElement categoriesFor: #defaultShape!accessing attributes/imagemap!public! !
!ILAreaElement categoriesFor: #href:!accessing attributes!public! !
!ILAreaElement categoriesFor: #linkToApplication:!accessing attributes!public! !
!ILAreaElement categoriesFor: #linkToApplication:controller:!accessing attributes!public! !
!ILAreaElement categoriesFor: #linkToLocal:!accessing attributes!public! !
!ILAreaElement categoriesFor: #nohref!accessing attributes!public! !
!ILAreaElement categoriesFor: #polyShape!accessing attributes/imagemap!public! !
!ILAreaElement categoriesFor: #rectShape!accessing attributes/imagemap!public! !
!ILAreaElement categoriesFor: #shape:!accessing attributes/imagemap!public! !
!ILAreaElement categoriesFor: #tabindex:!accessing attributes!public! !
!ILAreaElement categoriesFor: #tag!accessing!public! !

