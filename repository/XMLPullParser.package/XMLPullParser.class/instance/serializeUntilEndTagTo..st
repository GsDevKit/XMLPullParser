serializing
serializeUntilEndTagTo: serializer 
	[self isEndTag] whileFalse: 
			[| event |
			event := self current.
			event isText 
				ifTrue: 
					[event serializeTo: serializer.
					self next]
				ifFalse: 
					[event isStartTag 
						ifTrue: [self serializeTagTo: serializer]
						ifFalse: [XPPStructureException raiseSignal: 'Unexpected element']]]