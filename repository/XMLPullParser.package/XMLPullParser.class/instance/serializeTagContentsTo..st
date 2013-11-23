serializing
serializeTagContentsTo: serializer 
	self consumeStartTag.
	self serializeUntilEndTagTo: serializer.
	self consumeEndTag