testing
testDecimalEntity
	| parser |
	
	parser := XMLPullParser parse: '
		<tag contents="one&#10;two" />'.
	
	self assert: (parser next at: #contents) equals: ('one', Character lf asString,'two')