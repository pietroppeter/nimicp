## A simple set of integers implementation based on a sequence of ordered integeres
## useful to fix the api and start with a working (albeit non efficient) implementation
import std / sequtils

type
  SeqIntSet* = object
    elems: seq[int]

func init*(T: type SeqIntSet, n: int): T = SeqIntSet(elems: (0 ..< n).toSeq)

func size*(s: SeqIntSet): int = len s.elems

func isEmpty*(s: SeqIntSet): bool = (size(s) == 0)

func min*(s: SeqIntSet): int = s.elems[0]

func max*(s: SeqIntSet): int = s.elems[^1]

func contains*(s: SeqIntSet, v: int): bool = (v in s.elems) # O(N)

proc remove*(s: var SeqIntSet, v: int) = # O(N)
  s.elems.delete(s.elems.find(v))

func `$`*(s: SeqIntSet): string =
  result.add '('
  for i in s.elems:
    result.add $i
    result.add ',' # trailing comma
  result.add ')'

when isMainModule:
  var s = SeqIntSet.init(5)
  assert size(s) == 5
  assert min(s) == 0
  assert max(s) == 4
  assert not isEmpty(s)
  assert s.contains(3)
  s.remove 3
  assert not s.contains 3
  assert s.size == 4
  assert s.min == 0
  assert s.max == 4
  s.remove 0
  assert s.min == 1
  s.remove 4
  assert $s == "(1,2,)"
  assert s.max == 2
  s.remove 1
  s.remove 2
  assert s.isEmpty