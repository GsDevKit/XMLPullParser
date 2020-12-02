tag-based api
skipWhileNotAny: tagCollection

	" Answer an <Association> of tag name -> tag text. Skip all nodes in tagCollection "
	
	tagCollection do: [ : tagName | 
		| tag |
		[ (self isNot: tagName) and: [ self atEnd not ] ] whileTrue: [ self skipAny ].
		tag := self tag.
		self next.
		^ tag name -> self peekText ]