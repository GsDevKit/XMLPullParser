tokenizing
nextPI
	| piTarget piData |
	"Skip ?"
	self nextChar.
	piTarget := self nextLiteral.
	piTarget asUppercase = 'XML'
		ifTrue: [^self nextXMLDecl].
	self skipSeparators.
	piData := self nextUpToAll: '?>'.
	"self handlePI: piTarget data: piData"