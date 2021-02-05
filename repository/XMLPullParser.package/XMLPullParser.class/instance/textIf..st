tag-based api
textIf: tagName

	^ self if: tagName take: [ self text ] else: [ '' ].