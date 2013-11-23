asserting event types
mustBeEndTag
	self isEndTag 
		ifFalse: [XPPStructureException raiseSignal: 'Expected end tag']