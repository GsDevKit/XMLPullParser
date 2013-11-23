tag-based api
skipWhile: tagName 
	[self is: tagName] whileTrue: [self skipAny]