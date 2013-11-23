tag-based api
whileAnyPeek: aBlock 
	[self isStartTag] whileTrue: [self matchAnyPeek: aBlock]