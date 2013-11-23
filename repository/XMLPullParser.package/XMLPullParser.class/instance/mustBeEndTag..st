asserting event types
mustBeEndTag: tagName
	(self isEndTag: tagName)
		ifFalse: [XPPStructureException raiseSignal: 'Expected end tag: ', tagName]