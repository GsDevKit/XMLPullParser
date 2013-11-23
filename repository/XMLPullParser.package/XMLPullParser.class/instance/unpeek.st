streaming
unpeek
	peekChar ifNotNil: 
			[stream pushBack: (String with: peekChar).
			peekChar := nil]