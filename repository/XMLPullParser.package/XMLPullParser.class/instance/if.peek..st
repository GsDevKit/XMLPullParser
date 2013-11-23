tag-based api
if: tagName peek: aBlock 
	(self is: tagName) ifTrue: [self matchAnyPeek: aBlock]