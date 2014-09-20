testing
testHexEntity
	| parser |
	
	parser := XMLPullParser parse: '
		<tag contents="one&#xA;two" />'.
	
	self assert: (parser next at: #contents) equals: ('one', Character lf asString,'two')