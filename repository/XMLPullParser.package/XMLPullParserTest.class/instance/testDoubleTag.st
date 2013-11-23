testing
testDoubleTag
	| parser |
	parser := XMLPullParser parse: '<document><body></body></document>'.
	self assert: parser isStartDocument.
	self assert: (parser next isStartTag: 'document').
	self assert: (parser next isStartTag: 'body').
	self assert: (parser next isEndTag: 'body').
	self assert: (parser next isEndTag: 'document').
	self assert: parser next isEndDocument