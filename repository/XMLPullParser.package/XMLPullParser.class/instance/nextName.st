tokenizing
nextName
	| nextChar |
	nameBuffer reset.
	self peek == $. ifTrue: [self malformedError: 'Character expected.'].
	
	[(nextChar := self peek) ifNil: [self errorExpected: 'Character expected.'].
	NameDelimiters at: nextChar asciiValue] 
			whileFalse: [nameBuffer nextPut: self nextChar].
	^ self fastStreamStringContents: nameBuffer