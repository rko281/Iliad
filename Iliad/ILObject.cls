"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #ILObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILObject guid: (GUID fromString: '{813c35dd-9bf1-4892-933d-1e1c20640c2e}')!
ILObject comment: 'ILObject is the base class for all Iliad classes. It guarantees that #initialize is send upon object creation. Additionally it provides convienience methods for accessing the current context, session and application.'!
!ILObject categoriesForClass!Iliad-Core-Utilities! !
!ILObject methodsFor!

application	^ self context application!

context	^ ILCurrentContext value!

request	^ self context request!

session	^ self context		ifNil: [ nil ]		ifNotNil: [ : arg | self context session ]!

urlBuilder	^ self context urlBuilder! !
!ILObject categoriesFor: #application!accessing!public! !
!ILObject categoriesFor: #context!accessing!public! !
!ILObject categoriesFor: #request!accessing!public! !
!ILObject categoriesFor: #session!accessing!public! !
!ILObject categoriesFor: #urlBuilder!accessing!public! !

!ILObject class methodsFor!

ACKNOWLEDGEMENTS	^'"Acknowledgements----------------The following parts of Iliad reuses portions of code from the Seaside framework:- The Widget class and its decorators- The HTTP abstraction library- The Swazoo adapterSeaside is licenced under the MIT Licence.Copyright © 2001-2009 Avi Bryant, Julian FitzellCopyright © 2007-2009 Lukas Renggli, Michel Bany, Philippe MarschallCopyright © Seaside Contributorshttp://www.seaside.st/about/licence----------------The JSON library is adapted from http://www.squeaksource.com/Diplomacy/ written by Avi Bryant and licenced under the MIT licence.----------------The Application class reuses code from HttpView2.HttpView2 is written by Göran Krampe and Giovanni Corriga and licencedunder the MIT licence.http://www.squeaksource.com/HttpView2----------------The Element hierarchy is widely inspired from the Aida/Web web framework, written by Janko Mivsek.Aida/Web is licenced under the MIT licenceCopyright (c) 2000-2007 Janko Miv\u0161ekCopyright (c) 2007-2009 Janko Miv\u0161ek, Nicolas Petton, contributorshttp://www.aidaweb.si----------------The javascript layer is inspired by the LISP web framework Weblockshttp://weblocks.viridian-project.de/"'!

LICENCE	^'"Copyright (c) 2008-2017 Nicolas Petton <petton.nicolas@gmail.com>,Sébastien Audier <sebastien.audier@gmail.com>Squeak/Pharo maintainer (2010) : Steven Costiou <steven.costiou@gmail.com>Pharo maintainer (2013-2017) : Hernán Morales Durand <hernan.morales@gmail.com>Pharo maintainer (2015-2017) : Benoit Astruc <benoit.astruc@free.fr>Permission is hereby granted, free of charge, to any person obtaininga copy of this software and associated documentation files (the ''Software''), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.THE SOFTWARE IS PROVIDED ''AS IS'', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.  "'!

THANKS	^'"We would also like to thank code contributors, testers, people writing documentation, and all the people from the GNU-Smalltalk community.Paolo BonziniStefan SchmiedlGerman ArduinoBerto ed SeraJoachim JaeckelJanko MivsekGwenael CasaccioSamuel LebeauEli GreenBenoit AstrucHernán Morales Durand"'! !
!ILObject class categoriesFor: #ACKNOWLEDGEMENTS!public!readme! !
!ILObject class categoriesFor: #LICENCE!public!readme! !
!ILObject class categoriesFor: #THANKS!public!readme! !

