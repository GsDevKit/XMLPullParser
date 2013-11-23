streaming
streamEncoding: encodingString

	| converterClass |
	Smalltalk at: #TextConverter ifPresent: [:tc | 
		(stream respondsTo: #converter:) ifTrue: [
			converterClass := tc defaultConverterClassForEncoding: encodingString asLowercase.
			converterClass ifNotNil: [stream converter: converterClass new]]]