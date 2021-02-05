testing event types
isNotStartEndDocument

	^ self isStartDocument not and: [ self isEndDocument not ]