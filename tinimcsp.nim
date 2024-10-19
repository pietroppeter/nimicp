import std / intsets
import std / sequtils

type
  Domain* = object
    values: IntSet

func newDomain*(n: int): Domain =
  result.values = (0 ..< n).toSeq.toIntSet

func size*(d: Domain): int =
  d.values.len

func min*(d: Domain): int =
  discard
  #d.values.min # min not available for intsets!


when isMainModule:
  var d = newDomain(3)
  echo d
  echo d.size