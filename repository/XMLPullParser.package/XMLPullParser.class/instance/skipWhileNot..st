tag-based api
skipWhileNot: tagName 

	[ self isNot: tagName ] whileTrue: [ self skipAny ]