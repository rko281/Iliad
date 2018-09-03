﻿"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #GRCodec
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRCodec guid: (GUID fromString: '{75e73c97-c44f-48ed-a6af-2486d0650e00}')!
GRCodec comment: 'A codec defines how Seaside communicates without the outside world and how outside data is converted into the image (decoding) and back outside the image (encoding). The codec is essentially a stream factory that provides wrappers around standard streams. All streams do support binary mode for non-converted transfer.'!
!GRCodec categoriesForClass!Grease-Core-Text! !
!GRCodec methodsFor!

decode: aString

decoderFor: aReadStream

encode: aString

encoderFor: aWriteStream

name

printOn: aStream

url
!GRCodec categoriesFor: #decode:!convenience!public! !
!GRCodec categoriesFor: #decoderFor:!conversion!public! !
!GRCodec categoriesFor: #encode:!convenience!public! !
!GRCodec categoriesFor: #encoderFor:!conversion!public! !
!GRCodec categoriesFor: #name!accessing!public! !
!GRCodec categoriesFor: #printOn:!printing!public! !
!GRCodec categoriesFor: #url!accessing!public! !

!GRCodec class methodsFor!

allCodecs

basicForEncoding: aString

codecs

forEncoding: aString

supportsEncoding: aString

unsupportedEncoding: aString
!GRCodec class categoriesFor: #allCodecs!accessing!public! !
!GRCodec class categoriesFor: #basicForEncoding:!private! !
!GRCodec class categoriesFor: #codecs!accessing!public! !
!GRCodec class categoriesFor: #forEncoding:!instance creation!public! !
!GRCodec class categoriesFor: #supportsEncoding:!public!testing! !
!GRCodec class categoriesFor: #unsupportedEncoding:!private! !
