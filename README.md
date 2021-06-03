XMLPullParser [![](https://github.com/GsDevKit/XMLPullParser/actions/workflows/ci.yml/badge.svg?branch=master)](https://github.com/GsDevKit/XMLPullParser/actions/workflows/ci.yml)
=============
XMLPullParser is a streaming XML parser. Instead of building a DOM tree, the parser streams over "events" (start tag, text, end tag) on demand. For more information on the technique in general, see [xmlpull.org](xmlpull.org). This is a port of the XMLPullParser code from https://github.com/pharo-contributions/XML-XMLPullParser to Gemstone/GLASS.

## Loading into GemStone

Install the latest commit from the master branch:
```Smalltalk
Metacello new
  baseline: 'XMLPullParser';
  repository: 'github://GsDevKit/XMLPullParser:master/repository';
  load.
```

Install a particular version, e.g. 1.5.0 (see [Releases](https://github.com/GsDevKit/XMLPullParser/releases) for a list of possible versions):
```Smalltalk
Metacello new
  baseline: 'XMLPullParser';
  repository: 'github://GsDevKit/XMLPullParser:v1.5.0/repository';
  load.
```
