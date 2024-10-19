import std / sequtils

type
  Domain* = object
    values: set[int8]

func newDomain*(n: int8): Domain =
  result.values = {0 .. (n-1)}

func size*(d: Domain): int =
  d.values.len

func min*(d: Domain): int =
  d.values.min


when isMainModule:
  var d = newDomain(3)
  echo d
  echo d.size