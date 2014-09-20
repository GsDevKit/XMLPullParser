tag-based api
currentNode
	" Answer an <Association> of current text event tag name and value. Skip remaining events "

	| tag |
	
	[ self isTag ]
		whileTrue: [ 
			tag := self tag.
			self next ].
	^ self peekText isEmpty
		ifFalse: [ tag name -> self peekText ]
		ifTrue: [ self error ]