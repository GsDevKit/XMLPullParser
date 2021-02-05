asserting event types
mustBeEndTag: tagName
	(self isEndTag: tagName)
		ifFalse: [XPPStructureException signal: 'Expected end tag: ', tagName]