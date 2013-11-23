tag-based api
if: tagName peek: aBlock else: elseBlock
	^(self is: tagName) ifTrue: [self matchAnyPeek: aBlock] ifFalse: [ elseBlock value ].