"Filed out from Dolphin Smalltalk 7"!

ILBuildable subclass: #ILRSSMock
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRSSMock guid: (GUID fromString: '{2ea6f922-8610-40bc-afa1-43048e815efc}')!
ILRSSMock comment: ''!
!ILRSSMock categoriesForClass!Iliad-More-RSS! !
!ILRSSMock methodsFor!

buildContents	| e rss channel item desc |	desc := String writeStream.	ILHTMLBuilderElement new 			build: ILCounter new;			printHtmlOn: desc.		e := ILRSSElement new.		rss := e rss 			blogChannel: 'http://google.com';			yourself.		channel :=  rss channel.		channel  title: 'coucou'.		channel link: 'www.google.com'.		item := channel item.		item title: 'Item'.		item link: 'www.google.com'.		item description: desc contents.		item pubDate: Date today.		^e! !
!ILRSSMock categoriesFor: #buildContents!private! !

