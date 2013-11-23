testing
testParsingError

	self should: [(XMLPullParser parse: '<body') next] raise: XMLPullParsingError .
	