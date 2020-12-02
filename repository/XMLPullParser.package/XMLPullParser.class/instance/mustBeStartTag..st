asserting event types
mustBeStartTag: tagName
	(self isStartTag: tagName)
		ifFalse: [XPPStructureException signal: 'Expected start tag: ', tagName]