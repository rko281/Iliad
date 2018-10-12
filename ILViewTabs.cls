"Filed out from Dolphin Smalltalk 7"!

ILUIWidget subclass: #ILViewTabs
	instanceVariableNames: 'views labels classes selectedView'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILViewTabs guid: (GUID fromString: '{1729c7d0-0863-42f6-9ca5-b5a66778f889}')!
ILViewTabs comment: ''!
!ILViewTabs categoriesForClass!Iliad-More-UI! !
!ILViewTabs methodsFor!

classes	^classes ifNil: [classes := OrderedCollection new]!

classes: aCollection	classes := aCollection!

classFor: aView	^self classes at: (self views indexOf: aView) ifAbsent: ['']!

contents	^[:e || ul div |		div := e div class: self cssClass.		ul := div ul.		self views do: [:each || li |			li := ul li.			li a				text: (self labelFor: each);				linkToLocal: each;				class: (self classFor: each).			self selectedView = each ifTrue: [				li class: 'selected']]]!

cssClass	^super cssClass, ' tabs'!

labelFor: aView	^self labels at: (self views indexOf: aView)!

labels	^labels!

labels: aCollection	"aCollection of strings. 	aCollection must have the same size as widgets collection"		labels := aCollection!

selectedView	^self router controller ifNil: [self views first]!

views	^views!

views: aCollection	"aCollection of strings to be displayed in the tabs.	Each view has an associated label, set with #labels: method"		views := aCollection! !
!ILViewTabs categoriesFor: #classes!accessing!public! !
!ILViewTabs categoriesFor: #classes:!accessing!public! !
!ILViewTabs categoriesFor: #classFor:!accessing!public! !
!ILViewTabs categoriesFor: #contents!building!public! !
!ILViewTabs categoriesFor: #cssClass!accessing!public! !
!ILViewTabs categoriesFor: #labelFor:!accessing!public! !
!ILViewTabs categoriesFor: #labels!accessing!public! !
!ILViewTabs categoriesFor: #labels:!accessing!public! !
!ILViewTabs categoriesFor: #selectedView!accessing!public! !
!ILViewTabs categoriesFor: #views!accessing!public! !
!ILViewTabs categoriesFor: #views:!accessing!public! !

