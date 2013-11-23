tag-based api
collectAnyPeek: aBlock 
	| result |
	result := OrderedCollection new.
	self whileAnyPeek: [ result add: (self matchAnyPeek: aBlock) ].
	^result