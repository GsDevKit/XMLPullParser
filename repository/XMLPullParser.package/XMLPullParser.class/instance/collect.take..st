tag-based api
collect: tagName take: aBlock 
	| result |
	result := OrderedCollection new.
	self while: tagName peek: [ result add: (self matchAnyTake: aBlock) ].
	^result