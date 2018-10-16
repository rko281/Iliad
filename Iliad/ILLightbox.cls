"Filed out from Dolphin Smalltalk 7"!

ILDelegator subclass: #ILLightbox
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILLightbox guid: (GUID fromString: '{1975ce33-c798-4efa-8bf5-59bbb3af50fd}')!
ILLightbox comment: ''!
!ILLightbox categoriesForClass!Iliad-More-UI! !
!ILLightbox methodsFor!

contents	^[:e || div |		e build: self decoratee contents.		e div			class: 'overlay';			onClickDo: [self widget answer: nil].		div := e div			class: 'lightbox';			yourself.		div script: self lighter.		div build: self lightboxContents]!

lightboxContents 	^self widget!

lighter	^ 'jQuery(function() {updateLightbox();jQuery(window).resize(function(){updateLightbox();})})'!

scripts	^ #('/javascripts/lightbox.js')!

styles	^#('/stylesheets/lightbox.css')!

updateHead: aHead	super updateHead: aHead.	self decoratee updateHead: aHead! !
!ILLightbox categoriesFor: #contents!building!public! !
!ILLightbox categoriesFor: #lightboxContents!building!public! !
!ILLightbox categoriesFor: #lighter!public!scripts! !
!ILLightbox categoriesFor: #scripts!building!public! !
!ILLightbox categoriesFor: #styles!building!public! !
!ILLightbox categoriesFor: #updateHead:!building!public! !

