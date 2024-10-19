import seqintset

type
  Domain* = SeqIntSet


when isMainModule:
  var d = Domain.init(3)
  echo d
  echo d.size
  d.remove 1
  echo d
  echo d.size
