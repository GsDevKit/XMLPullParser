tag-based api
skipIf: tagName 
	(self is: tagName) ifTrue: [ self skipAny ].