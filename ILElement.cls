﻿"Filed out from Dolphin Smalltalk 7"!

ILComposite subclass: #ILElement
	instanceVariableNames: 'attributes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILElement guid: (GUID fromString: '{ac7ed702-ea1f-4fad-8c09-39848f0ddcda}')!
ILElement comment: 'I am the abstract root class of the composite element hierarchy.
!ILElement categoriesForClass!Iliad-Core-Elements! !
!ILElement methodsFor!

= anObject

afterPrintHtml!

attributeAt: akey

attributeAt: akey ifAbsent: aBlock

attributeAt: akey ifAbsentPut: aBlock

attributeAt: akey put: anObject 

attributeError: key 

attributes

beforePrintHtml!

build: aBuildable

contentType

doesNotUnderstandAttribute: aString

hash

printAttribute: anAttribute on: aStream

printCloseTagOn: aStream

printHtmlOn: aStream

printJsonOn: aStream

printOpenTagOn: aStream

respondOn: aResponse

tag

text: aString

xml
!ILElement categoriesFor: #=!comparing!public! !
!ILElement categoriesFor: #afterPrintHtml!printing!public! !
!ILElement categoriesFor: #attributeAt:!accessing!public! !
!ILElement categoriesFor: #attributeAt:ifAbsent:!accessing!public! !
!ILElement categoriesFor: #attributeAt:ifAbsentPut:!accessing!public! !
!ILElement categoriesFor: #attributeAt:put:!accessing!public! !
!ILElement categoriesFor: #attributeError:!error handling!public! !
!ILElement categoriesFor: #attributes!accessing!public! !
!ILElement categoriesFor: #beforePrintHtml!printing!public! !
!ILElement categoriesFor: #build:!building!public! !
!ILElement categoriesFor: #contentType!accessing!public! !
!ILElement categoriesFor: #doesNotUnderstandAttribute:!error handling!public! !
!ILElement categoriesFor: #hash!comparing!public! !
!ILElement categoriesFor: #printAttribute:on:!printing!public! !
!ILElement categoriesFor: #printCloseTagOn:!printing!public! !
!ILElement categoriesFor: #printHtmlOn:!printing!public! !
!ILElement categoriesFor: #printJsonOn:!printing!public! !
!ILElement categoriesFor: #printOpenTagOn:!printing!public! !
!ILElement categoriesFor: #respondOn:!converting!public! !
!ILElement categoriesFor: #tag!accessing!public! !
!ILElement categoriesFor: #text:!adding/conveniance!public! !
!ILElement categoriesFor: #xml!adding/conveniance!public! !
