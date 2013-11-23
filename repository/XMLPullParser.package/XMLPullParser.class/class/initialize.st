instance creation
initialize
	"XMLPullParser initialize"

	| nameDelimiters |

	CharEscapes := #( $& $" $' $> $< ) asSet.

	SeparatorTable := Array new: 256.
	SeparatorTable atAllPut: true.
	#(9 10 12 13 32) do: [:each | SeparatorTable at: each+1 put: false].

	LiteralChars := Array new: 256.
	LiteralChars atAllPut: false.
	':-:=.' do: [:each | LiteralChars at: each asciiValue put: true].
	1 to: 256 do: [:i | ((i-1) asCharacter isDigit or: [(i-1) asCharacter isLetter])
		ifTrue: [LiteralChars at: i put: true]].

	nameDelimiters := #(9 10 12 13 32 61 "$= asInteger 61" 62 "$> asInteger" 47 "$/ asInteger").
	NameDelimiters := Array new: 256.
	NameDelimiters atAllPut: false.
	nameDelimiters do: [:each | NameDelimiters at: each put: true].

	DigitTable := Array new: 256.
	DigitTable atAllPut: -1.
	0 to: 15
	    do: [:each | DigitTable at: (Character digitValue: each) asciiValue put: each]