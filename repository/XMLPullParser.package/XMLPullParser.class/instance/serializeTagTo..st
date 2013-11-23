serializing
serializeTagTo: serializer 
	self mustBeStartTag.
	self current serializeTo: serializer.
	self consumeStartTag.
	self serializeUntilEndTagTo: serializer.
	self current serializeTo: serializer.
	self consumeEndTag