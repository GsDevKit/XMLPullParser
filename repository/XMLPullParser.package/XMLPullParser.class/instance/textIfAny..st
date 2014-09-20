tag-based api
textIfAny: tagNames
	" Iterate tagNames until found and answer its text. Answer an empty <Collection> if no tag name is found "

	| results |
	
	results := OrderedCollection new: tagNames size.
	tagNames do: [ : tagName | 
		(self textIf: tagName) ifNotEmptyDo: [ : text | results add: text ] ].
	^ results
