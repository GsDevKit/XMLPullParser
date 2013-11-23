initialize-release
initialize
	super initialize.
	parsingMarkup := false.
	attributeBuffer := WriteStream on: (String new: 128).
	nameBuffer := WriteStream on: (String new: 128).
	eventQueue := OrderedCollection new