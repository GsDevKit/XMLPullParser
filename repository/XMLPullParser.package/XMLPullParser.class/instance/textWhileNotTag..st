tag-based api
textWhileNotTag: aTagString
	" Answer current receiver node until aTagString is found. Answer an <Association> with tag name and value, or <nil> if none found "

	| tag |
	[ self isTag and: [ (self isStartTag: aTagString) not ]]
		whileTrue: [ 
			tag := self tag.
			self next ].
	^ self peekText isEmpty
		ifFalse: [ tag name -> self peekText ]
		ifTrue: [ nil ]