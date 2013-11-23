tokenizing
nextComment
	"Skip first -"
	self nextChar.
	self nextChar == $-
		ifFalse: [self errorExpected: 'second comment $-'].
	self nextUpToAll: '-->'.
