tag-based api
collectAnyTake: aBlock 
	| result |
	result := OrderedCollection new.
	self whileAnyTake: [ result add: (self matchAnyPeek: aBlock) ].
	^result