testing
testDecimalEntity
	| parser |
	
	parser := XMLPullParser parse: '
		<tag contents="one&#10;two" />'.
	
	self assert: (parser next at: #contents) equals: (Character lf join: #(one two))