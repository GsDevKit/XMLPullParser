<document>
  <tagA a1='att1' a2='att2'>blah</tagA>
  <tagB>aaa<tagC>bbb</tagC>ccc</tagB>
</document>

would be converted to the follow steam of tokens:
StartDocument
  StartTag{document,[]}
    StartTag{tagA,[Attribute{a1,'att1'},Attribute{a2,'att2'}]}
      Text{'blah'}
    EndTag{tagA}
    StartTag{tagB, []}
      Text{'aaa'}
      StartTag{tagC, []}
        Text{'bbb'}
      EndTag{tagC}
      Text{'ccc'}
    EndTag{tagB}
  EndTag{document}
EndDocument