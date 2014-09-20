XMLPullParser [!(https://travis-ci.org/GsDevKit/XMLPullParser.svg?branch=master)](https://travis-ci.org/GsDevKit/XMLPullParser)
=============
XMLPullParser is a streaming XML parser. Instead of building a DOM tree, the parser streams over "events" (start tag, text, end tag) on demand. For more information on the technique in general, see [xmlpull.org](xmlpull.org). This is a port of the XMLPullParser code found on http://www.smalltalkhub.com/#!/~hernan/XMLPullParser/ to Gemstone/GLASS.

## Loading into GemStone

```Smalltalk
Metacello new
  baseline: 'XMLPullParser';
  repository: 'github://glassdb/XMLPullParser/repository';
  load.
```
	
[https://travis-ci.org/GsDevKit/XMLPullParser.svg?branch=master]