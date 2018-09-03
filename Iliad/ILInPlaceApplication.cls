"Filed out from Dolphin Smalltalk 7"!

ILApplication subclass: #ILInPlaceApplication
	instanceVariableNames: 'textForExample1 textForExample2 textForExample3 textForExample3b widgetForExample1 widgetForExample2'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILInPlaceApplication guid: (GUID fromString: '{6eedd5d9-7495-4b70-bb6d-ac3661b2d38d}')!
ILInPlaceApplication comment: 'Example class for ILInPlaceWidget.'!
!ILInPlaceApplication categoriesForClass!Iliad-More-Examples! !
!ILInPlaceApplication methodsFor!

example1Content    ^ [ :e | 		e h3: 'Example 1'.		e p build: [:p |			p text: 'First, what we want to do, but without using ILInPlaceWidget : '.			p build: self widgetForExample1.			].		"e onDoubleClickDo: [self widgetForExample1 show: self widgetForExample1b]"	]. !

example2Content    ^ [ :e | 		e h3: 'Example 2'.		e p build: [:p |			p text: 'Example with ILInPlaceWidget (less code) : '.			p build: self widgetForExample2.		].			]. !

example3Content    ^ [ :e | 		e h3: 'Example 3'.		e p build: [:p |			p text: 'Another example of ILInPlaceWidget but with an ILFormula : '.			p build: self widgetForExample3.		].			]. !

index    ^ [ :e | 		e p text: 'This page is there to show you what can be done with the ILInPlaceWidget'.		e div build: self example1Content.		e div build: self example2Content.		e div build: self example3Content.	].!

initialize	super initialize.	textForExample1 := 'Double click on me !!'.	textForExample2 := 'Double click on me !!'.	textForExample3 := 'Double click on me !!'.	textForExample3b := 'Double click on me !!'.!

textForExample1	^ textForExample1!

textForExample1: anObject	textForExample1 := anObject!

textForExample2	^ textForExample2!

textForExample2: anObject	textForExample2 := anObject!

textForExample3	^ textForExample3!

textForExample3: anObject	textForExample3 := anObject!

textForExample3b	^ textForExample3b!

textForExample3b: anObject	textForExample3b := anObject!

updatePage: aPage	super updatePage: aPage.	aPage head stylesheet href: '/stylesheets/iliad.css'.!

widgetForExample1	widgetForExample1 ifNil: [		widgetForExample1 := self widgetFor: [ :e | 			e text: self textForExample1.			e onDoubleClickDo: [self widgetForExample1 show: self widgetForExample1b]]	].	^ widgetForExample1.!

widgetForExample1b	| anonymousWidget |	anonymousWidget := ILPluggableWidget new. 	anonymousWidget	contentsBlock: [:e | 			e form build: [ :form |				form input 						value: self textForExample1;						action: [:val | self textForExample1: val.].				form button text: 'V'; beSubmit;					action: [anonymousWidget answer].				form button text: 'X'; beReset;					action: [anonymousWidget answer].]].	^ anonymousWidget.!

widgetForExample2    ^ (ILInPlaceWidget new 					contentsBlock: [ :e | e text: self textForExample2. e br.];				 inPlaceInput: [ :e | 					e input value: self textForExample2;							 action: [:val | self textForExample2: val.]]).!

widgetForExample3    ^ (ILInPlaceWidget new 					contentsBlock: [ :e | 							e text: self textForExample3. e br. 							e text: self textForExample3b ];				 inPlaceFormula: self widgetForExample3b).!

widgetForExample3b	| formula |	formula := ILFormula on: self. 	(formula inputOn: #textForExample3)		labelContents: [:e | e span class: 'required'; text: 'My first input field'];		addCondition: [:val | val notNil and: [val notEmpty]]		labelled: [:val | 'This field is required'].	(formula textareaOn: #textForExample3b)		size: 30@10;		labelContents: [:e | e span class: 'required'; text: 'Description'];		addCondition: [:val | val notNil and: [val notEmpty]]		labelled: [:val | 'This field is required'].	formula saveAction: [ 		formula commit.		formula answer.].	^ formula.! !
!ILInPlaceApplication categoriesFor: #example1Content!building!public! !
!ILInPlaceApplication categoriesFor: #example2Content!building!public! !
!ILInPlaceApplication categoriesFor: #example3Content!building!public! !
!ILInPlaceApplication categoriesFor: #index!controllers!public! !
!ILInPlaceApplication categoriesFor: #initialize!initialization!public! !
!ILInPlaceApplication categoriesFor: #textForExample1!accessing!public! !
!ILInPlaceApplication categoriesFor: #textForExample1:!accessing!public! !
!ILInPlaceApplication categoriesFor: #textForExample2!accessing!public! !
!ILInPlaceApplication categoriesFor: #textForExample2:!accessing!public! !
!ILInPlaceApplication categoriesFor: #textForExample3!accessing!public! !
!ILInPlaceApplication categoriesFor: #textForExample3:!accessing!public! !
!ILInPlaceApplication categoriesFor: #textForExample3b!accessing!public! !
!ILInPlaceApplication categoriesFor: #textForExample3b:!accessing!public! !
!ILInPlaceApplication categoriesFor: #updatePage:!building!public! !
!ILInPlaceApplication categoriesFor: #widgetForExample1!public!widget! !
!ILInPlaceApplication categoriesFor: #widgetForExample1b!public!widget! !
!ILInPlaceApplication categoriesFor: #widgetForExample2!public!widget! !
!ILInPlaceApplication categoriesFor: #widgetForExample3!public!widget! !
!ILInPlaceApplication categoriesFor: #widgetForExample3b!public!widget! !

!ILInPlaceApplication class methodsFor!

path	^'examples/inplacewidget'! !
!ILInPlaceApplication class categoriesFor: #path!private! !

