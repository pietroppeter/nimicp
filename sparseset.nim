# implementation of a sparseset data structure
# used for domain

type
  IntDomain* = concept d
    d.min is int  
    d.max is int
    d.size is int
    # d.contains(v: int) is bool
    # d.isBound is bool # if there is only a single value
    # e.remove(v: int, l: DomainListener) # e is a var IntDomain
    # e.removeAllBut(v: int, l: DomainListener)
    # e.removeBelow(v: int, l: DomainListener)
    # e.removeAbove(v: int, l: DomainListener)
    $(d) is string
