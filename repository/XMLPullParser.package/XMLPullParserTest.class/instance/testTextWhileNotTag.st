testing
testTextWhileNotTag
	| parser myFinalTag nodes |
	parser := XMLPullParser parse: '
<person id="27">
	<!-- Comment -->
	<attNode1></attNode1>
	<attNode2></attNode2>
	<id>27</id>
	<name>Kent Beck</name>
	<notedFor>XP</notedFor>
</person>
'.
	myFinalTag :=  'notedFor'.
	nodes := OrderedCollection new.
	self assert: parser isStartDocument.
	[ parser isStartTag: myFinalTag ] whileFalse: [ | text |
		parser next.
		(text := parser textWhileNotTag: myFinalTag) notNil ifTrue: [ nodes add: text ] ].
	self assert: (parser isStartTag: myFinalTag).
	self assert: nodes notEmpty.
	self assert: (nodes hasEqualElements: {'id' ->'27' . 'name'->'Kent Beck'}).