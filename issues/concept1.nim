type
  IntDomain* = concept d
    d.min is int  
    d.max is int

type
  IntDomainAsSeq = seq[int]

var d: IntDomainAsSeq = @[1, 2, 3]

echo d.min(), d.max()

func span*(d: IntDomain): int =
  d.max - d.min

echo d.span() # removing this line it compiles and run with correct output (13)
#[
Error: internal error: openArrayLoc: IntDomain
No stack traceback available
]#
#[
Nim Compiler Version 2.0.8 [MacOSX: arm64]
Compiled at 2024-07-21
Copyright (c) 2006-2023 by Andreas Rumpf

git hash: 5935c3bfa9fec6505394867b23510eb5cbab3dbf
active boot switches: -d:release
]#
