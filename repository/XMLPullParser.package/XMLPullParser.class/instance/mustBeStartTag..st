asserting event types
mustBeStartTag: tagName
	(self isStartTag: tagName)
		ifFalse: [XPPStructureException raiseSignal: 'Expected start tag: ', tagName]