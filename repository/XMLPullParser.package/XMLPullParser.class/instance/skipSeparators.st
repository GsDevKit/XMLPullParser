streaming
skipSeparators
	| nextChar |
	[((nextChar := self peek) == nil)
		or: [SeparatorTable at: nextChar asciiValue+1]]
		whileFalse: [self nextChar].
	(nestedStreams == nil or: [self atEnd not])
		ifFalse: [
			self checkNestedStream.
			self skipSeparators]