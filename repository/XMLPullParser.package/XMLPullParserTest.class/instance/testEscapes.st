testing
testEscapes
	| parser |
	parser := XMLPullParser parse: '<tag>Escaped &amp; Unescaped: &lt;&gt;</tag>'.
	self assert: parser isStartDocument.
	self assert: (parser next isStartTag: 'tag').
	self assert: parser next isText.
	self assert: (parser text = 'Escaped & Unescaped: <>').
	self assert: parser next isEndDocument