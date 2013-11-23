tokenizing
nextNode
	| nextChar |
	"Skip < "
	self nextChar.
	nextChar := self peek.
	nextChar == $! ifTrue: [
		"Skip !"
		self nextChar.
		nextChar := self peek.
		nextChar == $- ifTrue: [^self nextComment].
		nextChar == $[ ifTrue: [^self nextCDataOrConditional].
		^self parsingMarkup
			ifTrue: [self nextMarkupDeclaration]
			ifFalse: [self nextDocType]].
	nextChar == $? ifTrue: [^self nextPI].
	^self nextTag