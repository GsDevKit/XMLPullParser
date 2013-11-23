tag-based api
skip: tagName 
	"Throw an exception if current event isn't a start tag, or doesn't match a supplied tag name. If it succeeds then it consumes the start tag, and all events up to and including the matching end tag, taking correct account of tag nesting. Thus it doesn't stop at the first matching end tag, but rather it keeps a count of the nesting depth."

	self consumeStartTag: tagName.
	[self isEndTag] whileFalse: 
			[| event |
			event := self current.
			event isText 
				ifTrue: [self next]
				ifFalse: 
					[event isStartTag 
						ifTrue: [self skipAny]
						ifFalse: [XPPStructureException raiseSignal: 'Unexpected element']]].
	self consumeEndTag: tagName