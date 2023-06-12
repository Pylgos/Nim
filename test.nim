import macros

macro dump(t: typed) =
  let impl = t.getImplTransformed()
  echo repr impl
  echo treeRepr impl 


proc test() =
  let captureMe = 1
  proc inner() =
    echo captureMe
    # mac()
  inner()

# dump(test)

test()
