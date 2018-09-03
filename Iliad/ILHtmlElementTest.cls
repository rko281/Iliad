"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILHtmlElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILHtmlElementTest guid: (GUID fromString: '{e3e31d10-2750-4e18-8a79-0503610f40f8}')!
ILHtmlElementTest comment: ''!
!ILHtmlElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILHtmlElementTest methodsFor!

setUp	e := ILHtmlElement new!

testBeforePrintHtml		| session context |		session := ILSession new. session language: #fr.		context := ILContext new session: session.		ILCurrentContext 		use: (context) 		during: [				e beforePrintHtml.			self shouldHaveAttribute: 'lang' value: 'fr'.						e xmlns: 'foo'. e lang: 'bar'. e xmlLang: 'baz'.			e beforePrintHtml.			self shouldHaveAttribute: 'xmlns' value: 'foo'.			self shouldHaveAttribute: 'lang' value: 'bar']!

testDocType	| doctype |	self withContextDo: [ e printHtmlOn: String new writeStream ].	doctype := e doctype.	self		assert: doctype		equals:			'<!!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'!

testLang	e lang: 'fr'.	self shouldHaveAttribute: 'lang' value: 'fr'!

testTag	self assert: e tag equals: 'html'!

testVersion	e version: 2.0.	self shouldHaveAttribute: 'version' value: '2.0'	!

testXmlns	e xmlns: 'foo'.	self shouldHaveAttribute: 'xmlns' value: 'foo'	!

testXmlTag	self		withContextDo: [ e printHtmlOn: String new writeStream.			self				assert: e xmlTag				equals: '<?xml version="1.0" encoding="utf-8"?>' ]! !
!ILHtmlElementTest categoriesFor: #setUp!public!running! !
!ILHtmlElementTest categoriesFor: #testBeforePrintHtml!public!testing! !
!ILHtmlElementTest categoriesFor: #testDocType!public!testing! !
!ILHtmlElementTest categoriesFor: #testLang!public!testing! !
!ILHtmlElementTest categoriesFor: #testTag!public!testing! !
!ILHtmlElementTest categoriesFor: #testVersion!public!testing! !
!ILHtmlElementTest categoriesFor: #testXmlns!public!testing! !
!ILHtmlElementTest categoriesFor: #testXmlTag!public!testing! !

