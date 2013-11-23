tag-based api
whileAnyPeek: aBlock separatedBy: sepBlock 
	| doneFirst |
	doneFirst := false.
	[self isStartTag] whileTrue: 
			[| tag |
			tag := self current.
			doneFirst ifTrue: [sepBlock value] ifFalse: [doneFirst := true].
			aBlock numArgs = 1 ifTrue: [aBlock value: tag] ifFalse: [aBlock value]]