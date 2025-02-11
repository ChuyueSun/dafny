// Dafny 3.9.1.41027
// Command Line Options: ../Test/mytest/seq.dfy /print:../Test/mytest/seq_generated.bpl

type {:builtin "Seq"} Seq _;

function {:builtin "seq.len"} Seq#Length<T>(Seq T) : int;

// axiom (forall<T> s: Seq T :: { Seq#Length(s) } 0 <= Seq#Length(s));

function {:builtin "seq.empty"} Seq#Empty<T>() : Seq T;

// axiom (forall<T>  :: { Seq#Empty(): Seq T } Seq#Length(Seq#Empty(): Seq T) == 0);

// axiom (forall<T> s: Seq T :: 
//   { Seq#Length(s) } 
//   Seq#Length(s) == 0 ==> s == Seq#Empty());

function {:builtin "seq.unit"} Seq#Singleton<T>(T) : Seq T;

// axiom (forall<T> t: T :: 
//   { Seq#Length(Seq#Singleton(t)) } 
//   Seq#Length(Seq#Singleton(t)) == 1);

function {:builtin "seq.++"} Seq_Concat_T<T>(a: Seq T, b: Seq T): Seq T;
function {:builtin "seq.unit"} Seq_Unit_T<T>(v: T): Seq T;
function {:builtin "seq.nth"} Seq#Index<T>(Seq T, int) : T;

// axiom (forall<T> t: T :: 
//   { Seq#Index(Seq#Singleton(t), 0) } 
//   Seq#Index(Seq#Singleton(t), 0) == t);

function Seq#Build<T>(s: Seq T, val: T) : Seq T{
  Seq_Concat_T(s, Seq_Unit_T(val))
}


// axiom (forall<T> s: Seq T, v: T :: 
//   { Seq#Build(s, v) } 
//   Seq#Length(Seq#Build(s, v)) == 1 + Seq#Length(s));

// axiom (forall<T> s: Seq T, i: int, v: T :: 
//   { Seq#Index(Seq#Build(s, v), i) } 
//   (i == Seq#Length(s) ==> Seq#Index(Seq#Build(s, v), i) == v)
//      && (i != Seq#Length(s) ==> Seq#Index(Seq#Build(s, v), i) == Seq#Index(s, i)));

procedure test(){
  var s#0: Seq int;

    s#0 := Seq#Build(Seq#Build(Seq#Empty(): Seq int, 1), 2);
    // ----- assert statement ----- /home/livia/dafny/Test/mytest/seq.dfy(5,5)
    assert 0 < Seq#Length(s#0);
    assert Seq#Index(s#0, 0) == 1;
}


