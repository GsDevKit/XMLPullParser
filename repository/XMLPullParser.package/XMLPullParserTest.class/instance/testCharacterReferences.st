testing
testCharacterReferences
	| parser |
	parser := XMLPullParser parse: '<document><name>&#35;&#40;&amp;&#41;</name></document>'.
	self assert: parser isStartDocument.
	self assert: (parser next isStartTag: 'document').
	self assert: (parser next isStartTag: 'name').
	self assert: parser next isText.
	self assert: parser text = '#(&)'.
	self assert: (parser isEndTag: 'name').
	self assert: (parser next isEndTag: 'document').
	self assert: parser next isEndDocument