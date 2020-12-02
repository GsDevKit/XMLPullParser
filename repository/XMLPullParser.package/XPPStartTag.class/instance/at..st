accessing
at: attName 
	^ self at: attName
		ifNone: 
			[XPPStructureException 
				signal: 'Expected attribute ' , attName , ' is missing']