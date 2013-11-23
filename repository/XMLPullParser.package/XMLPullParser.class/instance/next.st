core api
next
	eventQueue isEmpty ifFalse: [^ current := eventQueue removeFirst].
	self nextWhitespace.
	self atEnd ifTrue: [^ current := XPPEndDocument new].
	self peek = $< ifTrue: [self nextNode] ifFalse: [self nextPCData].
	^ current := eventQueue isEmpty 
				ifTrue: [self next]
				ifFalse: [eventQueue removeFirst]