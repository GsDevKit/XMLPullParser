tokenizing
nextPCData
	| resultStream nextPeek nextChar referenceString entityValue |
	resultStream := (String new: 10) writeStream.
	
	[nextPeek := nextChar := self peek.
	nextChar ifNil: [self errorExpected: 'Character expected.'].
	nextChar == $& 
		ifTrue: 
			[self nextChar.
			self peek == $# 
				ifTrue: 
					[nextPeek := nil.
					nextChar := self nextCharReference]
				ifFalse: 
					[referenceString := self nextLiteral.
					self nextChar == $; ifFalse: [self errorExpected: ';'].
					entityValue := self entity: referenceString.
					(self class isCharEscape: entityValue) 
						ifTrue: 
							[nextPeek := nil.
							nextChar := entityValue]
						ifFalse: 
							[entityValue := entityValue asString.
							entityValue isEmpty 
								ifTrue: [nextPeek := nextChar := nil]
								ifFalse: 
									[self pushStream: (ReadStream on: entityValue asString).
									nextPeek := nextChar := self peek]]]]
		ifFalse: [nextPeek == $< ifFalse: [self nextChar]].
	nextPeek == $<] 
			whileFalse: [nextChar ifNotNil: [resultStream nextPut: nextChar]].
	eventQueue addLast: (XPPText new text: resultStream contents)