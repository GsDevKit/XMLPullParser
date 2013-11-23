tag-based api
whileAnyTake: aBlock separatedBy: sepBlock 
	| doneFirst |
	doneFirst := false.
	[self isStartTag] whileTrue: 
			[| tag |
			tag := self current.
			self consumeStartTag.
			doneFirst ifTrue: [sepBlock value] ifFalse: [doneFirst := true].
			aBlock numArgs = 1 ifTrue: [aBlock value: tag] ifFalse: [aBlock value].
			self consumeEndTag]