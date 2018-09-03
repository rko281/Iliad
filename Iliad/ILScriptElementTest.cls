"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILScriptElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILScriptElementTest guid: (GUID fromString: '{2719c6c4-2695-4238-91f9-ea994cd45eb2}')!
ILScriptElementTest comment: ''!
!ILScriptElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILScriptElementTest methodsFor!

setUp	e := ILScriptElement new!

testBeJavascript	e beforePrintHtml.	self shouldHaveAttribute: 'type' value: 'text/javascript'!

testCharSet	e charset: 'foo'.	self shouldHaveAttribute: 'charset' value: 'foo'!

testDefer	e defer.	self shouldHaveAttribute: 'defer' value: 'defer'!

testLanguage	e language: 'foo'.	self shouldHaveAttribute: 'language' value: 'foo'!

testSrc	e src: 'foo'.	self shouldHaveAttribute: 'src' value: 'foo'!

testTag	self assert: e tag equals: 'script'!

testType	e type: 'foo'.	self shouldHaveAttribute: 'type' value: 'foo'! !
!ILScriptElementTest categoriesFor: #setUp!public!running! !
!ILScriptElementTest categoriesFor: #testBeJavascript!public!testing! !
!ILScriptElementTest categoriesFor: #testCharSet!public!testing! !
!ILScriptElementTest categoriesFor: #testDefer!public!testing! !
!ILScriptElementTest categoriesFor: #testLanguage!public!testing! !
!ILScriptElementTest categoriesFor: #testSrc!public!testing! !
!ILScriptElementTest categoriesFor: #testTag!public!testing! !
!ILScriptElementTest categoriesFor: #testType!public!testing! !

