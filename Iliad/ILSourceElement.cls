"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILSourceElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILSourceElement guid: (GUID fromString: '{695ac31b-40f0-4617-a5d2-87e5625c8cfd}')!
ILSourceElement comment: 'The source element enables multiple media sources to be specified for audio and video elements.'!
!ILSourceElement categoriesForClass!Iliad-More-HTML5Elements! !
!ILSourceElement methodsFor!

media: aString	"The intended media type of the media source (used for helping the UA determine, before fetching this media source, if it useful to the user)."		self attributeAt: 'media' put: aString !

src: aString	"The adress of the media source"		self attributeAt: 'src' put: aString !

tag	^'source'!

type: aString	"The type of the media source (used for helping the UA determine, before fetching this media source, if it can play it)"		self attributeAt: 'type' put: aString ! !
!ILSourceElement categoriesFor: #media:!accessing attributes!public! !
!ILSourceElement categoriesFor: #src:!accessing attributes!public! !
!ILSourceElement categoriesFor: #tag!accessing!public! !
!ILSourceElement categoriesFor: #type:!accessing attributes!public! !

