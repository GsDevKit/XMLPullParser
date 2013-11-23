tag-based api
if: tagName take: aBlock 
	(self is: tagName) ifTrue: [self matchAnyTake: aBlock]