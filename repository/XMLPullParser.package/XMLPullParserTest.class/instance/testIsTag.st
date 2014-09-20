testing
testIsTag
	| parser |
	parser := XMLPullParser parse: '
<person id="27">
	<!-- Comment -->
	<name>Kent Beck</name>
	<notedFor>XP</notedFor>
</person>
'.
	self assert: parser isStartDocument.
	self assert: parser next isTag. " 'person' "
	self assert: parser next isTag. " 'name' "
	self deny: parser next isTag.
	self assert: parser next isTag. " '/name' "
	self assert: parser next isTag. " 'notedFor' "
	self deny: parser next isTag.
	self assert: parser next isTag. " '/notedFor' "
	self assert: parser next isTag. " '/person' "
	self assert: parser next isEndDocument