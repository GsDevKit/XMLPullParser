private
readNumberBase: base
	"Read a hex number from stream until encountering $; "

	| value digit |
	base = 10 ifFalse: [	| numberString | 
		numberString := self nextUpTo: $;.
		self stream skip: -1.
		^Integer readFrom: numberString asUppercase readStream base: base. 
	].

	value := 0.
	digit := DigitTable at: self peek asciiValue.
	digit < 0
		ifTrue: [self error: 'At least one digit expected here'].
	self nextChar.
	value := digit.
	[digit := DigitTable at: self peek asciiValue.
	digit < 0
		ifTrue: [^value]
		ifFalse: [
			self nextChar.
			value := value * base + digit]
		] repeat.
	^ value