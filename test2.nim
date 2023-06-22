type
  T1* = object
  T2* = object

converter toT2(t1: T1): T2 =
  discard

proc useT2(t2: T2) =
  discard

import macros

macro typedDump(t: typed) =
  echo treeRepr t

template `.`(lhs: T1, rhs: untyped): untyped =
  1

# typedDump:
proc gnrc*[T](t: T) =
  useT2(t)
  echo t.something

template tmpl*(t: untyped) =
  useT2(t)
  echo t.something
