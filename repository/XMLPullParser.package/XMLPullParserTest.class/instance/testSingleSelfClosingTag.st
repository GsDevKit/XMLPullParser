testing
testSingleSelfClosingTag
	| parser |
	parser := XMLPullParser parse: '<selfClose />'.
	self assert: parser isStartDocument.
	self assert: (parser next isStartTag: 'selfClose').
	self assert: parser next isEndTag.
	self assert: parser next isEndDocument.