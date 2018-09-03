"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILRSSElement
	instanceVariableNames: 'tag'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRSSElement guid: (GUID fromString: '{c011458d-5e1e-4fa3-a0d5-626cb8f7d977}')!
ILRSSElement comment: ''!
!ILRSSElement categoriesForClass!Iliad-More-RSS! !
!ILRSSElement methodsFor!

author	^self add: (ILRSSElement new 		tag: 'author';		yourself)!

author: aString	^self author		text: aString;		yourself!

category	^self add: ILRSSCategoryElement new!

category: aString	^self category		text: aString;		yourself!

channel	^self add: (ILRSSElement new		tag: 'channel';		yourself)!

cloud	^self add: ILRSSCloudElement new!

comment	^self add: (ILRSSElement new 		tag: 'wfw:comment';		yourself)!

comment: aString	^self comment		text: aString;		yourself!

comments	^self add: ILRSSCommentsElement new !

comments: anUrl	^self comments		text: anUrl;		yourself!

contentType	^'application/rss+xml'!

copyright	^self add: (ILRSSElement new		tag: 'copyright';		yourself)!

copyright: aString	^self copyright		text: aString;		yourself!

description	^self add: ILRSSDescriptionElement new!

description: aString	^ self description		text: aString;		yourself!

enclosure	^self add: ILRSSEnclosureElement new !

generator	^self add: (ILRSSElement new		tag: 'generator';		yourself)!

generator: aString	^self generator		text: aString;		yourself!

guid	^self add: ILRSSGuidElement new!

guid: anUrl	^self guid		text: anUrl		yourself!

image	^self add: (ILRSSElement new		tag: 'image';		yourself)!

image: aString	^self image		text: aString;		yourself!

item	^self add: (ILRSSElement new		tag: 'item';		yourself)!

language	^self add: (ILRSSElement new 		tag: 'language';		yourself)!

language: aString	^self language		text: aString;		yourself!

lastBuildDate	^self add: (ILRSSElement new		tag: 'lastBuildDate';		yourself)!

lastBuildDate: aDate	^self lastBuildDate		text: ((GRPrinter rfc822WithTimeZone: 'GMT') print: aDate asDateAndTime);		yourself!

link	^self add: (ILRSSElement new 		tag: 'link';		yourself)!

link: aString	^self link		text: aString;		yourself!

managingEditor	^self add: (ILRSSElement new		tag: 'managingEditor';		yourself)!

managingEditor: aString	^self managingEditor		text: aString;		yourself!

pubDate	^self add: (ILRSSElement new		tag: 'pubDate';		yourself)!

pubDate: aDate	^self pubDate		text: ((GRPrinter rfc822WithTimeZone: 'GMT') print: aDate asDateAndTime);		yourself!

rating	^self add: (ILRSSElement new 		tag: 'rating';		yourself)!

rating: aString	^self rating		text: aString;		yourself!

rss	^self add: ILRSSRssElement new!

skipDays	^self add: (ILRSSElement new		tag: 'skipDays';		yourself)!

skipDays: aString	^self skipDays		text: aString;		yourself!

skipHours	^self add: (ILRSSElement new 		tag: 'skipHours';		yourself)!

skipHours: aString	^self skipHours		text: aString;		yourself!

source	^self add: ILRSSSourceElement new !

source: aString	^self source		text: aString;		yourself!

tag	^tag!

tag: aString	tag := aString!

textInput	^self add: (ILRSSElement new		tag: 'textInput';		yourself)!

textInput: aString	^self textInput		text: aString;		yourself!

title	^self add: (ILRSSElement new 		tag: 'title';		yourself)!

title: aString	^self title		text: aString;		yourself!

ttl	^self add: (ILRSSElement new 		tag: 'ttl';		yourself)!

ttl: aString	^self ttl		text: aString;		yourself!

webMaster	^self add: (ILRSSElement new		tag: 'webMaster';		yourself)!

webMaster: aString	^self webMaster		text: aString;		yourself! !
!ILRSSElement categoriesFor: #author!adding/conveniance!public! !
!ILRSSElement categoriesFor: #author:!adding/conveniance!public! !
!ILRSSElement categoriesFor: #category!adding/conveniance!public! !
!ILRSSElement categoriesFor: #category:!adding/conveniance!public! !
!ILRSSElement categoriesFor: #channel!adding/conveniance!public! !
!ILRSSElement categoriesFor: #cloud!adding/conveniance!public! !
!ILRSSElement categoriesFor: #comment!adding/conveniance!public! !
!ILRSSElement categoriesFor: #comment:!adding/conveniance!public! !
!ILRSSElement categoriesFor: #comments!adding/conveniance!public! !
!ILRSSElement categoriesFor: #comments:!adding/conveniance!public! !
!ILRSSElement categoriesFor: #contentType!accessing!public! !
!ILRSSElement categoriesFor: #copyright!adding/conveniance!public! !
!ILRSSElement categoriesFor: #copyright:!adding/conveniance!public! !
!ILRSSElement categoriesFor: #description!adding/conveniance!public! !
!ILRSSElement categoriesFor: #description:!adding/conveniance!public! !
!ILRSSElement categoriesFor: #enclosure!accessing!public! !
!ILRSSElement categoriesFor: #generator!adding/conveniance!public! !
!ILRSSElement categoriesFor: #generator:!adding/conveniance!public! !
!ILRSSElement categoriesFor: #guid!adding/conveniance!public! !
!ILRSSElement categoriesFor: #guid:!adding/conveniance!public! !
!ILRSSElement categoriesFor: #image!adding/conveniance!public! !
!ILRSSElement categoriesFor: #image:!adding/conveniance!public! !
!ILRSSElement categoriesFor: #item!adding/conveniance!public! !
!ILRSSElement categoriesFor: #language!adding/conveniance!public! !
!ILRSSElement categoriesFor: #language:!adding/conveniance!public! !
!ILRSSElement categoriesFor: #lastBuildDate!adding/conveniance!public! !
!ILRSSElement categoriesFor: #lastBuildDate:!adding/conveniance!public! !
!ILRSSElement categoriesFor: #link!adding/conveniance!public! !
!ILRSSElement categoriesFor: #link:!adding/conveniance!public! !
!ILRSSElement categoriesFor: #managingEditor!adding/conveniance!public! !
!ILRSSElement categoriesFor: #managingEditor:!adding/conveniance!public! !
!ILRSSElement categoriesFor: #pubDate!adding/conveniance!public! !
!ILRSSElement categoriesFor: #pubDate:!adding/conveniance!public! !
!ILRSSElement categoriesFor: #rating!adding/conveniance!public! !
!ILRSSElement categoriesFor: #rating:!adding/conveniance!public! !
!ILRSSElement categoriesFor: #rss!adding/conveniance!public! !
!ILRSSElement categoriesFor: #skipDays!adding/conveniance!public! !
!ILRSSElement categoriesFor: #skipDays:!adding/conveniance!public! !
!ILRSSElement categoriesFor: #skipHours!adding/conveniance!public! !
!ILRSSElement categoriesFor: #skipHours:!adding/conveniance!public! !
!ILRSSElement categoriesFor: #source!accessing!public! !
!ILRSSElement categoriesFor: #source:!accessing!public! !
!ILRSSElement categoriesFor: #tag!accessing!public! !
!ILRSSElement categoriesFor: #tag:!accessing!public! !
!ILRSSElement categoriesFor: #textInput!adding/conveniance!public! !
!ILRSSElement categoriesFor: #textInput:!adding/conveniance!public! !
!ILRSSElement categoriesFor: #title!adding/conveniance!public! !
!ILRSSElement categoriesFor: #title:!adding/conveniance!public! !
!ILRSSElement categoriesFor: #ttl!adding/conveniance!public! !
!ILRSSElement categoriesFor: #ttl:!adding/conveniance!public! !
!ILRSSElement categoriesFor: #webMaster!adding/conveniance!public! !
!ILRSSElement categoriesFor: #webMaster:!adding/conveniance!public! !

