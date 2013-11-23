tag-based api
ifAnyPeek: aBlock 
	self isStartTag ifTrue: [self matchAnyPeek: aBlock]