tag-based api
while: tagName take: aBlock 
	[self is: tagName] whileTrue: [self matchAnyTake: aBlock]