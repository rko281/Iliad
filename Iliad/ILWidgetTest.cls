"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILWidgetTest
	instanceVariableNames: 'app'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILWidgetTest guid: (GUID fromString: '{0e629f77-b14e-4562-a31b-ae05508fbc05}')!
ILWidgetTest comment: ''!
!ILWidgetTest categoriesForClass!Iliad-Tests-Buildables! !
!ILWidgetTest methodsFor!

dirtyWidgets 	^self session context 		stateRegistry dirtyChildrenOf: app!

session 	^ILCurrentContext value session!

setUp	ILApplicationMock path: 'mock'.	app := ILApplicationMock new!

tearDown	ILApplicationMock path: nil!

testAnswer	self		withSessionDo: [ app w1				show: app w2				onAnswer: [ :ans | self assert: ans equals: 'hello' ].			app w2				show: app w3				onAnswer: [ :ans | self assert: ans equals: 10 ].			app w3 answer: 10.			app w2 answer: 'hello'.			app w1				show: app w2				onAnswer: [ :ans | self assert: ans equals: 'hello' ].			app w1				show: app w3				onAnswer: [ :ans | self assert: ans equals: 10 ].			app w2 answer: 'hello'.			app w3 answer: 10 ]!

testDecorators	| d1 d2 d3 |	d1 := ILDecorator new.	d2 := ILDecorator new.	d3 := ILDecorator new.	app w1 decorateWith: d1.	self assert: d1 decoratee equals: app w1.	app w1 decorateWith: d2.	self assert: d1 decoratee equals: d2.	self assert: d1 decoratee decoratee equals: app w1.	app w1 decorateWith: d3.	self assert: d1 decoratee equals: d2.	self assert: d1 decoratee decoratee equals: d3.	self assert: d1 decoratee decoratee decoratee equals: app w1.	d2 removeYourself.	self assert: d1 decoratee equals: d3.	self assert: d1 decoratee decoratee equals: app w1.	d3 removeYourself.	self assert: d1 decoratee equals: app w1!

testDependentWidget	self withSessionDo: [		app w3 addDependentWidget: app w2.		app w2 addDependentWidget: app w1.				app build.		self assert: (self dirtyWidgets isEmpty).		app w3 markDirty.		self assert: (self dirtyWidgets includes: app w3).		self assert: (self dirtyWidgets includes: app w2).		self assert: (self dirtyWidgets includes: app w1)]!

testDirtyWidget	self withSessionDo: [		self assert: (self dirtyWidgets isEmpty).		app w1 markDirty.		self assert: (self dirtyWidgets includes: app w1).		self deny: (self dirtyWidgets includes: app w2).		app w2 markDirty.		self assert: (self dirtyWidgets includes: app w1).		self assert: (self dirtyWidgets includes: app w2)]!

testDirtyWidget2	"The purpose of this test is to check if subwidgets are built twice 	when the owner and the widget are marked dirty"		| widget |	widget := ILWidgetMock1 new.	self withSessionDo: [ 		app build.		app w1			show: widget			onAnswer: [:ans | 				widget markDirty.				app w1 show: widget].		self assert: (self dirtyWidgets includes: app w1).		self deny: (self dirtyWidgets includes: widget).				app build.		self deny: (self dirtyWidgets includes: app w1).		self deny: (self dirtyWidgets includes: widget).		widget answer.		self assert: (self dirtyWidgets includes: app w1).		self deny: (self dirtyWidgets includes: widget)]!

testRetrieveControl	| str |	str := WriteStream on: String new.	self withSessionDo: [		app w1 show: app w2.		app w1 show: app w3.		app w1 build printHtmlOn: str.		self deny: ('*test widget 1*' match: str contents).		app w1 retrieveControl.		str := WriteStream on: String new.		app w1 build printHtmlOn: str.		self assert: ('*test widget 1*' match: str contents)]!

testShow	| str |	str := WriteStream on: String new.	self withSessionDo: [		app w1 show: app w2.		app w1 build printHtmlOn: str.		self assert: ('*test widget 2*' match: str contents).		str := WriteStream on: String new.		app w2 show: app w3.		app w1 build printHtmlOn: str.		self assert: ('*test widget 3*' match: str contents).		str := WriteStream on: String new.		app w3 answer.		app w1 build printHtmlOn: str.		self assert: ('*test widget 2*' match: str contents).		str := WriteStream on: String new.		app w2 answer.		app w1 build printHtmlOn: str.		self assert: ('*test widget 1*' match: str contents)]!

withSessionDo: aBlock	"To build widgets, we have to create a fake session,	with a context, aRequest and an application"		| context request |	request := ILRequest new.	context := ILContext new 		session: ILSession new;		request: request;		yourself.	ILCurrentContext 		use: context		during: [			request url: (ILUrl absolute: app class path).			context request fields: (Dictionary with: ('_state' -> context stateRegistry key)).			app respondOn: ILResponse new.			aBlock value]! !
!ILWidgetTest categoriesFor: #dirtyWidgets!accessing!public! !
!ILWidgetTest categoriesFor: #session!private! !
!ILWidgetTest categoriesFor: #setUp!public!running! !
!ILWidgetTest categoriesFor: #tearDown!public!running! !
!ILWidgetTest categoriesFor: #testAnswer!public!testing! !
!ILWidgetTest categoriesFor: #testDecorators!public!testing! !
!ILWidgetTest categoriesFor: #testDependentWidget!public!testing! !
!ILWidgetTest categoriesFor: #testDirtyWidget!public!testing! !
!ILWidgetTest categoriesFor: #testDirtyWidget2!public!testing! !
!ILWidgetTest categoriesFor: #testRetrieveControl!public!testing! !
!ILWidgetTest categoriesFor: #testShow!public!testing! !
!ILWidgetTest categoriesFor: #withSessionDo:!private! !

