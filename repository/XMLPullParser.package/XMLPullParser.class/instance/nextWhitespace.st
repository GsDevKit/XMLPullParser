tokenizing
nextWhitespace
	| nextChar |
	
	[(nextChar := self peek) == nil 
		or: [SeparatorTable at: nextChar asciiValue + 1 ifAbsent: [true]]] 
			whileFalse: [self nextChar].
	(nestedStreams == nil or: [self atEnd not]) 
		ifFalse: 
			[self checkNestedStream.
			self nextWhitespace]