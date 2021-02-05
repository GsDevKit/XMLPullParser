tag-based api
currentNodeUpToAny: aTagCollection
	" To be removed "
	" Answer an <Association> of tag name and its value included in aTagCollection. Skip all remaining nodes "

	| tag |
	[ self isEndDocument not and: [self isTag and: [ (self includesTag: aTagCollection) not] ]]
		whileTrue: [ 
			tag := self tag.
			self next ].
	^ (self isEndDocument not and: [ self isText and: [ (self includesTag: aTagCollection) not ]])
		ifTrue: [ 
			self next.
			self currentNodeUpToAny: aTagCollection ]
		ifFalse: [ 
			(self isEndDocument not and: [self peekText isEmpty])
				ifFalse: [ 
					self isEndDocument 
						ifTrue: [ nil ]
						ifFalse: [ tag name -> self peekText ] ]
				ifTrue: [ 
					tag := self tag.
					self next.
					tag name -> self peekText  ] ]