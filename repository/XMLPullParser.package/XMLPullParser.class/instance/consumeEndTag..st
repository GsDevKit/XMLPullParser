consuming events
consumeEndTag: tagName
	self mustBeEndTag: tagName.
	self next.