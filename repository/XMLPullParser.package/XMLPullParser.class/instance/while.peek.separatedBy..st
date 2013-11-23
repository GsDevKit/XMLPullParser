tag-based api
while: tagName peek: aBlock separatedBy: sepBlock 
	| doneFirst |
	doneFirst := false.
	[self is: tagName] whileTrue: 
			[doneFirst ifTrue: [sepBlock value] ifFalse: [doneFirst := true].
			self matchAnyPeek: aBlock]