testing
testEmpty
	| parser |
	parser := XMLPullParser parse: ''.
	self assert: parser isStartDocument.
	self assert: parser next isEndDocument.