tokenizing
nextCDataContent
	"Skip $[ "
	| cdata |
	self nextChar.
	cdata := self nextUpToAll: ']]>'.
	eventQueue addLast: (XPPText new text: cdata)