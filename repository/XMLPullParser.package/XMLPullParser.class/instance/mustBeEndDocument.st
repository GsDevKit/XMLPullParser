asserting event types
mustBeEndDocument
	self isEndDocument 
		ifFalse: [XPPStructureException signal: 'Expected end of document']