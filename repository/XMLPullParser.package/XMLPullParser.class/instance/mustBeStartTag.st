asserting event types
mustBeStartTag
	self isStartTag
		ifFalse: [XPPStructureException signal: 'Expected start tag']