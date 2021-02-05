asserting event types
mustBeStartDocument
	self isStartDocument 
		ifFalse: [XPPStructureException signal: 'Expected start of document']