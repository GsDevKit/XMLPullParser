consuming events
consumeStartTag: tagName
	self mustBeStartTag: tagName.
	self next.