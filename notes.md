## implementing domain

- neither Nim's [built-in set](https://nim-lang.org/docs/manual.html#types-set-type)
  (which is based on bitsets)
  nor [intsets](https://nim-lang.org/docs/intsets.html)
  (based on sparse bitsets)
  have an implementation of `min` available
  (unclear if it is possible to add it)
- started with a seqintset implementation