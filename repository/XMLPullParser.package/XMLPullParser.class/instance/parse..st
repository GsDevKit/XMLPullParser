initialize-release
parse: source 
	source isStream 
		ifTrue: [stream := source]
		ifFalse: [stream := source readStream].
	current := XPPStartDocument new