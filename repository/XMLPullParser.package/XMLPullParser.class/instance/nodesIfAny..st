tag-based api
nodesIfAny: tagNames
	" Iterate tagNames until found and answer a <Collection> of matching <Association>s . Answer an empty <Collection> if no tag name is found "

	| results |
	
	results := OrderedCollection new: tagNames size.
	tagNames do: [ : tagName | 
		(self textIf: tagName) ifNotEmptyDo: [ : text | results add: tagName -> text ] ].
	^ results