// RUN: %dafny_0 /compile:0 "%s" > "%t"
// RUN: %diff "%s.expect" "%t"

module Comparator {
  datatype Comparator = Comparator(int)
}

abstract module ADT {
  import C : Comparator
}

abstract module CC {
  import C : Comparator
}

abstract module IntADT {
  import ADT
  import CC

  method m()
  {
    var cmp : CC.C.Comparator := CC.C.Comparator(0);
    var cmp2 : ADT.C.Comparator := cmp;
  }
}

// This works OK if : is replace by = and 'abstract' removed
