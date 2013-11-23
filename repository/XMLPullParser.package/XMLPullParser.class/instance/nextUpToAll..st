streaming
nextUpToAll: delimitingString 
	| string |
	self unpeek.
	string := stream greaseUpToAll: delimitingString.
	 stream skip: delimitingString size negated.
	( stream next: delimitingString size) = delimitingString 
		ifFalse: 
			[self 
				parseError: 'XML no delimiting ' , delimitingString printString , ' found'].
	^ string