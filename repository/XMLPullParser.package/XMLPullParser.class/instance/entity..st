entities
entity: refName 
	^ self entities at: refName
		ifAbsentPut: [XPPStructureException signal: 'XML undefined entity ' , refName printString]