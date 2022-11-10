// RUN: %parallel-boogie "%s" > "%t"
// RUN: %diff "%s.expect" "%t"

type {:datatype} T;

function {:constructor} Integer(i: int): T;
function {:constructor} Vector(v: TArray): T;

type {:builtin "Seq"} Seq _;
function {:builtin "seq.empty"} Seq_Empty_T(): Seq T;
function {:builtin "seq.len"} Seq_Len_T(a: Seq T): int;
function {:builtin "seq.++"} Seq_Concat_T(a: Seq T, b: Seq T): Seq T;
function {:builtin "seq.unit"} Seq_Unit_T(v: T): Seq T;
function {:builtin "seq.nth"} Seq_Nth_T(a: Seq T, i: int): T;
function {:builtin "seq.extract"} Seq_Extract_T(a: Seq T, pos: int, length: int): Seq T;

type {:datatype} TArray;
function {:constructor} TArray(v: Seq T): TArray;
function {:inline} EmptyTArray(): TArray {
    TArray(Seq_Empty_T())
}
function {:inline} AddTArray(a: TArray, v: T): TArray {
    TArray(Seq_Concat_T(a->v,Seq_Unit_T(v)))
}
function {:inline} RemoveTArray(a: TArray): TArray {
    TArray(Seq_Extract_T(a->v, 0, Seq_Len_T(a->v) - 1))
}
function {:inline} ConcatTArray(a1: TArray, a2: TArray): TArray {
    TArray(Seq_Concat_T(a1->v, a2->v))
}
function {:inline} IsEmpty(a: TArray): bool {
    Seq_Len_T(a->v) == 0
}
function {:inline} LenTArray(a: TArray): int {
    Seq_Len_T(a->v)
}
function {:inline} TArrayAt(a: TArray, i: int): T {
    Seq_Nth_T(a->v, i)
}

procedure test()
{
  var s: TArray;

  s := EmptyTArray();
  assert IsEmpty(s);
  s := AddTArray(s, Integer(0));
  s := AddTArray(s, Integer(1));
  s := AddTArray(s, Integer(2));
  assert LenTArray(s) == 3;
  assert TArrayAt(s, 1) == Integer(1);
  s := RemoveTArray(s);
  assert(LenTArray(s)) == 2;
  s := ConcatTArray(s, s);
  assert LenTArray(s) == 4;
  assert TArrayAt(s, 3) == Integer(1);
}
