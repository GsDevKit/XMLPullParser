tag-based api
if: tagName take: aBlock else: elseBlock
	^(self is: tagName) ifTrue: [self matchAnyTake: aBlock] ifFalse: [ elseBlock value ].