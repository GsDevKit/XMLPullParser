asserting event types
mustBeEndTag
	self isEndTag 
		ifFalse: [XPPStructureException signal: 'Expected end tag']