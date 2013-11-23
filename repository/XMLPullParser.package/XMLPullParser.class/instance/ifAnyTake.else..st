tag-based api
ifAnyTake: aBlock else: elseBlock
	^self isStartTag ifTrue: [self matchAnyTake: aBlock] ifFalse: [ elseBlock value ].