tokenizing
nextTag
	| tagName attributes nextChar namespaces |
	self peek = $/ ifTrue: [^ self nextEndTag].
	tagName := self nextName.
	self skipSeparators.
	attributes := Dictionary new: 33.
	namespaces := Dictionary new: 5.
	[(nextChar := self peek) == $> or: [nextChar == $/]] whileFalse: 
			[self nextAttributeInto: attributes namespaces: namespaces.
			self skipSeparators].
	eventQueue addLast: (XPPStartTag new tag: (XPPTag new name: tagName); attributes: attributes).
	self nextChar == $/ 
		ifTrue: 
			[eventQueue addLast: (XPPEndTag new tag: (XPPTag new name: tagName)).
			self nextChar]