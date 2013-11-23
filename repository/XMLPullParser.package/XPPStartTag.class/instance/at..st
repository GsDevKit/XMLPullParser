accessing
at: attName 
	^ self at: attName
		ifNone: 
			[XPPStructureException 
				raiseSignal: 'Expected attribute ' , attName , ' is missing']