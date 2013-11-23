tokenizing
nextLiteral
	| resultStream nextChar resultString |
	resultStream := (String new: 10) writeStream.
	((nextChar := self peek) isLetter or: [nextChar == $_]) 
		ifFalse: [self errorExpected: 'Name literal.'].
	
	[nextChar := self peek.
	(LiteralChars at: nextChar asciiValue + 1) 
		ifTrue: 
			[nextChar == $& 
				ifTrue: 
					[nextChar := self nextChar.
					resultStream nextPut: (self peek == $# 
								ifTrue: [self nextCharReference]
								ifFalse: [^ resultStream contents])]
				ifFalse: [resultStream nextPut: self nextChar]]
		ifFalse: 
			[resultString := resultStream contents.
			resultString isEmpty 
				ifTrue: [self errorExpected: 'Name literal']
				ifFalse: [^ resultString]]] 
			repeat