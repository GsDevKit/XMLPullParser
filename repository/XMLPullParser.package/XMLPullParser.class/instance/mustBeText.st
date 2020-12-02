asserting event types
mustBeText
	self isText
		ifFalse: [XPPStructureException signal: 'Expected text']