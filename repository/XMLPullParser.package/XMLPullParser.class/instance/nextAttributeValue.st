streaming
nextAttributeValue
	| delimiterChar attributeValueStream nextChar nextPeek referenceString entityValue |
	delimiterChar := self nextChar.
	(delimiterChar == $" or: [delimiterChar == $']) 
		ifFalse: [self errorExpected: 'Attribute value delimiter expected.'].
	attributeValueStream := attributeBuffer reset.
	
	[nextPeek := nextChar := self nextChar.
	nextChar ifNil: [self errorExpected: 'Character expected.'].
	nextChar == $& 
		ifTrue: 
			[self peek == $# 
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
									nextPeek := nextChar := self nextChar]]]].
	nextPeek == delimiterChar] 
			whileFalse: [nextChar ifNotNil: [attributeValueStream nextPut: nextChar]].
	^ self fastStreamStringContents: attributeValueStream