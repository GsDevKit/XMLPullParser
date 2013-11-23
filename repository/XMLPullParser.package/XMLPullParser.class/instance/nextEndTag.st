tokenizing
nextEndTag
	| string |
	"Skip /"
	self nextChar.
	string := self nextTrimmedBlanksUpTo: $>.
	eventQueue addLast: (XPPEndTag new tag: (XPPTag new name: string))