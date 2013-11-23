tag-based api
textIfAnyElse: aBlock
	^self ifAnyTake: [self text] else: [ aBlock value ].