testing event types
isDocumentTag
	" Answer <true> if :
	1) Receiver is not at end of document 
	2) Receiver current node is a tag
	3) Receiver current node is NOT a start document event
	4) Receiver current node is NOT an end document event "
	
	^ self atEnd not and: [ self isTag and: [ self isNotStartEndDocument ] ]