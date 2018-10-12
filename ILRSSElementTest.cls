"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILRSSElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRSSElementTest guid: (GUID fromString: '{3281a89d-3dd1-4d2c-8cbe-2ffa3142285d}')!
ILRSSElementTest comment: ''!
!ILRSSElementTest categoriesForClass!Iliad-Tests-RSS! !
!ILRSSElementTest methodsFor!

setUp	e := ILRSSElement new!

testAuthor	| author |	author := e author.	self assert: (author isKindOf: ILRSSElement).	self assert: author tag equals: 'author'!

testCategory	| category |	category := e category.	self assert: (category isKindOf: ILRSSCategoryElement)!

testChannel	| channel |	channel := e channel.	self assert: (channel isKindOf: ILRSSElement).	self assert: channel tag equals: 'channel'!

testCloud	| cloud |	cloud := e cloud.	self assert: (cloud isKindOf: ILRSSCloudElement)!

testComment	| comment |	comment := e comment.	self assert: (comment isKindOf: ILRSSElement).	self assert: comment tag equals: 'wfw:comment'!

testComments	| comments |	comments := e comments.	self assert: (comments isKindOf: ILRSSCommentsElement)!

testCopyright	| copyright |	copyright := e copyright.	self assert: (copyright isKindOf: ILRSSElement).	self assert: copyright tag equals: 'copyright'!

testDescription	| description |	description := e description.	self assert: (description isKindOf: ILRSSElement).	self assert: description tag equals: 'description'!

testEnclosure	| enclosure |	enclosure := e enclosure.	self assert: (enclosure isKindOf: ILRSSEnclosureElement)!

testGenerator	| generator |	generator := e generator.	self assert: (generator isKindOf: ILRSSElement).	self assert: generator tag equals: 'generator'!

testGuid	| guid |	guid := e guid.	self assert: (guid isKindOf: ILRSSGuidElement)!

testImage	| image |	image := e image.	self assert: (image isKindOf: ILRSSElement).	self assert: image tag equals: 'image'!

testItem	| item |	item := e item.	self assert: (item isKindOf: ILRSSElement).	self assert: item tag equals: 'item'!

testLanguage	| language |	language := e language.	self assert: (language isKindOf: ILRSSElement).	self assert: language tag equals: 'language'!

testLastBuildDate	| lastBuildDate |	lastBuildDate := e lastBuildDate.	self assert: (lastBuildDate isKindOf: ILRSSElement).	self assert: lastBuildDate tag equals: 'lastBuildDate'!

testLink	| link |	link := e link.	self assert: (link isKindOf: ILRSSElement).	self assert: link tag equals: 'link'!

testManagingEditor	| managingEditor |	managingEditor := e managingEditor.	self assert: (managingEditor isKindOf: ILRSSElement).	self assert: managingEditor tag equals: 'managingEditor'!

testPubDate	| pubDate |	pubDate := e pubDate.	self assert: (pubDate isKindOf: ILRSSElement).	self assert: pubDate tag equals: 'pubDate'!

testRating	| rating |	rating := e rating.	self assert: (rating isKindOf: ILRSSElement).	self assert: rating tag equals: 'rating'!

testRss	| rss |	rss := e rss.	self assert: (rss isKindOf: ILRSSRssElement)!

testSkipDays	| skipDays |	skipDays := e skipDays.	self assert: (skipDays isKindOf: ILRSSElement).	self assert: skipDays tag equals: 'skipDays'!

testSkipHours	| skipHours |	skipHours := e skipHours.	self assert: (skipHours isKindOf: ILRSSElement).	self assert: skipHours tag equals: 'skipHours'!

testSource	| source |	source := e source.	self assert: (source isKindOf: ILRSSSourceElement)!

testTextInput	| textInput |	textInput := e textInput.	self assert: (textInput isKindOf: ILRSSElement).	self assert: textInput tag equals: 'textInput'!

testTitle	| title |	title := e title.	self assert: (title isKindOf: ILRSSElement).	self assert: title tag equals: 'title'!

testTtl	| ttl |	ttl := e ttl.	self assert: (ttl isKindOf: ILRSSElement).	self assert: ttl tag equals: 'ttl'!

testWebMaster	| webMaster |	webMaster := e webMaster.	self assert: (webMaster isKindOf: ILRSSElement).	self assert: webMaster tag equals: 'webMaster'! !
!ILRSSElementTest categoriesFor: #setUp!public!running! !
!ILRSSElementTest categoriesFor: #testAuthor!public!testing! !
!ILRSSElementTest categoriesFor: #testCategory!public!testing! !
!ILRSSElementTest categoriesFor: #testChannel!public!testing! !
!ILRSSElementTest categoriesFor: #testCloud!public!testing! !
!ILRSSElementTest categoriesFor: #testComment!public!testing! !
!ILRSSElementTest categoriesFor: #testComments!public!testing! !
!ILRSSElementTest categoriesFor: #testCopyright!public!testing! !
!ILRSSElementTest categoriesFor: #testDescription!public!testing! !
!ILRSSElementTest categoriesFor: #testEnclosure!public!testing! !
!ILRSSElementTest categoriesFor: #testGenerator!public!testing! !
!ILRSSElementTest categoriesFor: #testGuid!public!testing! !
!ILRSSElementTest categoriesFor: #testImage!public!testing! !
!ILRSSElementTest categoriesFor: #testItem!public!testing! !
!ILRSSElementTest categoriesFor: #testLanguage!public!testing! !
!ILRSSElementTest categoriesFor: #testLastBuildDate!public!testing! !
!ILRSSElementTest categoriesFor: #testLink!public!testing! !
!ILRSSElementTest categoriesFor: #testManagingEditor!public!testing! !
!ILRSSElementTest categoriesFor: #testPubDate!public!testing! !
!ILRSSElementTest categoriesFor: #testRating!public!testing! !
!ILRSSElementTest categoriesFor: #testRss!public!testing! !
!ILRSSElementTest categoriesFor: #testSkipDays!public!testing! !
!ILRSSElementTest categoriesFor: #testSkipHours!public!testing! !
!ILRSSElementTest categoriesFor: #testSource!public!testing! !
!ILRSSElementTest categoriesFor: #testTextInput!public!testing! !
!ILRSSElementTest categoriesFor: #testTitle!public!testing! !
!ILRSSElementTest categoriesFor: #testTtl!public!testing! !
!ILRSSElementTest categoriesFor: #testWebMaster!public!testing! !

