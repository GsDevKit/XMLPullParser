testing
testTextExtractionFirstLevel
	"self debug:#testTextExtractionFirstLevel"
	
	| xpp  output |
	xpp := XMLPullParser parse: '<document>
  <tagA a1=''att1'' a2=''att2''>blah</tagA>
  <tagB>aaa<tagC>bbb</tagC>ccc</tagB>
</document>'.
      output := String new writeStream.
  	[ xpp next isEndDocument ] whileFalse: [
   	    xpp isText ifTrue: [ output nextPutAll: xpp text ]].
  	self assert: output contents equals: 'blahaaabbbccc'.