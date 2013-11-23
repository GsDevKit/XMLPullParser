tag-based api
match: tagName take: aBlock 
	"Throws an exception if the current event isn’t a start tag matching the given tag name. If it succeeds, then aBlock is evaluated after consuming the start tag event. The block can take zero or one argument. If it takes one argument then the start tag event that was consumed is passed to the block, which can be useful for processing the attributes. After the block executes, the parser must be at an end tag matching the start tag. This end tag is then consumed."

	self mustBeStartTag: tagName.
	^self matchAnyTake: aBlock