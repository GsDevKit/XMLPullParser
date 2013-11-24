XMLPullParser
=============
XMLPullParser is a streaming XML parser. Instead of building a DOM tree, the parser streams over "events" (start tag, text, end tag) on demand. For more information on the technique in general, see [xmlpull.org]. This is a port of the XMLPullParser code found on http://www.smalltalkhub.com/#!/~hernan/XMLPullParser/ to Gemstone/GLASS.

## Loading into GemStone

    ```Smalltalk
    Metacello new
      baseline: 'XMLPullParser';
      repository: 'github://glassdb/XMLPullParser/repository';
      load.
	```
	
## License

Licensed under the MIT license.

Copyright (C) 2007 Antony Blakey, Linkuistics P/L, Adelaide, South Australia. Copyright (C) 2009 Ken Treis, Miriam Technologies Inc, Washington State, USA