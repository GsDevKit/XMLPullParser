tag-based api
while: tagName peek: aBlock 
	[self is: tagName] whileTrue: [self matchAnyPeek: aBlock]