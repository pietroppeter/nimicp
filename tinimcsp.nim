import std / intsets
import std / sequtils

type
  Domain* = object
    values: IntSet

func newDomain(n: int): Domain =
  result.values = (0 ..< n).toSeq.toIntSet

when isMainModule:
  var d = newDomain(3)
  echo d