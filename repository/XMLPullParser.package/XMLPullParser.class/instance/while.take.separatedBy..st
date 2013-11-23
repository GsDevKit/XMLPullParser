tag-based api
while: tagName take: aBlock separatedBy: sepBlock 
	| doneFirst |
	doneFirst := false.
	[self is: tagName] whileTrue: 
			[| tag |
			tag := self current.
			self consumeStartTag.
			doneFirst ifTrue: [sepBlock value] ifFalse: [doneFirst := true].
			aBlock numArgs = 1 ifTrue: [aBlock value: tag] ifFalse: [aBlock value].
			self consumeEndTag]