tag-based api
matchAnyTake: aBlock 
	"Throws an exception if the current event isn’t a start tag. If it succeeds, then aBlock is evaluated after consuming the start tag event. The block can take zero or one argument. If it takes one argument then the start tag event that was consumed is passed to the block, which can be useful for processing the attributes. After the block executes the parser must be at an end tag matching the start tag. This end tag is then consumed."

	| result |
	result := aBlock numArgs = 1 
		ifTrue: 
			[ | tag |
			tag := self current.
			self consumeStartTag.
			aBlock value: tag ]
		ifFalse: 
			[ self consumeStartTag.
			aBlock value ].
	self consumeEndTag.
	^ result