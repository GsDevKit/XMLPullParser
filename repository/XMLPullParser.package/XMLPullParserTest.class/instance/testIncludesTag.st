testing
testIncludesTag

	| parser tagCollection  |

	parser := XMLPullParser parse: '<document><body></body></document>'.
	tagCollection :=  { 'body' }.
	[ parser atEnd not and: [ (parser includesTag: tagCollection) not]  ]
		whileTrue: [ parser next ].
	self assert: (parser includesTag: tagCollection).