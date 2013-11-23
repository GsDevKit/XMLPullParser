asserting event types
mustBeText
	self isText
		ifFalse: [XPPStructureException raiseSignal: 'Expected text']