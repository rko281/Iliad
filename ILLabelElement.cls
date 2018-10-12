"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILLabelElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILLabelElement guid: (GUID fromString: '{0ddabeac-e10d-4ed0-a71d-3987421dc9cd}')!
ILLabelElement comment: ''!
!ILLabelElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILLabelElement methodsFor!

accesskey: aCharacter 	self attributeAt: 'accesskey' put: aCharacter greaseString!

for: aString 	self attributeAt: 'for' put: aString!

tag	^ 'label'! !
!ILLabelElement categoriesFor: #accesskey:!accessing attributes!public! !
!ILLabelElement categoriesFor: #for:!accessing attributes!public! !
!ILLabelElement categoriesFor: #tag!accessing!public! !

