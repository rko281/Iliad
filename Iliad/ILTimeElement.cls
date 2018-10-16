"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILTimeElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTimeElement guid: (GUID fromString: '{9e684854-3e7a-4331-a9dc-0e02a2a44679}')!
ILTimeElement comment: 'The time element represents a date and/or time.'!
!ILTimeElement categoriesForClass!Iliad-More-HTML5Elements! !
!ILTimeElement methodsFor!

datetime: aTime	"Specifies the date or time that the element represents"		self attributeAt: 'datetime' put: aTime!

pubDate: aBoolean	"Indicates that the date and time given by the element is the publication date and time of the nearest ancestor article element -or, if the element has no ancestor article element, of the document as a whole"		aBoolean ifTrue: [		self attributeAt: 'pubdate' put: 'pubdate']!

tag	^'time'! !
!ILTimeElement categoriesFor: #datetime:!accessing attributes!public! !
!ILTimeElement categoriesFor: #pubDate:!accessing attributes!public! !
!ILTimeElement categoriesFor: #tag!accessing!public! !

