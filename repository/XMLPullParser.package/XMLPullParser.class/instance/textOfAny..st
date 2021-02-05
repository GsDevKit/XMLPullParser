tag-based api
textOfAny: tagCollection 
	" Answer an <Association> of tag name -> tag value. Include only tags found in tagCollection. If none found for the current node, answer nil "

	[ self isDocumentTag and: [ tagCollection noneSatisfy: [ : aTagString | self isStartTag: aTagString ] ] ]
		whileTrue: [ self next ].
	^ (self isDocumentTag and: [ tagCollection includes: self tag name ])
		ifTrue: [ self tag name -> (self textOf: self tag name) ]
		ifFalse: [ nil ]