"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILMeterElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILMeterElement guid: (GUID fromString: '{07e6d3d7-a761-4791-b978-d4405dc3c9d7}')!
ILMeterElement comment: 'The meter element represents a scalar gauge providing a measurement within a known range, or a fractional value.'!
!ILMeterElement categoriesForClass!Iliad-More-HTML5Elements! !
!ILMeterElement methodsFor!

high: anInteger	"The point that marks the lower boundary of the high segment of the meter"		self attributeAt: 'high' put: anInteger greaseString !

low: anInteger	"The point that marks the upper boundary of the low segment of the meter"		self attributeAt: 'low' put: anInteger greaseString !

max: anInteger	"The upper bound of the range for the meter"		self attributeAt: 'max' put: anInteger greaseString !

min: anInteger	"The lower bound of the range for the meter"		self attributeAt: 'min' put: anInteger greaseString !

optimum: anInteger	"The point that marks the optimum position for the meter"		self attributeAt: 'optimum' put: anInteger greaseString !

tag	^'meter'!

value: anInteger	"The measured value shown by meter"		self attributeAt: 'value' put: anInteger greaseString! !
!ILMeterElement categoriesFor: #high:!accessing attributes!public! !
!ILMeterElement categoriesFor: #low:!accessing attributes!public! !
!ILMeterElement categoriesFor: #max:!accessing attributes!public! !
!ILMeterElement categoriesFor: #min:!accessing attributes!public! !
!ILMeterElement categoriesFor: #optimum:!accessing attributes!public! !
!ILMeterElement categoriesFor: #tag!accessing!public! !
!ILMeterElement categoriesFor: #value:!accessing attributes!public! !

