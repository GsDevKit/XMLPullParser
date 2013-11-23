entities
entity: refName 
	^ self entities at: refName
		ifAbsentPut: [self parseError: 'XML undefined entity ' , refName printString]