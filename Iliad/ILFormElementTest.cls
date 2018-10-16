"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILFormElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFormElementTest guid: (GUID fromString: '{f5337b10-b7f3-4346-9f89-c874925b5853}')!
ILFormElementTest comment: ''!
!ILFormElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILFormElementTest methodsFor!

setUp	e := ILFormElement new!

testAccept	e accept: 'foo'.	self assert: (e attributeAt: 'accept') equals: 'foo'!

testAcceptCharset	e acceptCharset: 'utf-8'.	self assert: (e attributeAt: 'accept-charset') equals: 'utf-8'!

testAcceptCharsets	| charsets |	charsets := #('utf-8' 'foo' 'bar').	e acceptCharsets: charsets.	self		assert: (e attributeAt: 'accept-charset')		equals: 'utf-8 foo bar'!

testAccepts	| accepts |	accepts := #('foo' 'bar').	e accepts: accepts.	self assert: (e attributeAt: 'accept') equals: 'foo bar'!

testBeMultipart	e beMultipart.	self assert: (e attributeAt: 'enctype') equals: 'multipart/form-data'.	self assert: e isMultipart!

testEncodingType	e enctype: 'foo'.	self assert: (e attributeAt: 'enctype') equals: 'foo'!

testMultipart	e multipart: true.	self assert: (e attributeAt: 'enctype') equals: 'multipart/form-data'!

testReset	e onReset: 'foo'.	self assert: (e attributeAt: 'onreset') equals: 'foo'!

testSubmit	e onSubmit: 'foo'.	self assert: (e attributeAt: 'onsubmit') equals: 'foo'!

testTag	self assert: e tag equals: 'form'!

testUseGet	e useGet.	self assert: (e attributeAt: 'method') equals: 'get'!

testUsePost	e usePost.	self assert: (e attributeAt: 'method') equals: 'post'! !
!ILFormElementTest categoriesFor: #setUp!public!running! !
!ILFormElementTest categoriesFor: #testAccept!public!tests! !
!ILFormElementTest categoriesFor: #testAcceptCharset!public!tests! !
!ILFormElementTest categoriesFor: #testAcceptCharsets!public!tests! !
!ILFormElementTest categoriesFor: #testAccepts!public!tests! !
!ILFormElementTest categoriesFor: #testBeMultipart!public!tests! !
!ILFormElementTest categoriesFor: #testEncodingType!public!tests! !
!ILFormElementTest categoriesFor: #testMultipart!public!tests! !
!ILFormElementTest categoriesFor: #testReset!public!tests! !
!ILFormElementTest categoriesFor: #testSubmit!public!tests! !
!ILFormElementTest categoriesFor: #testTag!public!tests! !
!ILFormElementTest categoriesFor: #testUseGet!public!tests! !
!ILFormElementTest categoriesFor: #testUsePost!public!tests! !

