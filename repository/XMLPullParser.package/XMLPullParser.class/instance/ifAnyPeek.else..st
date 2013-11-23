tag-based api
ifAnyPeek: aBlock else: elseBlock
	^self isStartTag ifTrue: [self matchAnyPeek: aBlock] ifFalse: [ elseBlock value ].