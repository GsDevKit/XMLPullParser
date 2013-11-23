asserting event types
mustBeStartDocument
	self isStartDocument 
		ifFalse: [XPPStructureException raiseSignal: 'Expected start of document']