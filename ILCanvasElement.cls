"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILCanvasElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILCanvasElement guid: (GUID fromString: '{ee7b0e9a-399d-40ce-9eaa-87a2ded03257}')!
ILCanvasElement comment: 'The canvas element represents a resolution-dependent bitmap     canvas, which can be used for dynamically rendering of images such as     game graphics, graphs, or other images'!
!ILCanvasElement categoriesForClass!Iliad-More-HTML5Elements! !
!ILCanvasElement methodsFor!

height: anInteger	"The height of the canvas, in CSS pixels"		self attributeAt: 'height' put: anInteger greaseString!

tag	^'canvas'!

width: anInteger	"The width of the canvas, in CSS pixels"		self attributeAt: 'width' put: anInteger greaseString! !
!ILCanvasElement categoriesFor: #height:!accessing attributes!public! !
!ILCanvasElement categoriesFor: #tag!accessing!public! !
!ILCanvasElement categoriesFor: #width:!accessing attributes!public! !

