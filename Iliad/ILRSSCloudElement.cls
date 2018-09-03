"Filed out from Dolphin Smalltalk 7"!

ILRSSElement subclass: #ILRSSCloudElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRSSCloudElement guid: (GUID fromString: '{f4705cf8-ec1a-4893-883b-fbe0bf10fe42}')!
ILRSSCloudElement comment: ''!
!ILRSSCloudElement categoriesForClass!Iliad-More-RSS! !
!ILRSSCloudElement methodsFor!

domain: anUrl	self attributeAt: 'domain' put: anUrl greaseString!

path: aPath	self attributeAt: 'path' put: aPath greaseString!

port: anInteger	self attributeAt: 'port' put: anInteger greaseString!

protocol: aProtocol	self attributeAt: 'protocol' put: aProtocol greaseString!

registerProcedure: aNamespace	self attributeAt: 'registerProcedure' put: aNamespace greaseString!

tag	^'cloud'! !
!ILRSSCloudElement categoriesFor: #domain:!accessing attributes!public! !
!ILRSSCloudElement categoriesFor: #path:!accessing attributes!public! !
!ILRSSCloudElement categoriesFor: #port:!accessing attributes!public! !
!ILRSSCloudElement categoriesFor: #protocol:!accessing attributes!public! !
!ILRSSCloudElement categoriesFor: #registerProcedure:!accessing attributes!public! !
!ILRSSCloudElement categoriesFor: #tag!accessing!public! !

