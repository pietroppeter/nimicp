import sequtils

type
  StateInt* = int
  StateSparseSet* = object
    index, value: seq[int]
    size, min, max: StateInt
    n, ofs: int
  StateManager* = object

func makeStateInt*(sm: StateManager, n: int): int =
  discard

func newStateSparseSet*(sm: StateManager; n, ofs: int): StateSparseSet =
  result.n = n
  result.ofs = ofs
  result.size = sm.makeStateInt(n)
  result.min = sm.makeStateInt(n)
  result.max = sm.makeStateInt(n)
  result.value = (0..<n).toSeq
  result.index = (0..<n).toSeq

func contains*(s: StateSparseSet, val: int): bool =
  let val = val - s.ofs
  if val < 0 or val >= s.n:
    return false
  else:
    return s.index[val] < s.size

proc remove*(s: var StateSparseSet, val: int): bool =
  if not s.contains val: return false
  let val = val - s.ofs
  # ...
