asserting event types
mustBeStartTag
	self isStartTag
		ifFalse: [XPPStructureException raiseSignal: 'Expected start tag']