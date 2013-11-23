printing
printOn: aStream 
	super printOn: aStream.
	aStream
		nextPutAll: ' </';
		nextPutAll: tag asString;
		nextPutAll: '>'