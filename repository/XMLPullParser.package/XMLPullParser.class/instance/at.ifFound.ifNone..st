delegating accessors
at: attName ifFound: aFoundBlock ifNone: aBlock
	^self current at: attName ifFound: aFoundBlock ifNone: aBlock