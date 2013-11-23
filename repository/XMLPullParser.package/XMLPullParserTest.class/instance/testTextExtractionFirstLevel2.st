testing
testTextExtractionFirstLevel2
	"self debug:#testTextExtractionFirstLevel2"
	
	| xpp  output |
	xpp := XMLPullParser parse: '<person id="27">
	<!-- Comment -->
	<name>Kent Beck</name>
	<notedFor>XP</notedFor>
</person>'.
      output := String new writeStream.
  	[ xpp next isEndDocument ] whileFalse: [
   	    xpp isText ifTrue: [ output nextPutAll: xpp text ]].
  	 self assert: output contents  equals: 'Kent BeckXP'