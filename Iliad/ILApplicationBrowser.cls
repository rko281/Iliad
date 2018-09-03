"Filed out from Dolphin Smalltalk 7"!

ILApplication subclass: #ILApplicationBrowser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILApplicationBrowser guid: (GUID fromString: '{cf88e36e-6426-454e-8fc2-2d6ab90d4c05}')!
ILApplicationBrowser comment: ''!
!ILApplicationBrowser categoriesForClass!Iliad-More-UI! !
!ILApplicationBrowser methodsFor!

applications	^((ILApplication allSubclasses 		select: [:each | each path notNil])		reject: [:each | each = self class]) asSortedCollection: [:a :b |			a name < b name]!

index	^self mainContents!

mainContents	^[:e |		e div			class: 'wrapper';			build: [:div |								div a build: [:a |					a href: 'http://www.iliadproject.org'.					a img						class: 'logo';						src: '/images/iliad.png' alt: 'Iliad'].				div h1: 'Application Browser'.				div build: self pathListContents]	]!

pathListContents	^[:e || ul |		ul := e ul.		self applications do: [:each |			ul li a 				text: each name; 				linkToApplication: each]]!

updatePage: aPage	super updatePage: aPage.	aPage head stylesheet href: '/stylesheets/iliad.css'! !
!ILApplicationBrowser categoriesFor: #applications!accessing!public! !
!ILApplicationBrowser categoriesFor: #index!controllers!public! !
!ILApplicationBrowser categoriesFor: #mainContents!building!public! !
!ILApplicationBrowser categoriesFor: #pathListContents!building!public! !
!ILApplicationBrowser categoriesFor: #updatePage:!building!public! !

!ILApplicationBrowser class methodsFor!

path	^'browse'! !
!ILApplicationBrowser class categoriesFor: #path!accessing!public! !

