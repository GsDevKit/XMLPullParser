doc type
nextDocType
	| declType |
	declType := self nextLiteral.
	declType = 'DOCTYPE'
		ifTrue: [
			^self nextUpToAll: '>'].