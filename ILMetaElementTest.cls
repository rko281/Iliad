"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILMetaElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILMetaElementTest guid: (GUID fromString: '{12da5bd9-a94a-4589-83a9-bfb7b1cf3c20}')!
ILMetaElementTest comment: ''!
!ILMetaElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILMetaElementTest methodsFor!

setUp	e := ILMetaElement new!

testAttributes	e expires.	self shouldHaveAttribute: 'http-equiv' value: 'expires'.	e refresh.	self shouldHaveAttribute: 'http-equiv' value: 'refresh'.	e contentType.	self shouldHaveAttribute: 'http-equiv' value: 'content-type'.	e setCookie.	self shouldHaveAttribute: 'http-equiv' value: 'set-cookie'!

testContent	e content: 'foo'.	self shouldHaveAttribute: 'content' value: 'foo'!

testHttpEquiv	e httpEquiv: 'foo'.	self shouldHaveAttribute: 'http-equiv' value: 'foo'!

testName	e name: 'foo'.	self shouldHaveAttribute: 'name' value: 'foo'!

testScheme	e scheme: 'foo'.	self shouldHaveAttribute: 'scheme' value: 'foo'!

testTag	self assert: e tag equals: 'meta'! !
!ILMetaElementTest categoriesFor: #setUp!public!running! !
!ILMetaElementTest categoriesFor: #testAttributes!public!testing! !
!ILMetaElementTest categoriesFor: #testContent!public!testing! !
!ILMetaElementTest categoriesFor: #testHttpEquiv!public!testing! !
!ILMetaElementTest categoriesFor: #testName!public!testing! !
!ILMetaElementTest categoriesFor: #testScheme!public!testing! !
!ILMetaElementTest categoriesFor: #testTag!public!testing! !

