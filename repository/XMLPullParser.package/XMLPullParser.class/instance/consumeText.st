consuming events
consumeText
	| text |
	self isText 
		ifTrue: 
			[self mustBeText.
			text := self current text.
			self next.
			^text]
		ifFalse: [^'']