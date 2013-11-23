tag-based api
textIf: tagName else: aBlock
	^self if: tagName take: [self text] else: [ aBlock value ].