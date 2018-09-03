"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILVideoElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILVideoElement guid: (GUID fromString: '{ff8a0e49-5417-41ac-9f36-51a1331533c4}')!
ILVideoElement comment: 'version 0.6.0	This class implements an HTML5 .ogv video streaming tag. This is EXPERIMENTAL code, and it is currently expected to work ONLY in FF 3.5 or higher.	Spec at: http://www.w3.org/TR/html5/video.html.	The video element represents a video or movie.'!
!ILVideoElement categoriesForClass!Iliad-More-HTML5Elements! !
!ILVideoElement methodsFor!

autoplay	self autoplay: true!

autoplay: aBoolean	aBoolean ifTrue: [		self attributeAt: 'autoplay' put: 'autoplay']!

controls	self controls: true!

controls: aBoolean	aBoolean ifTrue: [		self attributeAt: 'controls' put: 'controls']!

height: anInteger	self attributeAt: 'height' put: anInteger greaseString!

loop	self loop: true!

loop: aBoolean	aBoolean ifTrue: [		self attributeAt: 'loop' put: 'loop']!

poster: aString	self attributeAt: 'poster' put: aString !

preload	self preloadAuto!

preloadAuto	self attributeAt: 'preload' put: 'auto' !

preloadMetadata	self attributeAt: 'preload' put: 'metadata' !

preloadNone	self attributeAt: 'preload' put: 'none' !

src: aString	self attributeAt: 'src' put: aString!

tag	^'video'!

width: anInteger	self attributeAt: 'width' put: anInteger greaseString! !
!ILVideoElement categoriesFor: #autoplay!accessing!public! !
!ILVideoElement categoriesFor: #autoplay:!accessing attributes!public! !
!ILVideoElement categoriesFor: #controls!accessing!public! !
!ILVideoElement categoriesFor: #controls:!accessing attributes!public! !
!ILVideoElement categoriesFor: #height:!accessing attributes!public! !
!ILVideoElement categoriesFor: #loop!accessing!public! !
!ILVideoElement categoriesFor: #loop:!accessing attributes!public! !
!ILVideoElement categoriesFor: #poster:!accessing attributes!public! !
!ILVideoElement categoriesFor: #preload!accessing!public! !
!ILVideoElement categoriesFor: #preloadAuto!accessing attributes!public! !
!ILVideoElement categoriesFor: #preloadMetadata!accessing attributes!public! !
!ILVideoElement categoriesFor: #preloadNone!accessing attributes!public! !
!ILVideoElement categoriesFor: #src:!accessing attributes!public! !
!ILVideoElement categoriesFor: #tag!accessing!public! !
!ILVideoElement categoriesFor: #width:!accessing attributes!public! !

