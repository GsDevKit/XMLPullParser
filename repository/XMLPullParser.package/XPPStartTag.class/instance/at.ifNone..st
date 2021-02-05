accessing
at: attName ifNone: aBlock 
	^attributes at: attName asString ifAbsent: [aBlock value]