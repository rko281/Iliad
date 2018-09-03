"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILProgressElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILProgressElement guid: (GUID fromString: '{47f01eeb-b11c-4ac9-af43-ad1db8d6d13b}')!
ILProgressElement comment: 'The progress element represents the completion progress of a task.'!
!ILProgressElement categoriesForClass!Iliad-More-HTML5Elements! !
!ILProgressElement methodsFor!

max: anInteger	"Specifies how much work the task requires in total. The units are arbitrary and not specified"		self attributeAt: 'max' put: anInteger greaseString!

tag	^'progress'!

value: anInteger	"Specifies how much of the task has been completed. The units are arbitrary and not specified"		self attributeAt: 'value' put: anInteger greaseString! !
!ILProgressElement categoriesFor: #max:!accessing attributes!public! !
!ILProgressElement categoriesFor: #tag!accessing!public! !
!ILProgressElement categoriesFor: #value:!accessing attributes!public! !

