# domain concept (will be implemented as a sparset)

type
  IntDomain* = concept d
    d.min is int  
    d.max is int
    #d.size is int
    # d.contains(v: int) is bool
    # d.isBound is bool # if there is only a single value
    # e.remove(v: int, l: DomainListener) # e is a var IntDomain
    # e.removeAllBut(v: int, l: DomainListener)
    # e.removeBelow(v: int, l: DomainListener)
    # e.removeAbove(v: int, l: DomainListener)
    #$(d) is string

type
  IntDomainAsSeq = seq[int]

var d: IntDomainAsSeq = @[1, 2, 3]

echo d.min(), d.max()

# to test concept
func span*(d: IntDomain): int =
  d.max - d.min

echo d.span()
#[ why error?
Error: internal error: openArrayLoc: IntDomain
No stack traceback available

]#
