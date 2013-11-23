delegating accessors
text
	^ self isText 
		ifTrue: 
			[| text |
			text := self current text.
			self next.
			text]
		ifFalse: ['']