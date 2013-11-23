tokenizing
nextCharReference
	| base charValue |
	self nextChar == $#
		ifFalse: [self errorExpected: 'character reference'].
	base := self peek == $x
		ifTrue: [
			self nextChar.
			16]
		ifFalse: [10].

	charValue := [self readNumberBase: base] on: Error do: [:ex | self errorExpected: 'Number.'].
	(self nextChar) == $;
		ifFalse: [self errorExpected: '";"'].
	^Character value: charValue