testing
testTagName
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
	self assert: (parser tagName = 'person').
	parser next.	
	self assert: (parser tagName = 'name').
	parser next.
	self should: [ parser tagName ] raise: MessageNotUnderstood.
	self assert: parser text = 'Kent Beck'.
	parser next.
	self assert: (parser tagName = 'notedFor').
	parser next.
	self should: [ parser tagName ] raise: MessageNotUnderstood.
	parser next.
	self assert: parser next isEndTag.
	self assert: parser next isEndDocument