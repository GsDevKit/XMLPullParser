testing
testCDATA
	| parser |
	parser := XMLPullParser parse: '<document><![CDATA[This is a test & stuff in here doesn''t have to be escaped]]></document>'.
	self assert: parser isStartDocument.
	self assert: (parser next isStartTag: 'document').
	self assert: parser next isText.
	self assert: parser text = 'This is a test & stuff in here doesn''t have to be escaped'.
	self assert: (parser isEndTag: 'document').
	self assert: parser next isEndDocument