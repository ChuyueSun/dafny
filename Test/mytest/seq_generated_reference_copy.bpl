// Dafny 3.9.1.41027
// Command Line Options: Test/mytest/seq.dfy /print:Test/mytest/seq_generated_reference.bpl /proverLog:Test/mytest/seq_test.smt2

type {:builtin "Seq"} Seq _;

function {:builtin "seq.len"} Seq#Length<T>(Seq T) : int;

function {:builtin "seq.empty"} Seq#Empty<T>() : Seq T;

function {:builtin "seq.unit"} Seq#Singleton<T>(T) : Seq T;

function {:inline} Seq#Build<T>(s: Seq T, val: T) : Seq T
{
  Seq#Append(s, Seq#Singleton(val))
}

function {:builtin "seq.++"} Seq#Append<T>(Seq T, Seq T) : Seq T;

function {:builtin "seq.nth"} Seq#Index<T>(Seq T, int) : T;

function {:builtin "seq.update"} Seq_Update_Sub<T>(s: Seq T, i: int, sub: Seq T) : Seq T;

function {:inline} Seq#Update<T>(s: Seq T, i: int, val: T) : Seq T
{
  Seq_Update_Sub(s, i, Seq#Singleton(val))
}

function {:builtin "seq.contains"} Seq_Contains_Sub<T>(Seq T, Seq T) : bool;

function {:inline} Seq#Contains<T>(s: Seq T, x: T) : bool
{
  Seq_Contains_Sub(s, Seq#Singleton(x))
}



// procedure {:verboseName "m (well-formedness)"} CheckWellFormed$$_module.__default.m();
//   free requires 0 == $FunctionContextHeight;
//   modifies $Heap, $Tick;



// procedure {:verboseName "m (call)"} Call$$_module.__default.m();
//   modifies $Heap, $Tick;
//   // frame condition: object granularity
//   free ensures (forall $o: ref :: 
//     { $Heap[$o] } 
//     $o != null && read(old($Heap), $o, alloc) ==> $Heap[$o] == old($Heap)[$o]);
//   // boilerplate
//   free ensures $HeapSucc(old($Heap), $Heap);



// procedure {:verboseName "m (correctness)"} Impl$$_module.__default.m() returns ($_reverifyPost: bool);
//   free requires 0 == $FunctionContextHeight;
//   modifies $Heap, $Tick;
//   // frame condition: object granularity
//   free ensures (forall $o: ref :: 
//     { $Heap[$o] } 
//     $o != null && read(old($Heap), $o, alloc) ==> $Heap[$o] == old($Heap)[$o]);
//   // boilerplate
//   free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "m (correctness)"} Impl$$_module.__default.m() returns ($_reverifyPost: bool)
{
  // var $_Frame: <beta>[ref,Field beta]bool;
  var s#0: Seq int;
  // var s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap);

    s#0 := Seq#Build(Seq#Build(Seq#Empty(), 1),2);
    // ----- assert statement ----- /home/livia/dafny/Test/mytest/seq.dfy(5,5)
    // assert {:subsumption 0} 0< Seq#Length(s#0);
    assume true;
    assert Seq#Index(s#0, 0): int == 1;
}

