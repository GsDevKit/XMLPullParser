tag-based api
whileAnyTake: aBlock 
	[self isStartTag] whileTrue: [self matchAnyTake: aBlock]