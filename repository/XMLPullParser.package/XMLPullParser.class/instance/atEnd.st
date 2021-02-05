streaming
atEnd
	nestedStreams isNil
		ifTrue: [ ^ peekChar isNil and: [ stream atEnd ] ].
	^ stream atEnd
		ifTrue: [ self popNestingLevel.
			self atEnd ]
		ifFalse: [ false ]