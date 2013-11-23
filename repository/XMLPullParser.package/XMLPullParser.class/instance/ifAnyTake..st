tag-based api
ifAnyTake: aBlock 
	self isStartTag ifTrue: [self matchAnyTake: aBlock]