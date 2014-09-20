testing
testPeekText
	| parser |
	parser := XMLPullParser parse: '
<person id="27">
	<!-- Comment -->
	<name>Kent Beck</name>
	<notedFor>XP</notedFor>
</person>
'.
	self assert: parser isStartDocument.
	parser next.
	self assert: parser peekText = ''. "person"
	parser next.
	self assert: parser peekText = ''. "name"
	parser next.
	self assert: parser peekText = 'Kent Beck'.
	parser next.
	self assert: parser peekText = ''. "/name"
	parser next.
	self assert: parser peekText = ''. "notedFor"
	parser next.
	self assert: parser peekText = 'XP'.
	parser next.
	self assert: parser peekText = ''. "/notedFor"
	parser next.
	self assert: parser next isEndDocument