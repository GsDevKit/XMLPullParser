tag-based api
match: tagName peek: aBlock 
	"Throws an exception if the current event isn’t a start tag matching the given tag name. If it succeeds, then aBlock is evaluated without consuming the start tag event. The block can take zero or one argument. If it takes one argument then the cur
rent event is passed to the block."

	self mustBeStartTag: tagName.
	^self matchAnyPeek: aBlock