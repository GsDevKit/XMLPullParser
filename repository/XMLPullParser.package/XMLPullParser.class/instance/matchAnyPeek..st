tag-based api
matchAnyPeek: aBlock 
	"Throws an exception if the current event isn’t a start tag. If it succeeds, then then aBlock is evaluated without consuming the start tag event. The block can take zero or one argument. If it takes one argument then the current event is passed to the block."
	self mustBeStartTag.
	^aBlock numArgs = 1 
		ifTrue: [aBlock value: self current]
		ifFalse: [aBlock value]