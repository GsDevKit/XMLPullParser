tag-based api
textOf: tagName 
	^self match: tagName take: [self text]