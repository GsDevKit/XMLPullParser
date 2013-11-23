tag-based api
collect: tagName peek: aBlock 
	| result |
	result := OrderedCollection new.
	self while: tagName peek: [ result add: (self matchAnyPeek: aBlock) ].
	^result