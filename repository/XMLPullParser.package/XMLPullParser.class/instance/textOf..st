tag-based api
textOf: tagName 
	" Consume Start and End of tagName answering the text inside tag. Current node must be a start tag "

	^ self match: tagName take: [ self text ]