import sequtils

type
  StateInt* = object
  StateSparseSet* = object
    index, value: seq[int]
    size, min, max: StateInt
    n, ofs: int
  StateManager* = object

func makeStateInt*(sm: StateManager, n: int): StateInt =
  discard

func newStateSparseSet*(sm: StateManager; n, ofs: int): StateSparseSet =
  result.n = n
  result.ofs = ofs
  result.size = sm.makeStateInt(n)
  result.min = sm.makeStateInt(n)
  result.max = sm.makeStateInt(n)
  result.value = (0..<n).toSeq
  result.index = (0..<n).toSeq
