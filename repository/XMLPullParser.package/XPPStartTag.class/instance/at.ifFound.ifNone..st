accessing
at: attName ifFound: aFoundBlock ifNone: aBlock 
	attributes 
		keysAndValuesDo: [:a :value | (a = attName) ifTrue: [^ aFoundBlock value: value]].
	^ aBlock value