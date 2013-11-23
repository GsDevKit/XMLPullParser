entities
entity: refName 
	^ self entities at: refName
		ifAbsentPut: [XPPStructureException raiseSignal: 'XML undefined entity ' , refName printString]