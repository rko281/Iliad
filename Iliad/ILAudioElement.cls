"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILAudioElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILAudioElement guid: (GUID fromString: '{e8ee39fd-e568-426f-9ebc-eb6ada260199}')!
ILAudioElement comment: 'version 0.6.0.    This class implements an HTML5 .ogv audio streaming tag. This is    EXPERIMENTAL code, and it is currently expected to work ONLY on FF 3.5 or higher.    Specs at http://www.w3.org/TR/html5/video.html.    An audio element represents an audio stream'!
!ILAudioElement categoriesForClass!Iliad-More-HTML5Elements! !
!ILAudioElement methodsFor!

autoplay	self autoplay: true!

autoplay: aBoolean	aBoolean ifTrue: [		self attributeAt: 'autoplay' put: 'autoplay']!

controls	self controls: true!

controls: aBoolean	aBoolean ifTrue: [		self attributeAt: 'controls' put: 'controls']	!

loop	self loop: true!

loop: aBoolean	aBoolean ifTrue: [		self attributeAt: 'loop' put: 'loop']!

preload	self preloadAuto!

preloadAuto	self attributeAt: 'preload' put: 'auto'!

preloadMetadata	self attributeAt: 'preload' put: 'metadata'!

preloadNone	self attributeAt: 'preload' put: 'none'!

src: aString	self attributeAt: 'src' put: aString!

tag	^'audio'! !
!ILAudioElement categoriesFor: #autoplay!accessing!public! !
!ILAudioElement categoriesFor: #autoplay:!accessing attributes!public! !
!ILAudioElement categoriesFor: #controls!accessing!public! !
!ILAudioElement categoriesFor: #controls:!accessing attributes!public! !
!ILAudioElement categoriesFor: #loop!accessing!public! !
!ILAudioElement categoriesFor: #loop:!accessing attributes!public! !
!ILAudioElement categoriesFor: #preload!accessing!public! !
!ILAudioElement categoriesFor: #preloadAuto!accessing attributes!public! !
!ILAudioElement categoriesFor: #preloadMetadata!accessing attributes!public! !
!ILAudioElement categoriesFor: #preloadNone!accessing attributes!public! !
!ILAudioElement categoriesFor: #src:!accessing attributes!public! !
!ILAudioElement categoriesFor: #tag!accessing!public! !

