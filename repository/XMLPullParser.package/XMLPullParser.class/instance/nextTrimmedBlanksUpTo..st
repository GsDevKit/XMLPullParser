streaming
nextTrimmedBlanksUpTo: delimiter 
	| resultStream nextChar |
	resultStream := WriteStream on: (String new: 10).
	nextChar := nil.
	[(nextChar := self nextChar) == delimiter] 
		whileFalse: [nextChar == $  ifFalse: [resultStream nextPut: nextChar]].
	nextChar == delimiter 
		ifFalse: 
			[XPPStructureException raiseSignal: 'XML no delimiting ' , delimiter printString , ' found'].
	^ resultStream contents