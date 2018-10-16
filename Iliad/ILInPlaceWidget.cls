"Filed out from Dolphin Smalltalk 7"!

ILWidget subclass: #ILInPlaceWidget
	instanceVariableNames: 'contents contentsBlock inPlaceBlock inPlaceWidget inPlaceInput'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILInPlaceWidget guid: (GUID fromString: '{48e9f602-9621-4d3d-8bdf-08874a1a9f92}')!
ILInPlaceWidget comment: 'ILInPlaceWiget is a widget designed to emulate the inPlaceEditor script  that can be found in javascript library [1]. It displays a basic content which on double click will be replaced by a widget providing a form.  On submiting the form, the basic content will be displayed again.The content display on double click can be set either as a form input field or an ILFormula.Public API and Key Messages :- contentsBlock: block to be displayed  initially- inPlaceInput: input field to be displayed on double click- inPlaceFormula: ILFormula to be displayed on double click[1] : Like https://madrobby.github.io/scriptaculous/ajax-inplaceeditor/ '!
!ILInPlaceWidget categoriesForClass!Iliad-Core-Buildables! !
!ILInPlaceWidget methodsFor!

contents	^[:e |		e build: self contentsBlock.		e onDoubleClickDo: [ 			self show: (self inPlaceWidget)].	]!

contentsBlock	^contentsBlock ifNil: [[:e |]]!

contentsBlock: aBlock	contentsBlock := aBlock.!

inPlaceFormula: anILFormula	inPlaceWidget := anILFormula.!

inPlaceInput: aBlockBuildingInput	inPlaceWidget := self widgetFor: [ :e |		e form build: [ :form |					form build: aBlockBuildingInput.					form button text: 'V'; beSubmit; 								action: [:val | self inPlaceWidget answer].					form button text: 'X'; beReset; 								action: [:val | self inPlaceWidget answer].]].	!

inPlaceWidget	^ inPlaceWidget! !
!ILInPlaceWidget categoriesFor: #contents!building!public! !
!ILInPlaceWidget categoriesFor: #contentsBlock!accessing!public! !
!ILInPlaceWidget categoriesFor: #contentsBlock:!public!setting! !
!ILInPlaceWidget categoriesFor: #inPlaceFormula:!public!setting! !
!ILInPlaceWidget categoriesFor: #inPlaceInput:!public!setting! !
!ILInPlaceWidget categoriesFor: #inPlaceWidget!accessing!public! !

