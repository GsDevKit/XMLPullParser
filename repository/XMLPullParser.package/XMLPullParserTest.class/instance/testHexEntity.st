testing
testHexEntity
	| parser |
	
	parser := XMLPullParser parse: '
		<tag contents="one&#xA;two" />'.
	
	self assert: (parser next at: #contents) equals: (Character lf join: #(one two))