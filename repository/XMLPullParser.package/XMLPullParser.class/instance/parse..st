initialization
parse: source
	stream := source isStream
		ifTrue: [ source ]
		ifFalse: [ source readStream ].
	current := XPPStartDocument new