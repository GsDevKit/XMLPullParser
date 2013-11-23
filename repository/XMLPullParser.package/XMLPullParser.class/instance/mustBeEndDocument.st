asserting event types
mustBeEndDocument
	self isEndDocument 
		ifFalse: [XPPStructureException raiseSignal: 'Expected end of document']