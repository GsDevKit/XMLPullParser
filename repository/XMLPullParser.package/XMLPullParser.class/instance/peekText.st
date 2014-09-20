tag-based api
peekText
	" Answer a <String> with the current text without consuming. If current event is not text, then answer an empty <String> "

	^ self isText 
		ifTrue: [ | text |
			text := self current text.
			text ]
		ifFalse: [ '' ]