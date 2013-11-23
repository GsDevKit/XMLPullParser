"Load and run tests to be performed by TravisCI"
| gitPath |
Transcript cr; show: 'travis---->travisCI.st'.
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

"Load Zinc ... "
Metacello new
  baseline: 'XMLPullParser';
  repository: 'filetree://', gitPath, '/XMLPullParser/repository';
  load: #('default').

"Run the Tode tests"
TravisCIHarness
  value: #( 'BaselineOfXMLPullParser' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
