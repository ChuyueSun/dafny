(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(set-info :category "industrial")
(declare-sort |T@U| 0)
(declare-sort |T@T| 0)
(declare-fun real_pow (Real Real) Real)
(declare-fun UOrdering2 (|T@U| |T@U|) Bool)
(declare-fun UOrdering3 (|T@T| |T@U| |T@U|) Bool)
(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun U_2_int (T@U) Int)
(declare-fun U_2_bool (T@U) Bool)
(declare-fun Ctor (T@T) Int)
(declare-fun intType () T@T)
(declare-fun realType () T@T)
(declare-fun boolType () T@T)
(declare-fun rmodeType () T@T)
(declare-fun stringType () T@T)
(declare-fun regexType () T@T)
(declare-fun int_2_U (Int) T@U)
(declare-fun type (T@U) T@T)
(declare-fun real_2_U (Real) T@U)
(declare-fun U_2_real (T@U) Real)
(declare-fun bool_2_U (Bool) T@U)
(declare-fun rmode_2_U (RoundingMode) T@U)
(declare-fun U_2_rmode (T@U) RoundingMode)
(declare-fun string_2_U (String) T@U)
(declare-fun U_2_string (T@U) String)
(declare-fun regex_2_U ((RegEx String)) T@U)
(declare-fun U_2_regex (T@U) (RegEx String))
(declare-fun TBool () T@U)
(declare-fun TChar () T@U)
(declare-fun TInt () T@U)
(declare-fun TReal () T@U)
(declare-fun TORDINAL () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun TagORDINAL () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagISet () T@U)
(declare-fun TagMultiSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun TagMap () T@U)
(declare-fun TagIMap () T@U)
(declare-fun TagClass () T@U)
(declare-fun NoTraitAtAll () T@U)
(declare-fun class._System.int () T@U)
(declare-fun class._System.bool () T@U)
(declare-fun class._System.set () T@U)
(declare-fun class._System.seq () T@U)
(declare-fun class._System.multiset () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun class._System.object? () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun class._System.array? () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._System.___hFunc0 () T@U)
(declare-fun Tagclass._System.___hPartialFunc0 () T@U)
(declare-fun Tagclass._System.___hTotalFunc0 () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun class._System.Tuple2 () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun class._System.Tuple0 () T@U)
(declare-fun |##_System._tuple#0._#Make0| () T@U)
(declare-fun Tagclass._System.Tuple0 () T@U)
(declare-fun class._module.__default () T@U)
(declare-fun Tagclass._module.__default () T@U)
(declare-fun TyType () T@T)
(declare-fun TyTagType () T@T)
(declare-fun ClassNameType () T@T)
(declare-fun FieldType (T@T) T@T)
(declare-fun FieldTypeInv0 (T@T) T@T)
(declare-fun NameFamilyType () T@T)
(declare-fun DtCtorIdType () T@T)
(declare-fun |Map#Disjoint| (T@U T@U) Bool)
(declare-fun MapTypeInv1 (T@T) T@T)
(declare-fun MapTypeInv0 (T@T) T@T)
(declare-fun MapType (T@T T@T) T@T)
(declare-fun MapType0Select (T@U T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun MapType1Type (T@T) T@T)
(declare-fun refType () T@T)
(declare-fun HandleTypeType () T@T)
(declare-fun BoxType () T@T)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Is (T@U T@U) Bool)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun |Set#Empty| (T@T) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1Select (T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@U T@U T@U T@U) T@U)
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |MultiSet#Difference| (T@U T@U) T@U)
(declare-fun |MultiSet#Intersection| (T@U T@U) T@U)
(declare-fun |MultiSet#Union| (T@U T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.sorted (T@U) Bool)
(declare-fun SeqType (T@T) T@T)
(declare-fun |_module.__default.sorted#canCall| (T@U) Bool)
(declare-fun TSeq (T@U) T@U)
(declare-fun SeqTypeInv0 (T@T) T@T)
(declare-fun $IsAlloc (T@U T@U T@U) Bool)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |$IsA#_System.Tuple2| (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun |$IsA#_System.Tuple0| (T@U) Bool)
(declare-fun _System.Tuple0.___hMake0_q (T@U) Bool)
(declare-fun |MultiSet#FromSeq| (T@U) T@U)
(declare-fun |MultiSet#Empty| (T@T) T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.__default () T@U)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun Requires0 (T@U T@U T@U) Bool)
(declare-fun Tclass._System.___hFunc0 (T@U) T@U)
(declare-fun Reads0 (T@U T@U T@U) T@U)
(declare-fun $Box (T@U) T@U)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |IMap#Domain| (T@U) T@U)
(declare-fun |IMap#Glue| (T@U T@U T@U) T@U)
(declare-fun IMapType (T@T T@T) T@T)
(declare-fun IMapTypeInv0 (T@T) T@T)
(declare-fun IMapTypeInv1 (T@T) T@T)
(declare-fun |IMap#Elements| (T@U) T@U)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc0 (T@U) T@U)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |_System.Tuple2#Equal| (T@U T@U) Bool)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_System._tuple#0._#Make0| () T@U)
(declare-fun Tclass._System.Tuple0 () T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Update| (T@U Int T@U) T@U)
(declare-fun MapType2Select (T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType2Type (T@T T@T) T@T)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2TypeInv1 (T@T) T@T)
(declare-fun MapType2Store (T@U T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U Bool) T@U)
(declare-fun |lambda#2| (T@U T@U T@U Bool) T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun |ISet#Union| (T@U T@U) T@U)
(declare-fun |ISet#Intersection| (T@U T@U) T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Map#Card| (T@U) Int)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
(declare-fun |Set#Singleton| (T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun Apply0 (T@U T@U T@U) T@U)
(declare-fun Handle0 (T@U T@U T@U) T@U)
(declare-fun |Set#Card| (T@U) Int)
(declare-fun |Seq#FromArray| (T@U T@U) T@U)
(declare-fun |_System.Tuple0#Equal| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun TISet (T@U) T@U)
(declare-fun |Math#clip| (Int) Int)
(declare-fun q@Int (Real) Int)
(declare-fun LitInt (Int) Int)
(declare-fun LitReal (Real) Real)
(declare-fun Lit (T@U) T@U)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun charType () T@T)
(declare-fun $$Language$Dafny () Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MultiIndexField (T@U Int) T@U)
(declare-fun FDim (T@U) Int)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun AtLayer (T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun |Map#Empty| (T@T T@T) T@U)
(declare-fun |IMap#Empty| (T@T T@T) T@U)
(declare-fun $HeapSuccGhost (T@U T@U) Bool)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |ISet#Equal| (T@U T@U) Bool)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun |ORD#Plus| (T@U T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Handle1 (T@U T@U T@U) T@U)
(declare-fun MapType3Type (T@T T@T T@T) T@T)
(declare-fun MapType3Select (T@U T@U T@U) T@U)
(declare-fun MapType3TypeInv0 (T@T) T@T)
(declare-fun MapType3TypeInv1 (T@T) T@T)
(declare-fun MapType3TypeInv2 (T@T) T@T)
(declare-fun MapType3Store (T@U T@U T@U T@U) T@U)
(declare-fun |char#Minus| (T@U T@U) T@U)
(declare-fun |char#Plus| (T@U T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |ISet#Disjoint| (T@U T@U) Bool)
(declare-fun |ISet#Difference| (T@U T@U) T@U)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
(declare-fun |MultiSet#Subset| (T@U T@U) Bool)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun |IMap#Items| (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |IMap#Values| (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun TIMap (T@U T@U) T@U)
(declare-fun INTERNAL_div_boogie (Int Int) Int)
(declare-fun Div (Int Int) Int)
(declare-fun |ORD#LessThanLimit| (T@U T@U) Bool)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun |IMap#Equal| (T@U T@U) Bool)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |ISet#UnionOne| (T@U T@U) T@U)
(declare-fun q@Real (Int) Real)
(declare-fun FieldOfDecl (T@T T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun |_module.__default.sorted#requires| (T@U) Bool)
(declare-fun |MultiSet#FromSet| (T@U) T@U)
(declare-fun |Seq#Singleton| (T@U) T@U)
(declare-fun |MultiSet#Singleton| (T@U) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Inv0_TIMap (T@U) T@U)
(declare-fun Inv1_TIMap (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun TBitvector (Int) T@U)
(declare-fun Inv0_TBitvector (T@U) Int)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TISet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc0_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc0_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc0_0 (T@U) T@U)
(declare-fun INTERNAL_lt_boogie (Int Int) Bool)
(declare-fun INTERNAL_gt_boogie (Int Int) Bool)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |IMap#Build| (T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |MultiSet#Disjoint| (T@U T@U) Bool)
(declare-fun |ISet#Empty| (T@T) T@U)
(declare-fun INTERNAL_mod_boogie (Int Int) Int)
(declare-fun Mod (Int Int) Int)
(declare-fun TypeTuple (T@U T@U) T@U)
(declare-fun TypeTupleCar (T@U) T@U)
(declare-fun TypeTupleCdr (T@U) T@U)
(declare-fun MultiIndexField_Inverse0 (T@U) T@U)
(declare-fun MultiIndexField_Inverse1 (T@U) Int)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun INTERNAL_le_boogie (Int Int) Bool)
(declare-fun INTERNAL_ge_boogie (Int Int) Bool)
(declare-fun INTERNAL_sub_boogie (Int Int) Int)
(declare-fun Sub (Int Int) Int)
(declare-fun INTERNAL_add_boogie (Int Int) Int)
(declare-fun Add (Int Int) Int)
(declare-fun INTERNAL_mul_boogie (Int Int) Int)
(declare-fun Mul (Int Int) Int)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |ISet#Subset| (T@U T@U) Bool)
(declare-fun |Seq#SameUntil| (T@U T@U Int) Bool)
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (Ctor intType) 0) (= (Ctor realType) 1)) (= (Ctor boolType) 2)) (= (Ctor rmodeType) 3)) (= (Ctor stringType) 4)) (= (Ctor regexType) 5)) (forall ((arg0 Int) ) (! (= (U_2_int (int_2_U arg0)) arg0)
 :qid |typeInv:U_2_int|
 :pattern ( (int_2_U arg0))
))) (forall ((x T@U) ) (!  (=> (= (type x) intType) (= (int_2_U (U_2_int x)) x))
 :qid |cast:U_2_int|
 :pattern ( (U_2_int x))
))) (forall ((arg0@@0 Int) ) (! (= (type (int_2_U arg0@@0)) intType)
 :qid |funType:int_2_U|
 :pattern ( (int_2_U arg0@@0))
))) (forall ((arg0@@1 Real) ) (! (= (U_2_real (real_2_U arg0@@1)) arg0@@1)
 :qid |typeInv:U_2_real|
 :pattern ( (real_2_U arg0@@1))
))) (forall ((x@@0 T@U) ) (!  (=> (= (type x@@0) realType) (= (real_2_U (U_2_real x@@0)) x@@0))
 :qid |cast:U_2_real|
 :pattern ( (U_2_real x@@0))
))) (forall ((arg0@@2 Real) ) (! (= (type (real_2_U arg0@@2)) realType)
 :qid |funType:real_2_U|
 :pattern ( (real_2_U arg0@@2))
))) (forall ((arg0@@3 Bool) ) (! (= (U_2_bool (bool_2_U arg0@@3)) arg0@@3)
 :qid |typeInv:U_2_bool|
 :pattern ( (bool_2_U arg0@@3))
))) (forall ((x@@1 T@U) ) (!  (=> (= (type x@@1) boolType) (= (bool_2_U (U_2_bool x@@1)) x@@1))
 :qid |cast:U_2_bool|
 :pattern ( (U_2_bool x@@1))
))) (forall ((arg0@@4 Bool) ) (! (= (type (bool_2_U arg0@@4)) boolType)
 :qid |funType:bool_2_U|
 :pattern ( (bool_2_U arg0@@4))
))) (forall ((arg0@@5 RoundingMode) ) (! (= (U_2_rmode (rmode_2_U arg0@@5)) arg0@@5)
 :qid |typeInv:U_2_rmode|
 :pattern ( (rmode_2_U arg0@@5))
))) (forall ((x@@2 T@U) ) (!  (=> (= (type x@@2) rmodeType) (= (rmode_2_U (U_2_rmode x@@2)) x@@2))
 :qid |cast:U_2_rmode|
 :pattern ( (U_2_rmode x@@2))
))) (forall ((arg0@@6 RoundingMode) ) (! (= (type (rmode_2_U arg0@@6)) rmodeType)
 :qid |funType:rmode_2_U|
 :pattern ( (rmode_2_U arg0@@6))
))) (forall ((arg0@@7 String) ) (! (= (U_2_string (string_2_U arg0@@7)) arg0@@7)
 :qid |typeInv:U_2_string|
 :pattern ( (string_2_U arg0@@7))
))) (forall ((x@@3 T@U) ) (!  (=> (= (type x@@3) stringType) (= (string_2_U (U_2_string x@@3)) x@@3))
 :qid |cast:U_2_string|
 :pattern ( (U_2_string x@@3))
))) (forall ((arg0@@8 String) ) (! (= (type (string_2_U arg0@@8)) stringType)
 :qid |funType:string_2_U|
 :pattern ( (string_2_U arg0@@8))
))) (forall ((arg0@@9 (RegEx String)) ) (! (= (U_2_regex (regex_2_U arg0@@9)) arg0@@9)
 :qid |typeInv:U_2_regex|
 :pattern ( (regex_2_U arg0@@9))
))) (forall ((x@@4 T@U) ) (!  (=> (= (type x@@4) regexType) (= (regex_2_U (U_2_regex x@@4)) x@@4))
 :qid |cast:U_2_regex|
 :pattern ( (U_2_regex x@@4))
))) (forall ((arg0@@10 (RegEx String)) ) (! (= (type (regex_2_U arg0@@10)) regexType)
 :qid |funType:regex_2_U|
 :pattern ( (regex_2_U arg0@@10))
))))
(assert (forall ((x@@5 T@U) ) (! (UOrdering2 x@@5 x@@5)
 :qid |bg:subtype-refl|
 :no-pattern (U_2_int x@@5)
 :no-pattern (U_2_bool x@@5)
)))
(assert (forall ((x@@6 T@U) (y T@U) (z T@U) ) (! (let ((alpha (type x@@6)))
 (=> (and (and (= (type y) alpha) (= (type z) alpha)) (and (UOrdering2 x@@6 y) (UOrdering2 y z))) (UOrdering2 x@@6 z)))
 :qid |bg:subtype-trans|
 :pattern ( (UOrdering2 x@@6 y) (UOrdering2 y z))
)))
(assert (forall ((x@@7 T@U) (y@@0 T@U) ) (! (let ((alpha@@0 (type x@@7)))
 (=> (= (type y@@0) alpha@@0) (=> (and (UOrdering2 x@@7 y@@0) (UOrdering2 y@@0 x@@7)) (= x@@7 y@@0))))
 :qid |bg:subtype-antisymm|
 :pattern ( (UOrdering2 x@@7 y@@0) (UOrdering2 y@@0 x@@7))
)))
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (Ctor TyType) 6) (= (type TBool) TyType)) (= (type TChar) TyType)) (= (type TInt) TyType)) (= (type TReal) TyType)) (= (type TORDINAL) TyType)) (= (Ctor TyTagType) 7)) (= (type TagBool) TyTagType)) (= (type TagChar) TyTagType)) (= (type TagInt) TyTagType)) (= (type TagReal) TyTagType)) (= (type TagORDINAL) TyTagType)) (= (type TagSet) TyTagType)) (= (type TagISet) TyTagType)) (= (type TagMultiSet) TyTagType)) (= (type TagSeq) TyTagType)) (= (type TagMap) TyTagType)) (= (type TagIMap) TyTagType)) (= (type TagClass) TyTagType)) (= (Ctor ClassNameType) 8)) (= (type NoTraitAtAll) ClassNameType)) (= (type class._System.int) ClassNameType)) (= (type class._System.bool) ClassNameType)) (= (type class._System.set) ClassNameType)) (= (type class._System.seq) ClassNameType)) (= (type class._System.multiset) ClassNameType)) (forall ((arg0@@11 T@T) ) (! (= (Ctor (FieldType arg0@@11)) 9)
 :qid |ctor:FieldType|
))) (forall ((arg0@@12 T@T) ) (! (= (FieldTypeInv0 (FieldType arg0@@12)) arg0@@12)
 :qid |typeInv:FieldTypeInv0|
 :pattern ( (FieldType arg0@@12))
))) (= (type alloc) (FieldType boolType))) (= (Ctor NameFamilyType) 10)) (= (type allocName) NameFamilyType)) (= (type Tagclass._System.nat) TyTagType)) (= (type class._System.object?) ClassNameType)) (= (type Tagclass._System.object?) TyTagType)) (= (type Tagclass._System.object) TyTagType)) (= (type class._System.array?) ClassNameType)) (= (type Tagclass._System.array?) TyTagType)) (= (type Tagclass._System.array) TyTagType)) (= (type Tagclass._System.___hFunc0) TyTagType)) (= (type Tagclass._System.___hPartialFunc0) TyTagType)) (= (type Tagclass._System.___hTotalFunc0) TyTagType)) (= (type Tagclass._System.___hFunc1) TyTagType)) (= (type Tagclass._System.___hPartialFunc1) TyTagType)) (= (type Tagclass._System.___hTotalFunc1) TyTagType)) (= (type class._System.Tuple2) ClassNameType)) (= (Ctor DtCtorIdType) 11)) (= (type |##_System._tuple#2._#Make2|) DtCtorIdType)) (= (type Tagclass._System.Tuple2) TyTagType)) (= (type class._System.Tuple0) ClassNameType)) (= (type |##_System._tuple#0._#Make0|) DtCtorIdType)) (= (type Tagclass._System.Tuple0) TyTagType)) (= (type class._module.__default) ClassNameType)) (= (type Tagclass._module.__default) TyTagType)))
(assert (distinct TBool TChar TInt TReal TORDINAL TagBool TagChar TagInt TagReal TagORDINAL TagSet TagISet TagMultiSet TagSeq TagMap TagIMap TagClass NoTraitAtAll class._System.int class._System.bool class._System.set class._System.seq class._System.multiset alloc allocName Tagclass._System.nat class._System.object? Tagclass._System.object? Tagclass._System.object class._System.array? Tagclass._System.array? Tagclass._System.array Tagclass._System.___hFunc0 Tagclass._System.___hPartialFunc0 Tagclass._System.___hTotalFunc0 Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 class._System.Tuple2 |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 class._System.Tuple0 |##_System._tuple#0._#Make0| Tagclass._System.Tuple0 class._module.__default Tagclass._module.__default)
)
(assert  (and (and (and (and (and (and (and (and (and (and (forall ((arg0@@13 T@T) (arg1 T@T) ) (! (= (Ctor (MapType arg0@@13 arg1)) 12)
 :qid |ctor:MapType|
)) (forall ((arg0@@14 T@T) (arg1@@0 T@T) ) (! (= (MapTypeInv0 (MapType arg0@@14 arg1@@0)) arg0@@14)
 :qid |typeInv:MapTypeInv0|
 :pattern ( (MapType arg0@@14 arg1@@0))
))) (forall ((arg0@@15 T@T) (arg1@@1 T@T) ) (! (= (MapTypeInv1 (MapType arg0@@15 arg1@@1)) arg1@@1)
 :qid |typeInv:MapTypeInv1|
 :pattern ( (MapType arg0@@15 arg1@@1))
))) (forall ((arg0@@16 T@T) (arg1@@2 T@T) ) (! (= (Ctor (MapType0Type arg0@@16 arg1@@2)) 13)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@17 T@T) (arg1@@3 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@17 arg1@@3)) arg0@@17)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@17 arg1@@3))
))) (forall ((arg0@@18 T@T) (arg1@@4 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@18 arg1@@4)) arg1@@4)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@18 arg1@@4))
))) (forall ((arg0@@19 T@U) (arg1@@5 T@U) ) (! (let ((aVar1 (MapType0TypeInv1 (type arg0@@19))))
(= (type (MapType0Select arg0@@19 arg1@@5)) aVar1))
 :qid |funType:MapType0Select|
 :pattern ( (MapType0Select arg0@@19 arg1@@5))
))) (forall ((arg0@@20 T@U) (arg1@@6 T@U) (arg2 T@U) ) (! (let ((aVar1@@0 (type arg2)))
(let ((aVar0 (type arg1@@6)))
(= (type (MapType0Store arg0@@20 arg1@@6 arg2)) (MapType0Type aVar0 aVar1@@0))))
 :qid |funType:MapType0Store|
 :pattern ( (MapType0Store arg0@@20 arg1@@6 arg2))
))) (forall ((m T@U) (x0 T@U) (val T@U) ) (! (let ((aVar1@@1 (MapType0TypeInv1 (type m))))
 (=> (= (type val) aVar1@@1) (= (MapType0Select (MapType0Store m x0 val) x0) val)))
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (and (forall ((val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select (MapType0Store m@@0 x0@@0 val@@0) y0) (MapType0Select m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (y0@@0 T@U) ) (!  (or true (= (MapType0Select (MapType0Store m@@1 x0@@1 val@@1) y0@@0) (MapType0Select m@@1 y0@@0)))
 :qid |mapAx2:MapType0Select|
 :weight 0
)))) (forall ((arg0@@21 T@U) ) (! (let ((U (MapTypeInv0 (type arg0@@21))))
(= (type (|Map#Domain| arg0@@21)) (MapType0Type U boolType)))
 :qid |funType:Map#Domain|
 :pattern ( (|Map#Domain| arg0@@21))
))))
(assert (forall ((m@@2 T@U) (|m'| T@U) ) (! (let ((V (MapTypeInv1 (type m@@2))))
(let ((U@@0 (MapTypeInv0 (type m@@2))))
 (=> (and (= (type m@@2) (MapType U@@0 V)) (= (type |m'|) (MapType U@@0 V))) (= (|Map#Disjoint| m@@2 |m'|) (forall ((o T@U) ) (!  (=> (= (type o) U@@0) (or (not (U_2_bool (MapType0Select (|Map#Domain| m@@2) o))) (not (U_2_bool (MapType0Select (|Map#Domain| |m'|) o)))))
 :qid |seqgeneratedbpl.1493:19|
 :skolemid |288|
 :pattern ( (MapType0Select (|Map#Domain| m@@2) o))
 :pattern ( (MapType0Select (|Map#Domain| |m'|) o))
))))))
 :qid |seqgeneratedbpl.1490:20|
 :skolemid |289|
 :pattern ( (|Map#Disjoint| m@@2 |m'|))
)))
(assert (forall ((arg0@@22 T@U) ) (! (= (type (Tag arg0@@22)) TyTagType)
 :qid |funType:Tag|
 :pattern ( (Tag arg0@@22))
)))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (= (Tag TORDINAL) TagORDINAL))
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (forall ((arg0@@23 T@T) ) (! (= (Ctor (MapType1Type arg0@@23)) 14)
 :qid |ctor:MapType1Type|
)) (forall ((arg0@@24 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@24)) arg0@@24)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@24))
))) (forall ((arg0@@25 T@U) (arg1@@7 T@U) (arg2@@0 T@U) ) (! (let ((alpha@@1 (FieldTypeInv0 (type arg2@@0))))
(= (type (MapType1Select arg0@@25 arg1@@7 arg2@@0)) alpha@@1))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@25 arg1@@7 arg2@@0))
))) (forall ((arg0@@26 T@U) (arg1@@8 T@U) (arg2@@1 T@U) (arg3 T@U) ) (! (let ((aVar0@@0 (type arg1@@8)))
(= (type (MapType1Store arg0@@26 arg1@@8 arg2@@1 arg3)) (MapType1Type aVar0@@0)))
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@26 arg1@@8 arg2@@1 arg3))
))) (forall ((m@@3 T@U) (x0@@2 T@U) (x1 T@U) (val@@2 T@U) ) (! (let ((alpha@@2 (FieldTypeInv0 (type x1))))
 (=> (= (type val@@2) alpha@@2) (= (MapType1Select (MapType1Store m@@3 x0@@2 x1 val@@2) x0@@2 x1) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (and (forall ((val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@0 T@U) (y0@@1 T@U) (y1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@4 x0@@3 x1@@0 val@@3) y0@@1 y1) (MapType1Select m@@4 y0@@1 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@4 T@U) (m@@5 T@U) (x0@@4 T@U) (x1@@1 T@U) (y0@@2 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select (MapType1Store m@@5 x0@@4 x1@@1 val@@4) y0@@2 y1@@0) (MapType1Select m@@5 y0@@2 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
))) (forall ((val@@5 T@U) (m@@6 T@U) (x0@@5 T@U) (x1@@2 T@U) (y0@@3 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@6 x0@@5 x1@@2 val@@5) y0@@3 y1@@1) (MapType1Select m@@6 y0@@3 y1@@1)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))) (= (Ctor refType) 15)) (= (Ctor HandleTypeType) 16)) (= (Ctor BoxType) 17)) (= (type $OneHeap) (MapType1Type refType))) (forall ((arg0@@27 T@U) (arg1@@9 T@U) ) (! (= (type (Tclass._System.___hFunc1 arg0@@27 arg1@@9)) TyType)
 :qid |funType:Tclass._System.___hFunc1|
 :pattern ( (Tclass._System.___hFunc1 arg0@@27 arg1@@9))
))) (forall ((arg0@@28 T@U) (arg1@@10 T@U) (arg2@@2 T@U) (arg3@@0 T@U) (arg4 T@U) ) (! (= (type (Reads1 arg0@@28 arg1@@10 arg2@@2 arg3@@0 arg4)) (MapType0Type BoxType boolType))
 :qid |funType:Reads1|
 :pattern ( (Reads1 arg0@@28 arg1@@10 arg2@@2 arg3@@0 arg4))
))) (forall ((T T@T) ) (! (= (type (|Set#Empty| T)) (MapType0Type T boolType))
 :qid |funType:Set#Empty|
 :pattern ( (|Set#Empty| T))
))))
(assert (forall ((t0 T@U) (t1 T@U) (heap T@U) (f T@U) (bx0 T@U) ) (!  (=> (and (and (and (and (and (= (type t0) TyType) (= (type t1) TyType)) (= (type heap) (MapType1Type refType))) (= (type f) HandleTypeType)) (= (type bx0) BoxType)) (and (and (and ($IsGoodHeap heap) ($IsBox bx0 t0)) ($Is f (Tclass._System.___hFunc1 t0 t1))) (|Set#Equal| (Reads1 t0 t1 $OneHeap f bx0) (|Set#Empty| BoxType)))) (= (Requires1 t0 t1 $OneHeap f bx0) (Requires1 t0 t1 heap f bx0)))
 :qid |seqgeneratedbpl.2248:15|
 :skolemid |396|
 :pattern ( (Requires1 t0 t1 $OneHeap f bx0) ($IsGoodHeap heap))
 :pattern ( (Requires1 t0 t1 heap f bx0))
)))
(assert  (and (and (forall ((arg0@@29 T@U) ) (! (= (type (Tclass._System.array? arg0@@29)) TyType)
 :qid |funType:Tclass._System.array?|
 :pattern ( (Tclass._System.array? arg0@@29))
)) (= (type null) refType)) (forall ((arg0@@30 T@U) ) (! (= (type (dtype arg0@@30)) TyType)
 :qid |funType:dtype|
 :pattern ( (dtype arg0@@30))
))))
(assert (forall ((|#$arg| T@U) ($o T@U) ) (!  (=> (and (and (= (type |#$arg|) TyType) (= (type $o) refType)) (and (not (= $o null)) (= (dtype $o) (Tclass._System.array? |#$arg|)))) ($Is (int_2_U (_System.array.Length $o)) TInt))
 :qid |seqgeneratedbpl.1777:15|
 :skolemid |332|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? |#$arg|))
)))
(assert  (and (and (forall ((arg0@@31 T@U) (arg1@@11 T@U) ) (! (let ((T@@0 (MapType0TypeInv0 (type arg0@@31))))
(= (type (|MultiSet#Difference| arg0@@31 arg1@@11)) (MapType0Type T@@0 intType)))
 :qid |funType:MultiSet#Difference|
 :pattern ( (|MultiSet#Difference| arg0@@31 arg1@@11))
)) (forall ((arg0@@32 T@U) (arg1@@12 T@U) ) (! (let ((T@@1 (MapType0TypeInv0 (type arg0@@32))))
(= (type (|MultiSet#Intersection| arg0@@32 arg1@@12)) (MapType0Type T@@1 intType)))
 :qid |funType:MultiSet#Intersection|
 :pattern ( (|MultiSet#Intersection| arg0@@32 arg1@@12))
))) (forall ((arg0@@33 T@U) (arg1@@13 T@U) ) (! (let ((T@@2 (MapType0TypeInv0 (type arg0@@33))))
(= (type (|MultiSet#Union| arg0@@33 arg1@@13)) (MapType0Type T@@2 intType)))
 :qid |funType:MultiSet#Union|
 :pattern ( (|MultiSet#Union| arg0@@33 arg1@@13))
))))
(assert (forall ((a T@U) (b T@U) ) (! (let ((T@@3 (MapType0TypeInv0 (type a))))
 (=> (and (= (type a) (MapType0Type T@@3 intType)) (= (type b) (MapType0Type T@@3 intType))) (and (= (+ (+ (|MultiSet#Card| (|MultiSet#Difference| a b)) (|MultiSet#Card| (|MultiSet#Difference| b a))) (* 2 (|MultiSet#Card| (|MultiSet#Intersection| a b)))) (|MultiSet#Card| (|MultiSet#Union| a b))) (= (|MultiSet#Card| (|MultiSet#Difference| a b)) (- (|MultiSet#Card| a) (|MultiSet#Card| (|MultiSet#Intersection| a b)))))))
 :qid |seqgeneratedbpl.1052:18|
 :skolemid |197|
 :pattern ( (|MultiSet#Card| (|MultiSet#Difference| a b)))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> (and (and (= (type h) (MapType1Type refType)) (= (type k) (MapType1Type refType))) ($HeapSucc h k)) (forall ((o@@0 T@U) ) (!  (=> (and (= (type o@@0) refType) (U_2_bool (MapType1Select h o@@0 alloc))) (U_2_bool (MapType1Select k o@@0 alloc)))
 :qid |seqgeneratedbpl.651:18|
 :skolemid |109|
 :pattern ( (MapType1Select k o@@0 alloc))
)))
 :qid |seqgeneratedbpl.648:15|
 :skolemid |110|
 :pattern ( ($HeapSucc h k))
)))
(assert  (and (and (forall ((arg0@@34 T@T) ) (! (= (Ctor (SeqType arg0@@34)) 18)
 :qid |ctor:SeqType|
)) (forall ((arg0@@35 T@T) ) (! (= (SeqTypeInv0 (SeqType arg0@@35)) arg0@@35)
 :qid |typeInv:SeqTypeInv0|
 :pattern ( (SeqType arg0@@35))
))) (forall ((arg0@@36 T@U) ) (! (= (type (TSeq arg0@@36)) TyType)
 :qid |funType:TSeq|
 :pattern ( (TSeq arg0@@36))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|s#0| T@U) ) (!  (=> (and (= (type |s#0|) (SeqType BoxType)) (or (|_module.__default.sorted#canCall| |s#0|) (and (not (= 0 $FunctionContextHeight)) ($Is |s#0| (TSeq TInt))))) true)
 :qid |seqgeneratedbpl.2650:16|
 :skolemid |455|
 :pattern ( (_module.__default.sorted |s#0|))
))))
(assert (forall ((|#$arg@@0| T@U) ($o@@0 T@U) ($h T@U) ) (!  (=> (and (and (= (type |#$arg@@0|) TyType) (= (type $o@@0) refType)) (= (type $h) (MapType1Type refType))) (= ($IsAlloc $o@@0 (Tclass._System.array? |#$arg@@0|) $h)  (or (= $o@@0 null) (U_2_bool (MapType1Select $h $o@@0 alloc)))))
 :qid |seqgeneratedbpl.1771:15|
 :skolemid |331|
 :pattern ( ($IsAlloc $o@@0 (Tclass._System.array? |#$arg@@0|) $h))
)))
(assert (forall ((o@@1 T@U) (p T@U) (r T@U) ) (!  (=> (and (and (and (= (type o@@1) BoxType) (= (type p) BoxType)) (= (type r) BoxType)) (and (|ORD#Less| o@@1 p) (|ORD#Less| p r))) (|ORD#Less| o@@1 r))
 :qid |seqgeneratedbpl.444:15|
 :skolemid |83|
 :pattern ( (|ORD#Less| o@@1 p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o@@1 p) (|ORD#Less| o@@1 r))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (and (and (and (= (type a@@0) (MapType1Type refType)) (= (type b@@0) (MapType1Type refType))) (= (type c) (MapType1Type refType))) (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))) ($HeapSucc a@@0 c))
 :qid |seqgeneratedbpl.644:15|
 :skolemid |108|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (= (type Tclass._System.nat) TyType))
(assert (forall ((|x#0| T@U) ($h@@0 T@U) ) (!  (=> (and (= (type |x#0|) intType) (= (type $h@@0) (MapType1Type refType))) ($IsAlloc |x#0| Tclass._System.nat $h@@0))
 :qid |seqgeneratedbpl.1659:15|
 :skolemid |318|
 :pattern ( ($IsAlloc |x#0| Tclass._System.nat $h@@0))
)))
(assert (= (Ctor DatatypeTypeType) 19))
(assert (forall ((d T@U) ) (!  (=> (and (= (type d) DatatypeTypeType) (|$IsA#_System.Tuple2| d)) (_System.Tuple2.___hMake2_q d))
 :qid |seqgeneratedbpl.2516:15|
 :skolemid |440|
 :pattern ( (|$IsA#_System.Tuple2| d))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> (and (= (type d@@0) DatatypeTypeType) (|$IsA#_System.Tuple0| d@@0)) (_System.Tuple0.___hMake0_q d@@0))
 :qid |seqgeneratedbpl.2594:15|
 :skolemid |448|
 :pattern ( (|$IsA#_System.Tuple0| d@@0))
)))
(assert  (and (and (forall ((arg0@@37 T@U) ) (! (let ((T@@4 (SeqTypeInv0 (type arg0@@37))))
(= (type (|MultiSet#FromSeq| arg0@@37)) (MapType0Type T@@4 intType)))
 :qid |funType:MultiSet#FromSeq|
 :pattern ( (|MultiSet#FromSeq| arg0@@37))
)) (forall ((T@@5 T@T) ) (! (= (type ((as seq.empty T@U) T@@5)) (SeqType T@@5))
 :qid |funType:Seq#Empty|
 :pattern ( ((as seq.empty T@U) T@@5))
))) (forall ((T@@6 T@T) ) (! (= (type (|MultiSet#Empty| T@@6)) (MapType0Type T@@6 intType))
 :qid |funType:MultiSet#Empty|
 :pattern ( (|MultiSet#Empty| T@@6))
))))
(assert (forall ((T@@7 T@T) ) (! (= (|MultiSet#FromSeq| ((as seq.empty T@U) T@@7)) (|MultiSet#Empty| T@@7))
 :skolemid |210|
)))
(assert (= (type Tclass._System.object?) TyType))
(assert (forall (($o@@1 T@U) ($h@@1 T@U) ) (!  (=> (and (= (type $o@@1) refType) (= (type $h@@1) (MapType1Type refType))) (= ($IsAlloc $o@@1 Tclass._System.object? $h@@1)  (or (= $o@@1 null) (U_2_bool (MapType1Select $h@@1 $o@@1 alloc)))))
 :qid |seqgeneratedbpl.1682:15|
 :skolemid |321|
 :pattern ( ($IsAlloc $o@@1 Tclass._System.object? $h@@1))
)))
(assert (= (type Tclass._module.__default) TyType))
(assert (forall (($o@@2 T@U) ($h@@2 T@U) ) (!  (=> (and (= (type $o@@2) refType) (= (type $h@@2) (MapType1Type refType))) (= ($IsAlloc $o@@2 Tclass._module.__default $h@@2)  (or (= $o@@2 null) (U_2_bool (MapType1Select $h@@2 $o@@2 alloc)))))
 :qid |seqgeneratedbpl.2638:15|
 :skolemid |454|
 :pattern ( ($IsAlloc $o@@2 Tclass._module.__default $h@@2))
)))
(assert (forall ((arg0@@38 T@U) (arg1@@14 T@U) ) (! (let ((T@@8 (type arg1@@14)))
(= (type (|Seq#Build| arg0@@38 arg1@@14)) (SeqType T@@8)))
 :qid |funType:Seq#Build|
 :pattern ( (|Seq#Build| arg0@@38 arg1@@14))
)))
(assert (forall ((s T@U) (v T@U) (x@@8 T@U) ) (! (let ((T@@9 (type v)))
 (=> (and (= (type s) (SeqType T@@9)) (= (type x@@8) T@@9)) (= (|Seq#Contains| (|Seq#Build| s v) x@@8)  (or (= v x@@8) (|Seq#Contains| s x@@8)))))
 :qid |seqgeneratedbpl.1229:18|
 :skolemid |234|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v) x@@8))
)))
(assert  (and (and (forall ((arg0@@39 T@U) ) (! (= (type (Tclass._System.___hFunc0 arg0@@39)) TyType)
 :qid |funType:Tclass._System.___hFunc0|
 :pattern ( (Tclass._System.___hFunc0 arg0@@39))
)) (forall ((arg0@@40 T@U) (arg1@@15 T@U) (arg2@@3 T@U) ) (! (= (type (Reads0 arg0@@40 arg1@@15 arg2@@3)) (MapType0Type BoxType boolType))
 :qid |funType:Reads0|
 :pattern ( (Reads0 arg0@@40 arg1@@15 arg2@@3))
))) (forall ((arg0@@41 T@U) ) (! (= (type ($Box arg0@@41)) BoxType)
 :qid |funType:$Box|
 :pattern ( ($Box arg0@@41))
))))
(assert (forall ((t0@@0 T@U) (h0 T@U) (h1 T@U) (f@@0 T@U) ) (!  (=> (and (and (and (= (type t0@@0) TyType) (= (type h0) (MapType1Type refType))) (= (type h1) (MapType1Type refType))) (= (type f@@0) HandleTypeType)) (=> (and (and (and (and ($HeapSucc h0 h1) ($IsGoodHeap h0)) ($IsGoodHeap h1)) ($Is f@@0 (Tclass._System.___hFunc0 t0@@0))) (forall ((o@@2 T@U) (fld T@U) ) (! (let ((a@@1 (FieldTypeInv0 (type fld))))
 (=> (and (and (= (type o@@2) refType) (= (type fld) (FieldType a@@1))) (and (not (= o@@2 null)) (U_2_bool (MapType0Select (Reads0 t0@@0 h0 f@@0) ($Box o@@2))))) (= (MapType1Select h0 o@@2 fld) (MapType1Select h1 o@@2 fld))))
 :qid |seqgeneratedbpl.1913:22|
 :skolemid |349|
 :no-pattern (type o@@2)
 :no-pattern (type fld)
 :no-pattern (U_2_int o@@2)
 :no-pattern (U_2_bool o@@2)
 :no-pattern (U_2_int fld)
 :no-pattern (U_2_bool fld)
))) (= (Requires0 t0@@0 h0 f@@0) (Requires0 t0@@0 h1 f@@0))))
 :qid |seqgeneratedbpl.1906:15|
 :skolemid |350|
 :pattern ( ($HeapSucc h0 h1) (Requires0 t0@@0 h1 f@@0))
)))
(assert (forall ((t0@@1 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@1 T@U) ) (!  (=> (and (and (and (= (type t0@@1) TyType) (= (type h0@@0) (MapType1Type refType))) (= (type h1@@0) (MapType1Type refType))) (= (type f@@1) HandleTypeType)) (=> (and (and (and (and ($HeapSucc h0@@0 h1@@0) ($IsGoodHeap h0@@0)) ($IsGoodHeap h1@@0)) ($Is f@@1 (Tclass._System.___hFunc0 t0@@1))) (forall ((o@@3 T@U) (fld@@0 T@U) ) (! (let ((a@@2 (FieldTypeInv0 (type fld@@0))))
 (=> (and (and (= (type o@@3) refType) (= (type fld@@0) (FieldType a@@2))) (and (not (= o@@3 null)) (U_2_bool (MapType0Select (Reads0 t0@@1 h1@@0 f@@1) ($Box o@@3))))) (= (MapType1Select h0@@0 o@@3 fld@@0) (MapType1Select h1@@0 o@@3 fld@@0))))
 :qid |seqgeneratedbpl.1925:22|
 :skolemid |351|
 :no-pattern (type o@@3)
 :no-pattern (type fld@@0)
 :no-pattern (U_2_int o@@3)
 :no-pattern (U_2_bool o@@3)
 :no-pattern (U_2_int fld@@0)
 :no-pattern (U_2_bool fld@@0)
))) (= (Requires0 t0@@1 h0@@0 f@@1) (Requires0 t0@@1 h1@@0 f@@1))))
 :qid |seqgeneratedbpl.1918:15|
 :skolemid |352|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires0 t0@@1 h1@@0 f@@1))
)))
(assert (forall ((arg0@@42 T@U) (arg1@@16 T@U) (arg2@@4 T@U) ) (! (let ((V@@0 (MapType0TypeInv1 (type arg1@@16))))
(let ((U@@1 (MapType0TypeInv0 (type arg0@@42))))
(= (type (|Map#Glue| arg0@@42 arg1@@16 arg2@@4)) (MapType U@@1 V@@0))))
 :qid |funType:Map#Glue|
 :pattern ( (|Map#Glue| arg0@@42 arg1@@16 arg2@@4))
)))
(assert (forall ((a@@3 T@U) (b@@1 T@U) (t T@U) ) (! (let ((V@@1 (MapType0TypeInv1 (type b@@1))))
(let ((U@@2 (MapType0TypeInv0 (type a@@3))))
 (=> (and (and (= (type a@@3) (MapType0Type U@@2 boolType)) (= (type b@@1) (MapType0Type U@@2 V@@1))) (= (type t) TyType)) (= (|Map#Domain| (|Map#Glue| a@@3 b@@1 t)) a@@3))))
 :qid |seqgeneratedbpl.1446:20|
 :skolemid |278|
 :pattern ( (|Map#Domain| (|Map#Glue| a@@3 b@@1 t)))
)))
(assert (forall ((arg0@@43 T@U) ) (! (let ((V@@2 (MapTypeInv1 (type arg0@@43))))
(let ((U@@3 (MapTypeInv0 (type arg0@@43))))
(= (type (|Map#Elements| arg0@@43)) (MapType0Type U@@3 V@@2))))
 :qid |funType:Map#Elements|
 :pattern ( (|Map#Elements| arg0@@43))
)))
(assert (forall ((a@@4 T@U) (b@@2 T@U) (t@@0 T@U) ) (! (let ((V@@3 (MapType0TypeInv1 (type b@@2))))
(let ((U@@4 (MapType0TypeInv0 (type a@@4))))
 (=> (and (and (= (type a@@4) (MapType0Type U@@4 boolType)) (= (type b@@2) (MapType0Type U@@4 V@@3))) (= (type t@@0) TyType)) (= (|Map#Elements| (|Map#Glue| a@@4 b@@2 t@@0)) b@@2))))
 :qid |seqgeneratedbpl.1450:20|
 :skolemid |279|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@4 b@@2 t@@0)))
)))
(assert  (and (and (and (and (forall ((arg0@@44 T@T) (arg1@@17 T@T) ) (! (= (Ctor (IMapType arg0@@44 arg1@@17)) 20)
 :qid |ctor:IMapType|
)) (forall ((arg0@@45 T@T) (arg1@@18 T@T) ) (! (= (IMapTypeInv0 (IMapType arg0@@45 arg1@@18)) arg0@@45)
 :qid |typeInv:IMapTypeInv0|
 :pattern ( (IMapType arg0@@45 arg1@@18))
))) (forall ((arg0@@46 T@T) (arg1@@19 T@T) ) (! (= (IMapTypeInv1 (IMapType arg0@@46 arg1@@19)) arg1@@19)
 :qid |typeInv:IMapTypeInv1|
 :pattern ( (IMapType arg0@@46 arg1@@19))
))) (forall ((arg0@@47 T@U) ) (! (let ((U@@5 (IMapTypeInv0 (type arg0@@47))))
(= (type (|IMap#Domain| arg0@@47)) (MapType0Type U@@5 boolType)))
 :qid |funType:IMap#Domain|
 :pattern ( (|IMap#Domain| arg0@@47))
))) (forall ((arg0@@48 T@U) (arg1@@20 T@U) (arg2@@5 T@U) ) (! (let ((V@@4 (MapType0TypeInv1 (type arg1@@20))))
(let ((U@@6 (MapType0TypeInv0 (type arg0@@48))))
(= (type (|IMap#Glue| arg0@@48 arg1@@20 arg2@@5)) (IMapType U@@6 V@@4))))
 :qid |funType:IMap#Glue|
 :pattern ( (|IMap#Glue| arg0@@48 arg1@@20 arg2@@5))
))))
(assert (forall ((a@@5 T@U) (b@@3 T@U) (t@@1 T@U) ) (! (let ((V@@5 (MapType0TypeInv1 (type b@@3))))
(let ((U@@7 (MapType0TypeInv0 (type a@@5))))
 (=> (and (and (= (type a@@5) (MapType0Type U@@7 boolType)) (= (type b@@3) (MapType0Type U@@7 V@@5))) (= (type t@@1) TyType)) (= (|IMap#Domain| (|IMap#Glue| a@@5 b@@3 t@@1)) a@@5))))
 :qid |seqgeneratedbpl.1529:20|
 :skolemid |294|
 :pattern ( (|IMap#Domain| (|IMap#Glue| a@@5 b@@3 t@@1)))
)))
(assert (forall ((arg0@@49 T@U) ) (! (let ((V@@6 (IMapTypeInv1 (type arg0@@49))))
(let ((U@@8 (IMapTypeInv0 (type arg0@@49))))
(= (type (|IMap#Elements| arg0@@49)) (MapType0Type U@@8 V@@6))))
 :qid |funType:IMap#Elements|
 :pattern ( (|IMap#Elements| arg0@@49))
)))
(assert (forall ((a@@6 T@U) (b@@4 T@U) (t@@2 T@U) ) (! (let ((V@@7 (MapType0TypeInv1 (type b@@4))))
(let ((U@@9 (MapType0TypeInv0 (type a@@6))))
 (=> (and (and (= (type a@@6) (MapType0Type U@@9 boolType)) (= (type b@@4) (MapType0Type U@@9 V@@7))) (= (type t@@2) TyType)) (= (|IMap#Elements| (|IMap#Glue| a@@6 b@@4 t@@2)) b@@4))))
 :qid |seqgeneratedbpl.1533:20|
 :skolemid |295|
 :pattern ( (|IMap#Elements| (|IMap#Glue| a@@6 b@@4 t@@2)))
)))
(assert (forall ((a@@7 Int) (b@@5 Int) ) (!  (or (= (|Math#min| a@@7 b@@5) a@@7) (= (|Math#min| a@@7 b@@5) b@@5))
 :qid |seqgeneratedbpl.947:15|
 :skolemid |173|
 :pattern ( (|Math#min| a@@7 b@@5))
)))
(assert (forall ((arg0@@50 T@U) ) (! (= (type (Tclass._System.array arg0@@50)) TyType)
 :qid |funType:Tclass._System.array|
 :pattern ( (Tclass._System.array arg0@@50))
)))
(assert (forall ((_System.array$arg T@U) (|c#0| T@U) ($h@@3 T@U) ) (!  (=> (and (and (= (type _System.array$arg) TyType) (= (type |c#0|) refType)) (= (type $h@@3) (MapType1Type refType))) (= ($IsAlloc |c#0| (Tclass._System.array _System.array$arg) $h@@3) ($IsAlloc |c#0| (Tclass._System.array? _System.array$arg) $h@@3)))
 :qid |seqgeneratedbpl.1823:15|
 :skolemid |338|
 :pattern ( ($IsAlloc |c#0| (Tclass._System.array _System.array$arg) $h@@3))
)))
(assert (forall ((arg0@@51 T@U) ) (! (= (type (Tclass._System.___hPartialFunc0 arg0@@51)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc0|
 :pattern ( (Tclass._System.___hPartialFunc0 arg0@@51))
)))
(assert (forall ((|#$R| T@U) (|f#0| T@U) ($h@@4 T@U) ) (!  (=> (and (and (= (type |#$R|) TyType) (= (type |f#0|) HandleTypeType)) (= (type $h@@4) (MapType1Type refType))) (= ($IsAlloc |f#0| (Tclass._System.___hPartialFunc0 |#$R|) $h@@4) ($IsAlloc |f#0| (Tclass._System.___hFunc0 |#$R|) $h@@4)))
 :qid |seqgeneratedbpl.2030:15|
 :skolemid |370|
 :pattern ( ($IsAlloc |f#0| (Tclass._System.___hPartialFunc0 |#$R|) $h@@4))
)))
(assert (forall ((arg0@@52 T@U) ) (! (= (type (Tclass._System.___hTotalFunc0 arg0@@52)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc0|
 :pattern ( (Tclass._System.___hTotalFunc0 arg0@@52))
)))
(assert (forall ((|#$R@@0| T@U) (|f#0@@0| T@U) ($h@@5 T@U) ) (!  (=> (and (and (= (type |#$R@@0|) TyType) (= (type |f#0@@0|) HandleTypeType)) (= (type $h@@5) (MapType1Type refType))) (= ($IsAlloc |f#0@@0| (Tclass._System.___hTotalFunc0 |#$R@@0|) $h@@5) ($IsAlloc |f#0@@0| (Tclass._System.___hPartialFunc0 |#$R@@0|) $h@@5)))
 :qid |seqgeneratedbpl.2065:15|
 :skolemid |375|
 :pattern ( ($IsAlloc |f#0@@0| (Tclass._System.___hTotalFunc0 |#$R@@0|) $h@@5))
)))
(assert  (and (forall ((arg0@@53 T@U) (arg1@@21 T@U) ) (! (= (type (|ORD#Minus| arg0@@53 arg1@@21)) BoxType)
 :qid |funType:ORD#Minus|
 :pattern ( (|ORD#Minus| arg0@@53 arg1@@21))
)) (forall ((arg0@@54 Int) ) (! (= (type (|ORD#FromNat| arg0@@54)) BoxType)
 :qid |funType:ORD#FromNat|
 :pattern ( (|ORD#FromNat| arg0@@54))
))))
(assert (forall ((o@@4 T@U) (m@@7 Int) (n Int) ) (!  (=> (= (type o@@4) BoxType) (=> (and (and (<= 0 m@@7) (<= 0 n)) (<= (+ m@@7 n) (|ORD#Offset| o@@4))) (= (|ORD#Minus| (|ORD#Minus| o@@4 (|ORD#FromNat| m@@7)) (|ORD#FromNat| n)) (|ORD#Minus| o@@4 (|ORD#FromNat| (+ m@@7 n))))))
 :qid |seqgeneratedbpl.493:15|
 :skolemid |91|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@4 (|ORD#FromNat| m@@7)) (|ORD#FromNat| n)))
)))
(assert (forall ((arg0@@55 T@U) (arg1@@22 T@U) ) (! (= (type (Tclass._System.Tuple2 arg0@@55 arg1@@22)) TyType)
 :qid |funType:Tclass._System.Tuple2|
 :pattern ( (Tclass._System.Tuple2 arg0@@55 arg1@@22))
)))
(assert (forall ((|#$T0| T@U) (|#$T1| T@U) (d@@1 T@U) ) (!  (=> (and (and (and (= (type |#$T0|) TyType) (= (type |#$T1|) TyType)) (= (type d@@1) DatatypeTypeType)) ($Is d@@1 (Tclass._System.Tuple2 |#$T0| |#$T1|))) (_System.Tuple2.___hMake2_q d@@1))
 :qid |seqgeneratedbpl.2521:15|
 :skolemid |441|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1) ($Is d@@1 (Tclass._System.Tuple2 |#$T0| |#$T1|)))
)))
(assert  (and (forall ((arg0@@56 T@U) ) (! (= (type (_System.Tuple2._0 arg0@@56)) BoxType)
 :qid |funType:_System.Tuple2._0|
 :pattern ( (_System.Tuple2._0 arg0@@56))
)) (forall ((arg0@@57 T@U) ) (! (= (type (_System.Tuple2._1 arg0@@57)) BoxType)
 :qid |funType:_System.Tuple2._1|
 :pattern ( (_System.Tuple2._1 arg0@@57))
))))
(assert (forall ((a@@8 T@U) (b@@6 T@U) ) (!  (=> (and (and (= (type a@@8) DatatypeTypeType) (= (type b@@6) DatatypeTypeType)) true) (= (|_System.Tuple2#Equal| a@@8 b@@6)  (and (= (_System.Tuple2._0 a@@8) (_System.Tuple2._0 b@@6)) (= (_System.Tuple2._1 a@@8) (_System.Tuple2._1 b@@6)))))
 :qid |seqgeneratedbpl.2529:15|
 :skolemid |442|
 :pattern ( (|_System.Tuple2#Equal| a@@8 b@@6))
)))
(assert (forall ((arg0@@58 T@U) (arg1@@23 T@U) ) (! (let ((T@@10 (SeqTypeInv0 (type arg0@@58))))
(= (type (|Seq#Append| arg0@@58 arg1@@23)) (SeqType T@@10)))
 :qid |funType:Seq#Append|
 :pattern ( (|Seq#Append| arg0@@58 arg1@@23))
)))
(assert (forall ((s0 T@U) (s1 T@U) (t@@3 T@U) ) (!  (=> (and (and (and (= (type s0) (SeqType BoxType)) (= (type s1) (SeqType BoxType))) (= (type t@@3) TyType)) (and ($Is s0 t@@3) ($Is s1 t@@3))) ($Is (|Seq#Append| s0 s1) t@@3))
 :qid |seqgeneratedbpl.1183:15|
 :skolemid |225|
 :pattern ( ($Is (|Seq#Append| s0 s1) t@@3))
)))
(assert (forall ((x@@9 T@U) ) (! (let ((T@@11 (type x@@9)))
 (not (|Seq#Contains| ((as seq.empty T@U) T@@11) x@@9)))
 :qid |seqgeneratedbpl.1220:18|
 :skolemid |232|
 :pattern ( (let ((T@@11 (type x@@9)))
(|Seq#Contains| ((as seq.empty T@U) T@@11) x@@9)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (type Tclass._System.object) TyType))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert  (and (forall ((arg0@@59 T@U) ) (! (= (type (DatatypeCtorId arg0@@59)) DtCtorIdType)
 :qid |funType:DatatypeCtorId|
 :pattern ( (DatatypeCtorId arg0@@59))
)) (= (type |#_System._tuple#0._#Make0|) DatatypeTypeType)))
(assert (= (DatatypeCtorId |#_System._tuple#0._#Make0|) |##_System._tuple#0._#Make0|))
(assert (= (type Tclass._System.Tuple0) TyType))
(assert (= (Tag Tclass._System.Tuple0) Tagclass._System.Tuple0))
(assert (= (Tag Tclass._module.__default) Tagclass._module.__default))
(assert (forall ((arg0@@60 T@U) (arg1@@24 Int) ) (! (let ((T@@12 (SeqTypeInv0 (type arg0@@60))))
(= (type (|Seq#Drop| arg0@@60 arg1@@24)) (SeqType T@@12)))
 :qid |funType:Seq#Drop|
 :pattern ( (|Seq#Drop| arg0@@60 arg1@@24))
)))
(assert (forall ((s@@0 T@U) (v@@0 T@U) (n@@0 Int) ) (! (let ((T@@13 (type v@@0)))
 (=> (= (type s@@0) (SeqType T@@13)) (=> (and (<= 0 n@@0) (<= n@@0 (|Seq#Length| s@@0))) (= (|Seq#Drop| (|Seq#Build| s@@0 v@@0) n@@0) (|Seq#Build| (|Seq#Drop| s@@0 n@@0) v@@0)))))
 :qid |seqgeneratedbpl.1355:18|
 :skolemid |261|
 :pattern ( (|Seq#Drop| (|Seq#Build| s@@0 v@@0) n@@0))
)))
(assert (forall ((arg0@@61 T@U) ) (! (= (type (TMultiSet arg0@@61)) TyType)
 :qid |funType:TMultiSet|
 :pattern ( (TMultiSet arg0@@61))
)))
(assert (forall ((v@@1 T@U) (t0@@2 T@U) ) (!  (=> (and (and (= (type v@@1) (MapType0Type BoxType intType)) (= (type t0@@2) TyType)) ($Is v@@1 (TMultiSet t0@@2))) ($IsGoodMultiSet v@@1))
 :qid |seqgeneratedbpl.288:15|
 :skolemid |54|
 :pattern ( ($Is v@@1 (TMultiSet t0@@2)))
)))
(assert (forall (($o@@3 T@U) ) (!  (=> (= (type $o@@3) refType) (= ($Is $o@@3 Tclass._module.__default)  (or (= $o@@3 null) (= (dtype $o@@3) Tclass._module.__default))))
 :qid |seqgeneratedbpl.2632:15|
 :skolemid |453|
 :pattern ( ($Is $o@@3 Tclass._module.__default))
)))
(assert (forall ((s@@1 T@U) ) (! (let ((T@@14 (SeqTypeInv0 (type s@@1))))
 (=> (= (type s@@1) (SeqType T@@14)) ($IsGoodMultiSet (|MultiSet#FromSeq| s@@1))))
 :qid |seqgeneratedbpl.1097:18|
 :skolemid |207|
 :pattern ( (|MultiSet#FromSeq| s@@1))
)))
(assert  (and (forall ((arg0@@62 T@U) (arg1@@25 Int) ) (! (let ((T@@15 (SeqTypeInv0 (type arg0@@62))))
(= (type (|Seq#Index| arg0@@62 arg1@@25)) T@@15))
 :qid |funType:Seq#Index|
 :pattern ( (|Seq#Index| arg0@@62 arg1@@25))
)) (forall ((arg0@@63 T@U) (arg1@@26 Int) (arg2@@6 T@U) ) (! (let ((T@@16 (type arg2@@6)))
(= (type (|Seq#Update| arg0@@63 arg1@@26 arg2@@6)) (SeqType T@@16)))
 :qid |funType:Seq#Update|
 :pattern ( (|Seq#Update| arg0@@63 arg1@@26 arg2@@6))
))))
(assert (forall ((s@@2 T@U) (i Int) (v@@2 T@U) (n@@1 Int) ) (! (let ((T@@17 (type v@@2)))
 (=> (= (type s@@2) (SeqType T@@17)) (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length| s@@2))) (and (=> (= i n@@1) (= (|Seq#Index| (|Seq#Update| s@@2 i v@@2) n@@1) v@@2)) (=> (not (= i n@@1)) (= (|Seq#Index| (|Seq#Update| s@@2 i v@@2) n@@1) (|Seq#Index| s@@2 n@@1)))))))
 :qid |seqgeneratedbpl.1205:18|
 :skolemid |229|
 :pattern ( (|Seq#Index| (|Seq#Update| s@@2 i v@@2) n@@1))
)))
(assert  (and (and (and (and (and (and (and (forall ((arg0@@64 T@T) (arg1@@27 T@T) ) (! (= (Ctor (MapType2Type arg0@@64 arg1@@27)) 21)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@65 T@T) (arg1@@28 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@65 arg1@@28)) arg0@@65)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@65 arg1@@28))
))) (forall ((arg0@@66 T@T) (arg1@@29 T@T) ) (! (= (MapType2TypeInv1 (MapType2Type arg0@@66 arg1@@29)) arg1@@29)
 :qid |typeInv:MapType2TypeInv1|
 :pattern ( (MapType2Type arg0@@66 arg1@@29))
))) (forall ((arg0@@67 T@U) (arg1@@30 T@U) (arg2@@7 T@U) ) (! (let ((aVar1@@2 (MapType2TypeInv1 (type arg0@@67))))
(= (type (MapType2Select arg0@@67 arg1@@30 arg2@@7)) aVar1@@2))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@67 arg1@@30 arg2@@7))
))) (forall ((arg0@@68 T@U) (arg1@@31 T@U) (arg2@@8 T@U) (arg3@@1 T@U) ) (! (let ((aVar1@@3 (type arg3@@1)))
(let ((aVar0@@1 (type arg1@@31)))
(= (type (MapType2Store arg0@@68 arg1@@31 arg2@@8 arg3@@1)) (MapType2Type aVar0@@1 aVar1@@3))))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@68 arg1@@31 arg2@@8 arg3@@1))
))) (forall ((m@@8 T@U) (x0@@6 T@U) (x1@@3 T@U) (val@@6 T@U) ) (! (let ((aVar1@@4 (MapType2TypeInv1 (type m@@8))))
 (=> (= (type val@@6) aVar1@@4) (= (MapType2Select (MapType2Store m@@8 x0@@6 x1@@3 val@@6) x0@@6 x1@@3) val@@6)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (and (forall ((val@@7 T@U) (m@@9 T@U) (x0@@7 T@U) (x1@@4 T@U) (y0@@4 T@U) (y1@@2 T@U) ) (!  (or (= x0@@7 y0@@4) (= (MapType2Select (MapType2Store m@@9 x0@@7 x1@@4 val@@7) y0@@4 y1@@2) (MapType2Select m@@9 y0@@4 y1@@2)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@8 T@U) (m@@10 T@U) (x0@@8 T@U) (x1@@5 T@U) (y0@@5 T@U) (y1@@3 T@U) ) (!  (or (= x1@@5 y1@@3) (= (MapType2Select (MapType2Store m@@10 x0@@8 x1@@5 val@@8) y0@@5 y1@@3) (MapType2Select m@@10 y0@@5 y1@@3)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((val@@9 T@U) (m@@11 T@U) (x0@@9 T@U) (x1@@6 T@U) (y0@@6 T@U) (y1@@4 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@11 x0@@9 x1@@6 val@@9) y0@@6 y1@@4) (MapType2Select m@@11 y0@@6 y1@@4)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (forall ((arg0@@69 T@U) (arg1@@32 T@U) (arg2@@9 T@U) (arg3@@2 Bool) ) (! (= (type (|lambda#0| arg0@@69 arg1@@32 arg2@@9 arg3@@2)) (MapType2Type refType boolType))
 :qid |funType:lambda#0|
 :pattern ( (|lambda#0| arg0@@69 arg1@@32 arg2@@9 arg3@@2))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@4 T@U) ($f T@U) ) (! (let ((alpha@@3 (FieldTypeInv0 (type $f))))
 (=> (and (and (and (and (= (type |l#0|) refType) (= (type |l#1|) (MapType1Type refType))) (= (type |l#2|) (FieldType boolType))) (= (type $o@@4) refType)) (= (type $f) (FieldType alpha@@3))) (= (U_2_bool (MapType2Select (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@4 $f))  (=> (and (not (= $o@@4 |l#0|)) (U_2_bool (MapType1Select |l#1| $o@@4 |l#2|))) |l#3|))))
 :qid |seqgeneratedbpl.170:1|
 :skolemid |465|
 :pattern ( (MapType2Select (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@4 $f))
)))
(assert (forall ((arg0@@70 T@U) (arg1@@33 T@U) (arg2@@10 T@U) (arg3@@3 Bool) ) (! (= (type (|lambda#1| arg0@@70 arg1@@33 arg2@@10 arg3@@3)) (MapType2Type refType boolType))
 :qid |funType:lambda#1|
 :pattern ( (|lambda#1| arg0@@70 arg1@@33 arg2@@10 arg3@@3))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3@@0| Bool) ($o@@5 T@U) ($f@@0 T@U) ) (! (let ((alpha@@4 (FieldTypeInv0 (type $f@@0))))
 (=> (and (and (and (and (= (type |l#0@@0|) refType) (= (type |l#1@@0|) (MapType1Type refType))) (= (type |l#2@@0|) (FieldType boolType))) (= (type $o@@5) refType)) (= (type $f@@0) (FieldType alpha@@4))) (= (U_2_bool (MapType2Select (|lambda#1| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o@@5 $f@@0))  (=> (and (not (= $o@@5 |l#0@@0|)) (U_2_bool (MapType1Select |l#1@@0| $o@@5 |l#2@@0|))) |l#3@@0|))))
 :qid |seqgeneratedbpl.170:1|
 :skolemid |466|
 :pattern ( (MapType2Select (|lambda#1| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o@@5 $f@@0))
)))
(assert (forall ((arg0@@71 T@U) (arg1@@34 T@U) (arg2@@11 T@U) (arg3@@4 Bool) ) (! (= (type (|lambda#2| arg0@@71 arg1@@34 arg2@@11 arg3@@4)) (MapType2Type refType boolType))
 :qid |funType:lambda#2|
 :pattern ( (|lambda#2| arg0@@71 arg1@@34 arg2@@11 arg3@@4))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| T@U) (|l#2@@1| T@U) (|l#3@@1| Bool) ($o@@6 T@U) ($f@@1 T@U) ) (! (let ((alpha@@5 (FieldTypeInv0 (type $f@@1))))
 (=> (and (and (and (and (= (type |l#0@@1|) refType) (= (type |l#1@@1|) (MapType1Type refType))) (= (type |l#2@@1|) (FieldType boolType))) (= (type $o@@6) refType)) (= (type $f@@1) (FieldType alpha@@5))) (= (U_2_bool (MapType2Select (|lambda#2| |l#0@@1| |l#1@@1| |l#2@@1| |l#3@@1|) $o@@6 $f@@1))  (=> (and (not (= $o@@6 |l#0@@1|)) (U_2_bool (MapType1Select |l#1@@1| $o@@6 |l#2@@1|))) |l#3@@1|))))
 :qid |seqgeneratedbpl.170:1|
 :skolemid |467|
 :pattern ( (MapType2Select (|lambda#2| |l#0@@1| |l#1@@1| |l#2@@1| |l#3@@1|) $o@@6 $f@@1))
)))
(assert (forall ((arg0@@72 T@U) (arg1@@35 T@U) ) (! (let ((T@@18 (MapType0TypeInv0 (type arg0@@72))))
(= (type (|Set#Union| arg0@@72 arg1@@35)) (MapType0Type T@@18 boolType)))
 :qid |funType:Set#Union|
 :pattern ( (|Set#Union| arg0@@72 arg1@@35))
)))
(assert (forall ((a@@9 T@U) (b@@7 T@U) ) (! (let ((T@@19 (MapType0TypeInv0 (type a@@9))))
 (=> (and (= (type a@@9) (MapType0Type T@@19 boolType)) (= (type b@@7) (MapType0Type T@@19 boolType))) (= (|Set#Union| (|Set#Union| a@@9 b@@7) b@@7) (|Set#Union| a@@9 b@@7))))
 :qid |seqgeneratedbpl.790:18|
 :skolemid |134|
 :pattern ( (|Set#Union| (|Set#Union| a@@9 b@@7) b@@7))
)))
(assert (forall ((arg0@@73 T@U) (arg1@@36 T@U) ) (! (let ((T@@20 (MapType0TypeInv0 (type arg0@@73))))
(= (type (|Set#Intersection| arg0@@73 arg1@@36)) (MapType0Type T@@20 boolType)))
 :qid |funType:Set#Intersection|
 :pattern ( (|Set#Intersection| arg0@@73 arg1@@36))
)))
(assert (forall ((a@@10 T@U) (b@@8 T@U) ) (! (let ((T@@21 (MapType0TypeInv0 (type a@@10))))
 (=> (and (= (type a@@10) (MapType0Type T@@21 boolType)) (= (type b@@8) (MapType0Type T@@21 boolType))) (= (|Set#Intersection| (|Set#Intersection| a@@10 b@@8) b@@8) (|Set#Intersection| a@@10 b@@8))))
 :qid |seqgeneratedbpl.798:18|
 :skolemid |136|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@10 b@@8) b@@8))
)))
(assert (forall ((arg0@@74 T@U) (arg1@@37 T@U) ) (! (let ((T@@22 (MapType0TypeInv0 (type arg0@@74))))
(= (type (|ISet#Union| arg0@@74 arg1@@37)) (MapType0Type T@@22 boolType)))
 :qid |funType:ISet#Union|
 :pattern ( (|ISet#Union| arg0@@74 arg1@@37))
)))
(assert (forall ((a@@11 T@U) (b@@9 T@U) ) (! (let ((T@@23 (MapType0TypeInv0 (type a@@11))))
 (=> (and (= (type a@@11) (MapType0Type T@@23 boolType)) (= (type b@@9) (MapType0Type T@@23 boolType))) (= (|ISet#Union| (|ISet#Union| a@@11 b@@9) b@@9) (|ISet#Union| a@@11 b@@9))))
 :qid |seqgeneratedbpl.893:18|
 :skolemid |158|
 :pattern ( (|ISet#Union| (|ISet#Union| a@@11 b@@9) b@@9))
)))
(assert (forall ((arg0@@75 T@U) (arg1@@38 T@U) ) (! (let ((T@@24 (MapType0TypeInv0 (type arg0@@75))))
(= (type (|ISet#Intersection| arg0@@75 arg1@@38)) (MapType0Type T@@24 boolType)))
 :qid |funType:ISet#Intersection|
 :pattern ( (|ISet#Intersection| arg0@@75 arg1@@38))
)))
(assert (forall ((a@@12 T@U) (b@@10 T@U) ) (! (let ((T@@25 (MapType0TypeInv0 (type a@@12))))
 (=> (and (= (type a@@12) (MapType0Type T@@25 boolType)) (= (type b@@10) (MapType0Type T@@25 boolType))) (= (|ISet#Intersection| (|ISet#Intersection| a@@12 b@@10) b@@10) (|ISet#Intersection| a@@12 b@@10))))
 :qid |seqgeneratedbpl.901:18|
 :skolemid |160|
 :pattern ( (|ISet#Intersection| (|ISet#Intersection| a@@12 b@@10) b@@10))
)))
(assert (forall ((a@@13 T@U) (b@@11 T@U) ) (! (let ((T@@26 (MapType0TypeInv0 (type a@@13))))
 (=> (and (= (type a@@13) (MapType0Type T@@26 intType)) (= (type b@@11) (MapType0Type T@@26 intType))) (= (|MultiSet#Intersection| (|MultiSet#Intersection| a@@13 b@@11) b@@11) (|MultiSet#Intersection| a@@13 b@@11))))
 :qid |seqgeneratedbpl.1032:18|
 :skolemid |193|
 :pattern ( (|MultiSet#Intersection| (|MultiSet#Intersection| a@@13 b@@11) b@@11))
)))
(assert (forall ((f@@2 T@U) (t0@@3 T@U) (t1@@0 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and (and (and (and (= (type f@@2) HandleTypeType) (= (type t0@@3) TyType)) (= (type t1@@0) TyType)) (= (type u0) TyType)) (= (type u1) TyType)) (and (and ($Is f@@2 (Tclass._System.___hFunc1 t0@@3 t1@@0)) (forall ((bx T@U) ) (!  (=> (and (= (type bx) BoxType) ($IsBox bx u0)) ($IsBox bx t0@@3))
 :qid |seqgeneratedbpl.2269:19|
 :skolemid |399|
 :pattern ( ($IsBox bx u0))
 :pattern ( ($IsBox bx t0@@3))
))) (forall ((bx@@0 T@U) ) (!  (=> (and (= (type bx@@0) BoxType) ($IsBox bx@@0 t1@@0)) ($IsBox bx@@0 u1))
 :qid |seqgeneratedbpl.2272:19|
 :skolemid |400|
 :pattern ( ($IsBox bx@@0 t1@@0))
 :pattern ( ($IsBox bx@@0 u1))
)))) ($Is f@@2 (Tclass._System.___hFunc1 u0 u1)))
 :qid |seqgeneratedbpl.2266:15|
 :skolemid |401|
 :pattern ( ($Is f@@2 (Tclass._System.___hFunc1 t0@@3 t1@@0)) ($Is f@@2 (Tclass._System.___hFunc1 u0 u1)))
)))
(assert (forall ((arg0@@76 T@U) (arg1@@39 Int) ) (! (let ((T@@27 (SeqTypeInv0 (type arg0@@76))))
(= (type (|Seq#Take| arg0@@76 arg1@@39)) (SeqType T@@27)))
 :qid |funType:Seq#Take|
 :pattern ( (|Seq#Take| arg0@@76 arg1@@39))
)))
(assert (forall ((s@@3 T@U) (t@@4 T@U) (n@@2 Int) ) (! (let ((T@@28 (SeqTypeInv0 (type s@@3))))
 (=> (and (and (= (type s@@3) (SeqType T@@28)) (= (type t@@4) (SeqType T@@28))) (= n@@2 (|Seq#Length| s@@3))) (and (= (|Seq#Take| (|Seq#Append| s@@3 t@@4) n@@2) s@@3) (= (|Seq#Drop| (|Seq#Append| s@@3 t@@4) n@@2) t@@4))))
 :qid |seqgeneratedbpl.1295:18|
 :skolemid |249|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@3 t@@4) n@@2))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@3 t@@4) n@@2))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@6 T@U) ) (!  (=> (and (= (type |c#0@@0|) refType) (= (type $h@@6) (MapType1Type refType))) (= ($IsAlloc |c#0@@0| Tclass._System.object $h@@6) ($IsAlloc |c#0@@0| Tclass._System.object? $h@@6)))
 :qid |seqgeneratedbpl.1709:15|
 :skolemid |324|
 :pattern ( ($IsAlloc |c#0@@0| Tclass._System.object $h@@6))
)))
(assert (forall ((arg0@@77 T@U) (arg1@@40 T@U) (arg2@@12 T@U) ) (! (let ((V@@8 (type arg2@@12)))
(let ((U@@10 (type arg1@@40)))
(= (type (|Map#Build| arg0@@77 arg1@@40 arg2@@12)) (MapType U@@10 V@@8))))
 :qid |funType:Map#Build|
 :pattern ( (|Map#Build| arg0@@77 arg1@@40 arg2@@12))
)))
(assert (forall ((m@@12 T@U) (u T@U) (v@@3 T@U) ) (! (let ((V@@9 (type v@@3)))
(let ((U@@11 (type u)))
 (=> (and (= (type m@@12) (MapType U@@11 V@@9)) (U_2_bool (MapType0Select (|Map#Domain| m@@12) u))) (= (|Map#Card| (|Map#Build| m@@12 u v@@3)) (|Map#Card| m@@12)))))
 :qid |seqgeneratedbpl.1468:20|
 :skolemid |282|
 :pattern ( (|Map#Card| (|Map#Build| m@@12 u v@@3)))
)))
(assert (forall ((arg0@@78 T@U) ) (! (let ((T@@29 (type arg0@@78)))
(= (type (|Set#Singleton| arg0@@78)) (MapType0Type T@@29 boolType)))
 :qid |funType:Set#Singleton|
 :pattern ( (|Set#Singleton| arg0@@78))
)))
(assert (forall ((r@@0 T@U) (o@@5 T@U) ) (! (let ((T@@30 (type r@@0)))
 (=> (= (type o@@5) T@@30) (= (U_2_bool (MapType0Select (|Set#Singleton| r@@0) o@@5)) (= r@@0 o@@5))))
 :qid |seqgeneratedbpl.736:18|
 :skolemid |122|
 :pattern ( (MapType0Select (|Set#Singleton| r@@0) o@@5))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (and (= (type d@@2) DatatypeTypeType) ($Is d@@2 Tclass._System.Tuple0)) (_System.Tuple0.___hMake0_q d@@2))
 :qid |seqgeneratedbpl.2599:15|
 :skolemid |449|
 :pattern ( (_System.Tuple0.___hMake0_q d@@2) ($Is d@@2 Tclass._System.Tuple0))
)))
(assert (forall ((arg0@@79 Int) ) (! (= (type (IndexField arg0@@79)) (FieldType BoxType))
 :qid |funType:IndexField|
 :pattern ( (IndexField arg0@@79))
)))
(assert (forall ((|#$arg@@1| T@U) ($h@@7 T@U) ($o@@7 T@U) ($i0 Int) ) (!  (=> (and (and (= (type |#$arg@@1|) TyType) (= (type $h@@7) (MapType1Type refType))) (= (type $o@@7) refType)) (=> (and (and (and (and (and ($IsGoodHeap $h@@7) (not (= $o@@7 null))) (= (dtype $o@@7) (Tclass._System.array? |#$arg@@1|))) (<= 0 $i0)) (< $i0 (_System.array.Length $o@@7))) (U_2_bool (MapType1Select $h@@7 $o@@7 alloc))) ($IsAllocBox (MapType1Select $h@@7 $o@@7 (IndexField $i0)) |#$arg@@1| $h@@7)))
 :qid |seqgeneratedbpl.1752:15|
 :skolemid |329|
 :pattern ( (MapType1Select $h@@7 $o@@7 (IndexField $i0)) (Tclass._System.array? |#$arg@@1|))
)))
(assert (forall ((s@@4 T@U) (x@@10 T@U) ) (! (let ((T@@31 (type x@@10)))
 (=> (= (type s@@4) (SeqType T@@31)) (= (exists ((i@@0 Int) ) (!  (and (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@4))) (= x@@10 (|Seq#Index| s@@4 i@@0)))
 :qid |seqgeneratedbpl.1126:11|
 :skolemid |213|
 :pattern ( (|Seq#Index| s@@4 i@@0))
)) (< 0 (U_2_int (MapType0Select (|MultiSet#FromSeq| s@@4) x@@10))))))
 :qid |seqgeneratedbpl.1124:18|
 :skolemid |214|
 :pattern ( (MapType0Select (|MultiSet#FromSeq| s@@4) x@@10))
)))
(assert (forall ((arg0@@80 T@U) (arg1@@41 T@U) ) (! (= (type (|#_System._tuple#2._#Make2| arg0@@80 arg1@@41)) DatatypeTypeType)
 :qid |funType:#_System._tuple#2._#Make2|
 :pattern ( (|#_System._tuple#2._#Make2| arg0@@80 arg1@@41))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (!  (=> (and (and (and (= (type |#$T0@@0|) TyType) (= (type |#$T1@@0|) TyType)) (= (type |a#2#0#0|) BoxType)) (= (type |a#2#1#0|) BoxType)) (= ($Is (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |#$T0@@0| |#$T1@@0|))  (and ($IsBox |a#2#0#0| |#$T0@@0|) ($IsBox |a#2#1#0| |#$T1@@0|))))
 :qid |seqgeneratedbpl.2448:15|
 :skolemid |429|
 :pattern ( ($Is (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |#$T0@@0| |#$T1@@0|)))
)))
(assert (forall ((t0@@4 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@3 T@U) ) (!  (=> (and (and (and (= (type t0@@4) TyType) (= (type h0@@1) (MapType1Type refType))) (= (type h1@@1) (MapType1Type refType))) (= (type f@@3) HandleTypeType)) (=> (and (and (and (and ($HeapSucc h0@@1 h1@@1) ($IsGoodHeap h0@@1)) ($IsGoodHeap h1@@1)) ($Is f@@3 (Tclass._System.___hFunc0 t0@@4))) (forall ((o@@6 T@U) (fld@@1 T@U) ) (! (let ((a@@14 (FieldTypeInv0 (type fld@@1))))
 (=> (and (and (= (type o@@6) refType) (= (type fld@@1) (FieldType a@@14))) (and (not (= o@@6 null)) (U_2_bool (MapType0Select (Reads0 t0@@4 h0@@1 f@@3) ($Box o@@6))))) (= (MapType1Select h0@@1 o@@6 fld@@1) (MapType1Select h1@@1 o@@6 fld@@1))))
 :qid |seqgeneratedbpl.1889:22|
 :skolemid |345|
 :no-pattern (type o@@6)
 :no-pattern (type fld@@1)
 :no-pattern (U_2_int o@@6)
 :no-pattern (U_2_bool o@@6)
 :no-pattern (U_2_int fld@@1)
 :no-pattern (U_2_bool fld@@1)
))) (= (Reads0 t0@@4 h0@@1 f@@3) (Reads0 t0@@4 h1@@1 f@@3))))
 :qid |seqgeneratedbpl.1882:15|
 :skolemid |346|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads0 t0@@4 h1@@1 f@@3))
)))
(assert (forall ((t0@@5 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@4 T@U) ) (!  (=> (and (and (and (= (type t0@@5) TyType) (= (type h0@@2) (MapType1Type refType))) (= (type h1@@2) (MapType1Type refType))) (= (type f@@4) HandleTypeType)) (=> (and (and (and (and ($HeapSucc h0@@2 h1@@2) ($IsGoodHeap h0@@2)) ($IsGoodHeap h1@@2)) ($Is f@@4 (Tclass._System.___hFunc0 t0@@5))) (forall ((o@@7 T@U) (fld@@2 T@U) ) (! (let ((a@@15 (FieldTypeInv0 (type fld@@2))))
 (=> (and (and (= (type o@@7) refType) (= (type fld@@2) (FieldType a@@15))) (and (not (= o@@7 null)) (U_2_bool (MapType0Select (Reads0 t0@@5 h1@@2 f@@4) ($Box o@@7))))) (= (MapType1Select h0@@2 o@@7 fld@@2) (MapType1Select h1@@2 o@@7 fld@@2))))
 :qid |seqgeneratedbpl.1901:22|
 :skolemid |347|
 :no-pattern (type o@@7)
 :no-pattern (type fld@@2)
 :no-pattern (U_2_int o@@7)
 :no-pattern (U_2_bool o@@7)
 :no-pattern (U_2_int fld@@2)
 :no-pattern (U_2_bool fld@@2)
))) (= (Reads0 t0@@5 h0@@2 f@@4) (Reads0 t0@@5 h1@@2 f@@4))))
 :qid |seqgeneratedbpl.1894:15|
 :skolemid |348|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads0 t0@@5 h1@@2 f@@4))
)))
(assert (forall ((arg0@@81 T@U) (arg1@@42 T@U) (arg2@@13 T@U) ) (! (= (type (Apply0 arg0@@81 arg1@@42 arg2@@13)) BoxType)
 :qid |funType:Apply0|
 :pattern ( (Apply0 arg0@@81 arg1@@42 arg2@@13))
)))
(assert (forall ((t0@@6 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@5 T@U) ) (!  (=> (and (and (and (= (type t0@@6) TyType) (= (type h0@@3) (MapType1Type refType))) (= (type h1@@3) (MapType1Type refType))) (= (type f@@5) HandleTypeType)) (=> (and (and (and (and ($HeapSucc h0@@3 h1@@3) ($IsGoodHeap h0@@3)) ($IsGoodHeap h1@@3)) ($Is f@@5 (Tclass._System.___hFunc0 t0@@6))) (forall ((o@@8 T@U) (fld@@3 T@U) ) (! (let ((a@@16 (FieldTypeInv0 (type fld@@3))))
 (=> (and (and (= (type o@@8) refType) (= (type fld@@3) (FieldType a@@16))) (and (not (= o@@8 null)) (U_2_bool (MapType0Select (Reads0 t0@@6 h0@@3 f@@5) ($Box o@@8))))) (= (MapType1Select h0@@3 o@@8 fld@@3) (MapType1Select h1@@3 o@@8 fld@@3))))
 :qid |seqgeneratedbpl.1937:22|
 :skolemid |353|
 :no-pattern (type o@@8)
 :no-pattern (type fld@@3)
 :no-pattern (U_2_int o@@8)
 :no-pattern (U_2_bool o@@8)
 :no-pattern (U_2_int fld@@3)
 :no-pattern (U_2_bool fld@@3)
))) (= (Apply0 t0@@6 h0@@3 f@@5) (Apply0 t0@@6 h1@@3 f@@5))))
 :qid |seqgeneratedbpl.1930:15|
 :skolemid |354|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply0 t0@@6 h1@@3 f@@5))
)))
(assert (forall ((t0@@7 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@6 T@U) ) (!  (=> (and (and (and (= (type t0@@7) TyType) (= (type h0@@4) (MapType1Type refType))) (= (type h1@@4) (MapType1Type refType))) (= (type f@@6) HandleTypeType)) (=> (and (and (and (and ($HeapSucc h0@@4 h1@@4) ($IsGoodHeap h0@@4)) ($IsGoodHeap h1@@4)) ($Is f@@6 (Tclass._System.___hFunc0 t0@@7))) (forall ((o@@9 T@U) (fld@@4 T@U) ) (! (let ((a@@17 (FieldTypeInv0 (type fld@@4))))
 (=> (and (and (= (type o@@9) refType) (= (type fld@@4) (FieldType a@@17))) (and (not (= o@@9 null)) (U_2_bool (MapType0Select (Reads0 t0@@7 h1@@4 f@@6) ($Box o@@9))))) (= (MapType1Select h0@@4 o@@9 fld@@4) (MapType1Select h1@@4 o@@9 fld@@4))))
 :qid |seqgeneratedbpl.1949:22|
 :skolemid |355|
 :no-pattern (type o@@9)
 :no-pattern (type fld@@4)
 :no-pattern (U_2_int o@@9)
 :no-pattern (U_2_bool o@@9)
 :no-pattern (U_2_int fld@@4)
 :no-pattern (U_2_bool fld@@4)
))) (= (Apply0 t0@@7 h0@@4 f@@6) (Apply0 t0@@7 h1@@4 f@@6))))
 :qid |seqgeneratedbpl.1942:15|
 :skolemid |356|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply0 t0@@7 h1@@4 f@@6))
)))
(assert ($Is |#_System._tuple#0._#Make0| Tclass._System.Tuple0))
(assert (forall (($h@@8 T@U) ) (!  (=> (and (= (type $h@@8) (MapType1Type refType)) ($IsGoodHeap $h@@8)) ($IsAlloc |#_System._tuple#0._#Make0| Tclass._System.Tuple0 $h@@8))
 :qid |seqgeneratedbpl.2582:15|
 :skolemid |447|
 :pattern ( ($IsAlloc |#_System._tuple#0._#Make0| Tclass._System.Tuple0 $h@@8))
)))
(assert (forall ((arg0@@82 T@U) (arg1@@43 T@U) (arg2@@14 T@U) ) (! (= (type (Handle0 arg0@@82 arg1@@43 arg2@@14)) HandleTypeType)
 :qid |funType:Handle0|
 :pattern ( (Handle0 arg0@@82 arg1@@43 arg2@@14))
)))
(assert (forall ((t0@@8 T@U) (heap@@0 T@U) (h@@0 T@U) (r@@1 T@U) (rd T@U) ) (!  (=> (and (and (and (and (= (type t0@@8) TyType) (= (type heap@@0) (MapType1Type refType))) (= (type h@@0) (MapType0Type (MapType1Type refType) BoxType))) (= (type r@@1) (MapType0Type (MapType1Type refType) boolType))) (= (type rd) (MapType0Type (MapType1Type refType) (MapType0Type BoxType boolType)))) (= (Apply0 t0@@8 heap@@0 (Handle0 h@@0 r@@1 rd)) (MapType0Select h@@0 heap@@0)))
 :qid |seqgeneratedbpl.1859:15|
 :skolemid |342|
 :pattern ( (Apply0 t0@@8 heap@@0 (Handle0 h@@0 r@@1 rd)))
)))
(assert (forall ((a@@18 T@U) (b@@12 T@U) ) (! (let ((T@@32 (MapType0TypeInv0 (type a@@18))))
 (=> (and (= (type a@@18) (MapType0Type T@@32 boolType)) (= (type b@@12) (MapType0Type T@@32 boolType))) (= (+ (|Set#Card| (|Set#Union| a@@18 b@@12)) (|Set#Card| (|Set#Intersection| a@@18 b@@12))) (+ (|Set#Card| a@@18) (|Set#Card| b@@12)))))
 :qid |seqgeneratedbpl.806:18|
 :skolemid |138|
 :pattern ( (|Set#Card| (|Set#Union| a@@18 b@@12)))
 :pattern ( (|Set#Card| (|Set#Intersection| a@@18 b@@12)))
)))
(assert (forall ((arg0@@83 T@U) (arg1@@44 T@U) ) (! (= (type (|Seq#FromArray| arg0@@83 arg1@@44)) (SeqType BoxType))
 :qid |funType:Seq#FromArray|
 :pattern ( (|Seq#FromArray| arg0@@83 arg1@@44))
)))
(assert (forall ((h@@1 T@U) (a@@19 T@U) (n0 Int) (n1 Int) ) (!  (=> (and (= (type h@@1) (MapType1Type refType)) (= (type a@@19) refType)) (=> (and (and (= (+ n0 1) n1) (<= 0 n0)) (<= n1 (_System.array.Length a@@19))) (= (|Seq#Take| (|Seq#FromArray| h@@1 a@@19) n1) (|Seq#Build| (|Seq#Take| (|Seq#FromArray| h@@1 a@@19) n0) (MapType1Select h@@1 a@@19 (IndexField n0))))))
 :qid |seqgeneratedbpl.1349:15|
 :skolemid |260|
 :pattern ( (|Seq#Take| (|Seq#FromArray| h@@1 a@@19) n0) (|Seq#Take| (|Seq#FromArray| h@@1 a@@19) n1))
)))
(assert (forall ((s@@5 T@U) (i@@1 Int) (v@@4 T@U) (n@@3 Int) ) (! (let ((T@@33 (type v@@4)))
 (=> (= (type s@@5) (SeqType T@@33)) (=> (and (and (<= 0 n@@3) (<= n@@3 i@@1)) (< i@@1 (|Seq#Length| s@@5))) (= (|Seq#Drop| (|Seq#Update| s@@5 i@@1 v@@4) n@@3) (|Seq#Update| (|Seq#Drop| s@@5 n@@3) (- i@@1 n@@3) v@@4)))))
 :qid |seqgeneratedbpl.1339:18|
 :skolemid |258|
 :pattern ( (|Seq#Drop| (|Seq#Update| s@@5 i@@1 v@@4) n@@3))
)))
(assert (forall ((a@@20 T@U) (b@@13 T@U) (o@@10 T@U) ) (! (let ((T@@34 (type o@@10)))
 (=> (and (= (type a@@20) (MapType0Type T@@34 intType)) (= (type b@@13) (MapType0Type T@@34 intType))) (= (U_2_int (MapType0Select (|MultiSet#Union| a@@20 b@@13) o@@10)) (+ (U_2_int (MapType0Select a@@20 o@@10)) (U_2_int (MapType0Select b@@13 o@@10))))))
 :qid |seqgeneratedbpl.1018:18|
 :skolemid |190|
 :pattern ( (MapType0Select (|MultiSet#Union| a@@20 b@@13) o@@10))
)))
(assert (forall ((a@@21 T@U) (b@@14 T@U) ) (!  (=> (and (= (type a@@21) DatatypeTypeType) (= (type b@@14) DatatypeTypeType)) (= (|_System.Tuple2#Equal| a@@21 b@@14) (= a@@21 b@@14)))
 :qid |seqgeneratedbpl.2537:15|
 :skolemid |443|
 :pattern ( (|_System.Tuple2#Equal| a@@21 b@@14))
)))
(assert (forall ((a@@22 T@U) (b@@15 T@U) ) (!  (=> (and (= (type a@@22) DatatypeTypeType) (= (type b@@15) DatatypeTypeType)) (= (|_System.Tuple0#Equal| a@@22 b@@15) (= a@@22 b@@15)))
 :qid |seqgeneratedbpl.2612:15|
 :skolemid |451|
 :pattern ( (|_System.Tuple0#Equal| a@@22 b@@15))
)))
(assert (forall ((s@@6 T@U) (n@@4 Int) ) (! (let ((T@@35 (SeqTypeInv0 (type s@@6))))
 (=> (and (= (type s@@6) (SeqType T@@35)) (= n@@4 0)) (= (|Seq#Drop| s@@6 n@@4) s@@6)))
 :qid |seqgeneratedbpl.1380:18|
 :skolemid |266|
 :pattern ( (|Seq#Drop| s@@6 n@@4))
)))
(assert (forall ((s@@7 T@U) (i@@2 Int) (v@@5 T@U) (n@@5 Int) ) (! (let ((T@@36 (type v@@5)))
 (=> (= (type s@@7) (SeqType T@@36)) (=> (and (and (<= 0 i@@2) (< i@@2 n@@5)) (< n@@5 (|Seq#Length| s@@7))) (= (|Seq#Drop| (|Seq#Update| s@@7 i@@2 v@@5) n@@5) (|Seq#Drop| s@@7 n@@5)))))
 :qid |seqgeneratedbpl.1344:18|
 :skolemid |259|
 :pattern ( (|Seq#Drop| (|Seq#Update| s@@7 i@@2 v@@5) n@@5))
)))
(assert (forall ((arg0@@84 T@U) ) (! (= (type (TSet arg0@@84)) TyType)
 :qid |funType:TSet|
 :pattern ( (TSet arg0@@84))
)))
(assert (forall ((v@@6 T@U) (t0@@9 T@U) ) (!  (=> (and (= (type v@@6) (MapType0Type BoxType boolType)) (= (type t0@@9) TyType)) (= ($Is v@@6 (TSet t0@@9)) (forall ((bx@@1 T@U) ) (!  (=> (and (= (type bx@@1) BoxType) (U_2_bool (MapType0Select v@@6 bx@@1))) ($IsBox bx@@1 t0@@9))
 :qid |seqgeneratedbpl.277:33|
 :skolemid |48|
 :pattern ( (MapType0Select v@@6 bx@@1))
))))
 :qid |seqgeneratedbpl.275:15|
 :skolemid |49|
 :pattern ( ($Is v@@6 (TSet t0@@9)))
)))
(assert (forall ((arg0@@85 T@U) ) (! (= (type (TISet arg0@@85)) TyType)
 :qid |funType:TISet|
 :pattern ( (TISet arg0@@85))
)))
(assert (forall ((v@@7 T@U) (t0@@10 T@U) ) (!  (=> (and (= (type v@@7) (MapType0Type BoxType boolType)) (= (type t0@@10) TyType)) (= ($Is v@@7 (TISet t0@@10)) (forall ((bx@@2 T@U) ) (!  (=> (and (= (type bx@@2) BoxType) (U_2_bool (MapType0Select v@@7 bx@@2))) ($IsBox bx@@2 t0@@10))
 :qid |seqgeneratedbpl.281:34|
 :skolemid |50|
 :pattern ( (MapType0Select v@@7 bx@@2))
))))
 :qid |seqgeneratedbpl.279:15|
 :skolemid |51|
 :pattern ( ($Is v@@7 (TISet t0@@10)))
)))
(assert (forall ((a@@23 Int) ) (!  (=> (<= 0 a@@23) (= (|Math#clip| a@@23) a@@23))
 :qid |seqgeneratedbpl.953:15|
 :skolemid |174|
 :pattern ( (|Math#clip| a@@23))
)))
(assert (forall ((x@@11 Real) ) (! (= (q@Int x@@11) (to_int x@@11))
 :qid |seqgeneratedbpl.603:15|
 :skolemid |104|
 :pattern ( (q@Int x@@11))
)))
(assert (forall ((x@@12 Int) ) (! (= (LitInt x@@12) x@@12)
 :qid |seqgeneratedbpl.124:15|
 :skolemid |15|
 :pattern ( (LitInt x@@12))
)))
(assert (forall ((x@@13 Real) ) (! (= (LitReal x@@13) x@@13)
 :qid |seqgeneratedbpl.130:15|
 :skolemid |17|
 :pattern ( (LitReal x@@13))
)))
(assert (forall ((arg0@@86 T@U) ) (! (let ((T@@37 (type arg0@@86)))
(= (type (Lit arg0@@86)) T@@37))
 :qid |funType:Lit|
 :pattern ( (Lit arg0@@86))
)))
(assert (forall ((x@@14 T@U) ) (! (= (Lit x@@14) x@@14)
 :qid |seqgeneratedbpl.136:18|
 :skolemid |19|
 :pattern ( (Lit x@@14))
)))
(assert (forall ((s@@8 T@U) (bx@@3 T@U) (t@@5 T@U) ) (!  (=> (and (and (and (= (type s@@8) (SeqType BoxType)) (= (type bx@@3) BoxType)) (= (type t@@5) TyType)) (and ($Is s@@8 (TSeq t@@5)) ($IsBox bx@@3 t@@5))) ($Is (|Seq#Build| s@@8 bx@@3) (TSeq t@@5)))
 :qid |seqgeneratedbpl.1173:15|
 :skolemid |223|
 :pattern ( ($Is (|Seq#Build| s@@8 bx@@3) (TSeq t@@5)))
)))
(assert  (and (= (Ctor charType) 22) (forall ((arg0@@87 Int) ) (! (= (type (|char#FromInt| arg0@@87)) charType)
 :qid |funType:char#FromInt|
 :pattern ( (|char#FromInt| arg0@@87))
))))
(assert (forall ((n@@6 Int) ) (!  (=> (and (<= 0 n@@6) (< n@@6 65536)) (= (|char#ToInt| (|char#FromInt| n@@6)) n@@6))
 :qid |seqgeneratedbpl.152:15|
 :skolemid |22|
 :pattern ( (|char#FromInt| n@@6))
)))
(assert $$Language$Dafny)
(assert (forall ((s@@9 T@U) (n@@7 Int) (j Int) ) (! (let ((T@@38 (SeqTypeInv0 (type s@@9))))
 (=> (= (type s@@9) (SeqType T@@38)) (=> (and (and (<= 0 j) (< j n@@7)) (< j (|Seq#Length| s@@9))) (= (|Seq#Index| (|Seq#Take| s@@9 n@@7) j) (|Seq#Index| s@@9 j)))))
 :qid |seqgeneratedbpl.1274:18|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@9 n@@7) j))
 :pattern ( (|Seq#Index| s@@9 j) (|Seq#Take| s@@9 n@@7))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$T1@@1| T@U) (|a#3#0#0| T@U) (|a#3#1#0| T@U) ($h@@9 T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@1|) TyType) (= (type |#$T1@@1|) TyType)) (= (type |a#3#0#0|) BoxType)) (= (type |a#3#1#0|) BoxType)) (= (type $h@@9) (MapType1Type refType))) ($IsGoodHeap $h@@9)) (= ($IsAlloc (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|) (Tclass._System.Tuple2 |#$T0@@1| |#$T1@@1|) $h@@9)  (and ($IsAllocBox |a#3#0#0| |#$T0@@1| $h@@9) ($IsAllocBox |a#3#1#0| |#$T1@@1| $h@@9))))
 :qid |seqgeneratedbpl.2454:15|
 :skolemid |430|
 :pattern ( ($IsAlloc (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|) (Tclass._System.Tuple2 |#$T0@@1| |#$T1@@1|) $h@@9))
)))
(assert (forall ((s@@10 T@U) (n@@8 Int) ) (! (let ((T@@39 (SeqTypeInv0 (type s@@10))))
 (=> (= (type s@@10) (SeqType T@@39)) (=> (and (<= 0 n@@8) (<= n@@8 (|Seq#Length| s@@10))) (= (|Seq#Length| (|Seq#Drop| s@@10 n@@8)) (- (|Seq#Length| s@@10) n@@8)))))
 :qid |seqgeneratedbpl.1281:18|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@10 n@@8)))
)))
(assert (forall ((|#$arg@@2| T@U) ($h@@10 T@U) ($o@@8 T@U) ) (!  (=> (and (and (= (type |#$arg@@2|) TyType) (= (type $h@@10) (MapType1Type refType))) (= (type $o@@8) refType)) (=> (and (and (and ($IsGoodHeap $h@@10) (not (= $o@@8 null))) (= (dtype $o@@8) (Tclass._System.array? |#$arg@@2|))) (U_2_bool (MapType1Select $h@@10 $o@@8 alloc))) ($IsAlloc (int_2_U (_System.array.Length $o@@8)) TInt $h@@10)))
 :qid |seqgeneratedbpl.1783:15|
 :skolemid |333|
 :pattern ( (_System.array.Length $o@@8) (MapType1Select $h@@10 $o@@8 alloc) (Tclass._System.array? |#$arg@@2|))
)))
(assert (forall ((m@@13 T@U) (u@@0 T@U) (v@@8 T@U) ) (! (let ((V@@10 (type v@@8)))
(let ((U@@12 (type u@@0)))
 (=> (and (= (type m@@13) (MapType U@@12 V@@10)) (not (U_2_bool (MapType0Select (|Map#Domain| m@@13) u@@0)))) (= (|Map#Card| (|Map#Build| m@@13 u@@0 v@@8)) (+ (|Map#Card| m@@13) 1)))))
 :qid |seqgeneratedbpl.1472:20|
 :skolemid |283|
 :pattern ( (|Map#Card| (|Map#Build| m@@13 u@@0 v@@8)))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (= (type d@@3) DatatypeTypeType) (= (_System.Tuple2.___hMake2_q d@@3) (= (DatatypeCtorId d@@3) |##_System._tuple#2._#Make2|)))
 :qid |seqgeneratedbpl.2405:15|
 :skolemid |422|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (= (type d@@4) DatatypeTypeType) (= (_System.Tuple0.___hMake0_q d@@4) (= (DatatypeCtorId d@@4) |##_System._tuple#0._#Make0|)))
 :qid |seqgeneratedbpl.2554:15|
 :skolemid |444|
 :pattern ( (_System.Tuple0.___hMake0_q d@@4))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (let ((T@@40 (SeqTypeInv0 (type s0@@0))))
 (=> (and (= (type s0@@0) (SeqType T@@40)) (= (type s1@@0) (SeqType T@@40))) (= (|Seq#Equal| s0@@0 s1@@0)  (and (= (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (|Seq#Length| s0@@0))) (= (|Seq#Index| s0@@0 j@@0) (|Seq#Index| s1@@0 j@@0)))
 :qid |seqgeneratedbpl.1253:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0@@0 j@@0))
 :pattern ( (|Seq#Index| s1@@0 j@@0))
))))))
 :qid |seqgeneratedbpl.1249:18|
 :skolemid |240|
 :pattern ( (|Seq#Equal| s0@@0 s1@@0))
)))
(assert (forall ((a@@24 T@U) (b@@16 T@U) (o@@11 T@U) ) (! (let ((T@@41 (type o@@11)))
 (=> (and (= (type a@@24) (MapType0Type T@@41 intType)) (= (type b@@16) (MapType0Type T@@41 intType))) (= (U_2_int (MapType0Select (|MultiSet#Difference| a@@24 b@@16) o@@11)) (|Math#clip| (- (U_2_int (MapType0Select a@@24 o@@11)) (U_2_int (MapType0Select b@@16 o@@11)))))))
 :qid |seqgeneratedbpl.1044:18|
 :skolemid |195|
 :pattern ( (MapType0Select (|MultiSet#Difference| a@@24 b@@16) o@@11))
)))
(assert (forall ((s@@11 T@U) (i@@3 Int) ) (! (let ((T@@42 (SeqTypeInv0 (type s@@11))))
 (=> (= (type s@@11) (SeqType T@@42)) (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| s@@11))) (< (|Seq#Rank| (|Seq#Take| s@@11 i@@3)) (|Seq#Rank| s@@11)))))
 :qid |seqgeneratedbpl.1371:18|
 :skolemid |264|
 :pattern ( (|Seq#Rank| (|Seq#Take| s@@11 i@@3)))
)))
(assert (forall ((t0@@11 T@U) (heap@@1 T@U) (f@@7 T@U) ) (!  (=> (and (and (and (= (type t0@@11) TyType) (= (type heap@@1) (MapType1Type refType))) (= (type f@@7) HandleTypeType)) (and (and ($IsGoodHeap heap@@1) ($Is f@@7 (Tclass._System.___hFunc0 t0@@11))) (|Set#Equal| (Reads0 t0@@11 $OneHeap f@@7) (|Set#Empty| BoxType)))) (= (Requires0 t0@@11 $OneHeap f@@7) (Requires0 t0@@11 heap@@1 f@@7)))
 :qid |seqgeneratedbpl.1961:15|
 :skolemid |358|
 :pattern ( (Requires0 t0@@11 $OneHeap f@@7) ($IsGoodHeap heap@@1))
 :pattern ( (Requires0 t0@@11 heap@@1 f@@7))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (and (= (type d@@5) DatatypeTypeType) (_System.Tuple2.___hMake2_q d@@5)) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (!  (and (and (= (type |a#1#0#0|) BoxType) (= (type |a#1#1#0|) BoxType)) (= d@@5 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|)))
 :qid |seqgeneratedbpl.2414:18|
 :skolemid |423|
 :no-pattern (type |a#1#0#0|)
 :no-pattern (type |a#1#1#0|)
 :no-pattern (U_2_int |a#1#0#0|)
 :no-pattern (U_2_bool |a#1#0#0|)
 :no-pattern (U_2_int |a#1#1#0|)
 :no-pattern (U_2_bool |a#1#1#0|)
)))
 :qid |seqgeneratedbpl.2411:15|
 :skolemid |424|
 :pattern ( (_System.Tuple2.___hMake2_q d@@5))
)))
(assert (forall ((T@@43 T@T) ) (! (= (|Seq#Length| ((as seq.empty T@U) T@@43)) 0)
 :skolemid |216|
 :pattern ( ((as seq.empty T@U) T@@43))
)))
(assert  (and (forall ((arg0@@88 T@U) ) (! (= (type (SetRef_to_SetBox arg0@@88)) (MapType0Type BoxType boolType))
 :qid |funType:SetRef_to_SetBox|
 :pattern ( (SetRef_to_SetBox arg0@@88))
)) (forall ((T@@44 T@T) (arg0@@89 T@U) ) (! (= (type ($Unbox T@@44 arg0@@89)) T@@44)
 :qid |funType:$Unbox|
 :pattern ( ($Unbox T@@44 arg0@@89))
))))
(assert (forall ((s@@12 T@U) (bx@@4 T@U) ) (!  (=> (and (= (type s@@12) (MapType0Type refType boolType)) (= (type bx@@4) BoxType)) (= (U_2_bool (MapType0Select (SetRef_to_SetBox s@@12) bx@@4)) (U_2_bool (MapType0Select s@@12 ($Unbox refType bx@@4)))))
 :qid |seqgeneratedbpl.381:15|
 :skolemid |74|
 :pattern ( (MapType0Select (SetRef_to_SetBox s@@12) bx@@4))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (and (= (type d@@6) DatatypeTypeType) (_System.Tuple0.___hMake0_q d@@6)) (= d@@6 |#_System._tuple#0._#Make0|))
 :qid |seqgeneratedbpl.2560:15|
 :skolemid |445|
 :pattern ( (_System.Tuple0.___hMake0_q d@@6))
)))
(assert (forall ((arg0@@90 T@U) (arg1@@45 Int) ) (! (= (type (MultiIndexField arg0@@90 arg1@@45)) (FieldType BoxType))
 :qid |funType:MultiIndexField|
 :pattern ( (MultiIndexField arg0@@90 arg1@@45))
)))
(assert (forall ((f@@8 T@U) (i@@4 Int) ) (!  (=> (= (type f@@8) (FieldType BoxType)) (= (FDim (MultiIndexField f@@8 i@@4)) (+ (FDim f@@8) 1)))
 :qid |seqgeneratedbpl.555:15|
 :skolemid |98|
 :pattern ( (MultiIndexField f@@8 i@@4))
)))
(assert (forall ((arg0@@91 T@U) (arg1@@46 T@U) ) (! (let ((T@@45 (type arg1@@46)))
(= (type (|MultiSet#UnionOne| arg0@@91 arg1@@46)) (MapType0Type T@@45 intType)))
 :qid |funType:MultiSet#UnionOne|
 :pattern ( (|MultiSet#UnionOne| arg0@@91 arg1@@46))
)))
(assert (forall ((a@@25 T@U) (x@@15 T@U) ) (! (let ((T@@46 (type x@@15)))
 (=> (= (type a@@25) (MapType0Type T@@46 intType)) (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@25 x@@15)) (+ (|MultiSet#Card| a@@25) 1))))
 :qid |seqgeneratedbpl.1012:18|
 :skolemid |189|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@25 x@@15)))
)))
(assert (forall ((h0@@5 T@U) (h1@@5 T@U) (a@@26 T@U) ) (!  (=> (and (and (= (type h0@@5) (MapType1Type refType)) (= (type h1@@5) (MapType1Type refType))) (= (type a@@26) refType)) (=> (and (and (and ($IsGoodHeap h0@@5) ($IsGoodHeap h1@@5)) ($HeapSucc h0@@5 h1@@5)) (forall ((i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (_System.array.Length a@@26))) (= (MapType1Select h0@@5 a@@26 (IndexField i@@5)) (MapType1Select h1@@5 a@@26 (IndexField i@@5))))
 :qid |seqgeneratedbpl.1318:19|
 :skolemid |253|
))) (= (|Seq#FromArray| h0@@5 a@@26) (|Seq#FromArray| h1@@5 a@@26))))
 :qid |seqgeneratedbpl.1313:15|
 :skolemid |254|
 :pattern ( (|Seq#FromArray| h1@@5 a@@26) ($HeapSucc h0@@5 h1@@5))
)))
(assert (forall ((s@@13 T@U) (i@@6 Int) ) (! (let ((T@@47 (SeqTypeInv0 (type s@@13))))
 (=> (= (type s@@13) (SeqType T@@47)) (=> (and (< 0 i@@6) (<= i@@6 (|Seq#Length| s@@13))) (< (|Seq#Rank| (|Seq#Drop| s@@13 i@@6)) (|Seq#Rank| s@@13)))))
 :qid |seqgeneratedbpl.1367:18|
 :skolemid |263|
 :pattern ( (|Seq#Rank| (|Seq#Drop| s@@13 i@@6)))
)))
(assert  (and (= (Ctor LayerTypeType) 23) (forall ((arg0@@92 T@U) (arg1@@47 T@U) ) (! (let ((A (MapType0TypeInv1 (type arg0@@92))))
(= (type (AtLayer arg0@@92 arg1@@47)) A))
 :qid |funType:AtLayer|
 :pattern ( (AtLayer arg0@@92 arg1@@47))
))))
(assert (forall ((f@@9 T@U) (ly T@U) ) (! (let ((A@@0 (MapType0TypeInv1 (type f@@9))))
 (=> (and (= (type f@@9) (MapType0Type LayerTypeType A@@0)) (= (type ly) LayerTypeType)) (= (AtLayer f@@9 ly) (MapType0Select f@@9 ly))))
 :qid |seqgeneratedbpl.533:18|
 :skolemid |94|
 :pattern ( (AtLayer f@@9 ly))
)))
(assert (forall ((|x#0@@0| T@U) ) (!  (=> (= (type |x#0@@0|) intType) (= ($Is |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|))))
 :qid |seqgeneratedbpl.1654:15|
 :skolemid |317|
 :pattern ( ($Is |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((s@@14 T@U) (v@@9 T@U) ) (! (let ((T@@48 (type v@@9)))
 (=> (= (type s@@14) (SeqType T@@48)) (= (|Seq#Length| (|Seq#Build| s@@14 v@@9)) (+ 1 (|Seq#Length| s@@14)))))
 :qid |seqgeneratedbpl.1164:18|
 :skolemid |221|
 :pattern ( (|Seq#Build| s@@14 v@@9))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|s#0@@0| T@U) ) (!  (=> (and (= (type |s#0@@0|) (SeqType BoxType)) (or (|_module.__default.sorted#canCall| |s#0@@0|) (and (not (= 0 $FunctionContextHeight)) ($Is |s#0@@0| (TSeq TInt))))) (= (_module.__default.sorted |s#0@@0|) (forall ((|i#0| Int) (|j#0| Int) ) (!  (=> true (=> (and (and (<= (LitInt 0) |i#0|) (< |i#0| |j#0|)) (< |j#0| (|Seq#Length| |s#0@@0|))) (<= (U_2_int ($Unbox intType (|Seq#Index| |s#0@@0| |i#0|))) (U_2_int ($Unbox intType (|Seq#Index| |s#0@@0| |j#0|))))))
 :qid |seqgeneratedbpl.2670:21|
 :skolemid |457|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@0| |j#0|)) ($Unbox intType (|Seq#Index| |s#0@@0| |i#0|)))
))))
 :qid |seqgeneratedbpl.2665:16|
 :skolemid |458|
 :pattern ( (_module.__default.sorted |s#0@@0|))
))))
(assert (forall ((ch T@U) ) (!  (=> (= (type ch) charType) (and (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (<= 0 (|char#ToInt| ch))) (< (|char#ToInt| ch) 65536)))
 :qid |seqgeneratedbpl.146:15|
 :skolemid |21|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0@@1| T@U) ) (!  (=> (and (= (type _System.array$arg@@0) TyType) (= (type |c#0@@1|) refType)) (= ($Is |c#0@@1| (Tclass._System.array _System.array$arg@@0))  (and ($Is |c#0@@1| (Tclass._System.array? _System.array$arg@@0)) (not (= |c#0@@1| null)))))
 :qid |seqgeneratedbpl.1817:15|
 :skolemid |337|
 :pattern ( ($Is |c#0@@1| (Tclass._System.array _System.array$arg@@0)))
)))
(assert (forall ((v@@10 T@U) (t@@6 T@U) (h@@2 T@U) ) (!  (=> (and (= (type t@@6) TyType) (= (type h@@2) (MapType1Type refType))) (= ($IsAllocBox ($Box v@@10) t@@6 h@@2) ($IsAlloc v@@10 t@@6 h@@2)))
 :qid |seqgeneratedbpl.241:18|
 :skolemid |37|
 :pattern ( ($IsAllocBox ($Box v@@10) t@@6 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@0 T@U) (bx@@5 T@U) (t@@7 T@U) ) (!  (=> (and (and (and (and (and (= (type h@@3) (MapType1Type refType)) (= (type k@@0) (MapType1Type refType))) (= (type bx@@5) BoxType)) (= (type t@@7) TyType)) ($HeapSucc h@@3 k@@0)) ($IsAllocBox bx@@5 t@@7 h@@3)) ($IsAllocBox bx@@5 t@@7 k@@0))
 :qid |seqgeneratedbpl.587:15|
 :skolemid |102|
 :pattern ( ($HeapSucc h@@3 k@@0) ($IsAllocBox bx@@5 t@@7 h@@3))
)))
(assert (forall ((h@@4 T@U) (k@@1 T@U) (v@@11 T@U) (t@@8 T@U) ) (!  (=> (and (and (and (and (= (type h@@4) (MapType1Type refType)) (= (type k@@1) (MapType1Type refType))) (= (type t@@8) TyType)) ($HeapSucc h@@4 k@@1)) ($IsAlloc v@@11 t@@8 h@@4)) ($IsAlloc v@@11 t@@8 k@@1))
 :qid |seqgeneratedbpl.583:18|
 :skolemid |101|
 :pattern ( ($HeapSucc h@@4 k@@1) ($IsAlloc v@@11 t@@8 h@@4))
)))
(assert (forall ((d@@7 T@U) (|#$T0@@2| T@U) ($h@@11 T@U) ) (!  (=> (and (and (and (= (type d@@7) DatatypeTypeType) (= (type |#$T0@@2|) TyType)) (= (type $h@@11) (MapType1Type refType))) (and (and ($IsGoodHeap $h@@11) (_System.Tuple2.___hMake2_q d@@7)) (exists ((|#$T1@@2| T@U) ) (!  (and (= (type |#$T1@@2|) TyType) ($IsAlloc d@@7 (Tclass._System.Tuple2 |#$T0@@2| |#$T1@@2|) $h@@11))
 :qid |seqgeneratedbpl.2470:19|
 :skolemid |431|
 :pattern ( ($IsAlloc d@@7 (Tclass._System.Tuple2 |#$T0@@2| |#$T1@@2|) $h@@11))
)))) ($IsAllocBox (_System.Tuple2._0 d@@7) |#$T0@@2| $h@@11))
 :qid |seqgeneratedbpl.2465:15|
 :skolemid |432|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@7) |#$T0@@2| $h@@11))
)))
(assert (forall ((d@@8 T@U) (|#$T1@@3| T@U) ($h@@12 T@U) ) (!  (=> (and (and (and (= (type d@@8) DatatypeTypeType) (= (type |#$T1@@3|) TyType)) (= (type $h@@12) (MapType1Type refType))) (and (and ($IsGoodHeap $h@@12) (_System.Tuple2.___hMake2_q d@@8)) (exists ((|#$T0@@3| T@U) ) (!  (and (= (type |#$T0@@3|) TyType) ($IsAlloc d@@8 (Tclass._System.Tuple2 |#$T0@@3| |#$T1@@3|) $h@@12))
 :qid |seqgeneratedbpl.2481:19|
 :skolemid |433|
 :pattern ( ($IsAlloc d@@8 (Tclass._System.Tuple2 |#$T0@@3| |#$T1@@3|) $h@@12))
)))) ($IsAllocBox (_System.Tuple2._1 d@@8) |#$T1@@3| $h@@12))
 :qid |seqgeneratedbpl.2476:15|
 :skolemid |434|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@8) |#$T1@@3| $h@@12))
)))
(assert (forall ((a@@27 T@U) (b@@17 T@U) (t@@9 T@U) ) (! (let ((V@@11 (MapType0TypeInv1 (type b@@17))))
(let ((U@@13 (MapType0TypeInv0 (type a@@27))))
 (=> (and (and (= (type a@@27) (MapType0Type U@@13 boolType)) (= (type b@@17) (MapType0Type U@@13 V@@11))) (= (type t@@9) TyType)) ($Is (|Map#Glue| a@@27 b@@17 t@@9) t@@9))))
 :qid |seqgeneratedbpl.1454:20|
 :skolemid |280|
 :pattern ( ($Is (|Map#Glue| a@@27 b@@17 t@@9) t@@9))
)))
(assert (forall ((a@@28 T@U) (b@@18 T@U) (t@@10 T@U) ) (! (let ((V@@12 (MapType0TypeInv1 (type b@@18))))
(let ((U@@14 (MapType0TypeInv0 (type a@@28))))
 (=> (and (and (= (type a@@28) (MapType0Type U@@14 boolType)) (= (type b@@18) (MapType0Type U@@14 V@@12))) (= (type t@@10) TyType)) ($Is (|IMap#Glue| a@@28 b@@18 t@@10) t@@10))))
 :qid |seqgeneratedbpl.1537:20|
 :skolemid |296|
 :pattern ( ($Is (|IMap#Glue| a@@28 b@@18 t@@10) t@@10))
)))
(assert (forall ((s@@15 T@U) (n@@9 Int) (j@@1 Int) ) (! (let ((T@@49 (SeqTypeInv0 (type s@@15))))
 (=> (= (type s@@15) (SeqType T@@49)) (=> (and (and (<= 0 n@@9) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@15) n@@9))) (= (|Seq#Index| (|Seq#Drop| s@@15 n@@9) j@@1) (|Seq#Index| s@@15 (+ j@@1 n@@9))))))
 :qid |seqgeneratedbpl.1285:18|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@15 n@@9) j@@1))
)))
(assert (forall ((s@@16 T@U) ) (! (let ((T@@50 (MapType0TypeInv0 (type s@@16))))
 (=> (= (type s@@16) (MapType0Type T@@50 intType)) (and (= (= (|MultiSet#Card| s@@16) 0) (= s@@16 (|MultiSet#Empty| T@@50))) (=> (not (= (|MultiSet#Card| s@@16) 0)) (exists ((x@@16 T@U) ) (!  (and (= (type x@@16) T@@50) (< 0 (U_2_int (MapType0Select s@@16 x@@16))))
 :qid |seqgeneratedbpl.981:44|
 :skolemid |181|
 :no-pattern (type x@@16)
 :no-pattern (U_2_int x@@16)
 :no-pattern (U_2_bool x@@16)
))))))
 :qid |seqgeneratedbpl.978:18|
 :skolemid |182|
 :pattern ( (|MultiSet#Card| s@@16))
)))
(assert (forall ((a@@29 T@U) (b@@19 T@U) (y@@1 T@U) ) (! (let ((T@@51 (type y@@1)))
 (=> (and (and (= (type a@@29) (MapType0Type T@@51 intType)) (= (type b@@19) (MapType0Type T@@51 intType))) (<= (U_2_int (MapType0Select a@@29 y@@1)) (U_2_int (MapType0Select b@@19 y@@1)))) (= (U_2_int (MapType0Select (|MultiSet#Difference| a@@29 b@@19) y@@1)) 0)))
 :qid |seqgeneratedbpl.1048:18|
 :skolemid |196|
 :pattern ( (|MultiSet#Difference| a@@29 b@@19) (MapType0Select b@@19 y@@1) (MapType0Select a@@29 y@@1))
)))
(assert (forall ((U@@15 T@T) (V@@13 T@T) ) (! (= (type (|Map#Empty| U@@15 V@@13)) (MapType U@@15 V@@13))
 :qid |funType:Map#Empty|
 :pattern ( (|Map#Empty| U@@15 V@@13))
)))
(assert (forall ((u@@1 T@U) (V@@14 T@T) ) (! (let ((U@@16 (type u@@1)))
 (not (U_2_bool (MapType0Select (|Map#Domain| (|Map#Empty| U@@16 V@@14)) u@@1))))
 :qid |seqgeneratedbpl.1435:20|
 :skolemid |275|
 :pattern ( (let ((U@@16 (type u@@1)))
(MapType0Select (|Map#Domain| (|Map#Empty| U@@16 V@@14)) u@@1)))
)))
(assert (forall ((U@@17 T@T) (V@@15 T@T) ) (! (= (type (|IMap#Empty| U@@17 V@@15)) (IMapType U@@17 V@@15))
 :qid |funType:IMap#Empty|
 :pattern ( (|IMap#Empty| U@@17 V@@15))
)))
(assert (forall ((u@@2 T@U) (V@@16 T@T) ) (! (let ((U@@18 (type u@@2)))
 (not (U_2_bool (MapType0Select (|IMap#Domain| (|IMap#Empty| U@@18 V@@16)) u@@2))))
 :qid |seqgeneratedbpl.1523:20|
 :skolemid |293|
 :pattern ( (let ((U@@18 (type u@@2)))
(MapType0Select (|IMap#Domain| (|IMap#Empty| U@@18 V@@16)) u@@2)))
)))
(assert (forall ((h@@5 T@U) (k@@2 T@U) ) (!  (=> (and (and (= (type h@@5) (MapType1Type refType)) (= (type k@@2) (MapType1Type refType))) ($HeapSuccGhost h@@5 k@@2)) (and ($HeapSucc h@@5 k@@2) (forall ((o@@12 T@U) (f@@10 T@U) ) (! (let ((alpha@@6 (FieldTypeInv0 (type f@@10))))
 (=> (and (and (= (type o@@12) refType) (= (type f@@10) (FieldType alpha@@6))) (not ($IsGhostField f@@10))) (= (MapType1Select h@@5 o@@12 f@@10) (MapType1Select k@@2 o@@12 f@@10))))
 :qid |seqgeneratedbpl.659:26|
 :skolemid |111|
 :pattern ( (MapType1Select k@@2 o@@12 f@@10))
))))
 :qid |seqgeneratedbpl.655:15|
 :skolemid |112|
 :pattern ( ($HeapSuccGhost h@@5 k@@2))
)))
(assert (forall ((o@@13 T@U) (p@@0 T@U) ) (!  (=> (and (and (= (type o@@13) BoxType) (= (type p@@0) BoxType)) (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@13)))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@13 p@@0)) (|ORD#IsNat| o@@13)) (= (|ORD#Offset| (|ORD#Minus| o@@13 p@@0)) (- (|ORD#Offset| o@@13) (|ORD#Offset| p@@0)))))
 :qid |seqgeneratedbpl.475:15|
 :skolemid |88|
 :pattern ( (|ORD#Minus| o@@13 p@@0))
)))
(assert (forall ((a@@30 T@U) (b@@20 T@U) ) (! (let ((T@@52 (MapType0TypeInv0 (type a@@30))))
 (=> (and (= (type a@@30) (MapType0Type T@@52 boolType)) (= (type b@@20) (MapType0Type T@@52 boolType))) (= (|Set#Equal| a@@30 b@@20) (forall ((o@@14 T@U) ) (!  (=> (= (type o@@14) T@@52) (= (U_2_bool (MapType0Select a@@30 o@@14)) (U_2_bool (MapType0Select b@@20 o@@14))))
 :qid |seqgeneratedbpl.839:32|
 :skolemid |144|
 :pattern ( (MapType0Select a@@30 o@@14))
 :pattern ( (MapType0Select b@@20 o@@14))
)))))
 :qid |seqgeneratedbpl.837:18|
 :skolemid |145|
 :pattern ( (|Set#Equal| a@@30 b@@20))
)))
(assert (forall ((a@@31 T@U) (b@@21 T@U) ) (! (let ((T@@53 (MapType0TypeInv0 (type a@@31))))
 (=> (and (= (type a@@31) (MapType0Type T@@53 boolType)) (= (type b@@21) (MapType0Type T@@53 boolType))) (= (|ISet#Equal| a@@31 b@@21) (forall ((o@@15 T@U) ) (!  (=> (= (type o@@15) T@@53) (= (U_2_bool (MapType0Select a@@31 o@@15)) (U_2_bool (MapType0Select b@@21 o@@15))))
 :qid |seqgeneratedbpl.929:33|
 :skolemid |166|
 :pattern ( (MapType0Select a@@31 o@@15))
 :pattern ( (MapType0Select b@@21 o@@15))
)))))
 :qid |seqgeneratedbpl.927:18|
 :skolemid |167|
 :pattern ( (|ISet#Equal| a@@31 b@@21))
)))
(assert (forall ((a@@32 T@U) (b@@22 T@U) ) (! (let ((T@@54 (MapType0TypeInv0 (type a@@32))))
 (=> (and (= (type a@@32) (MapType0Type T@@54 intType)) (= (type b@@22) (MapType0Type T@@54 intType))) (= (|MultiSet#Card| (|MultiSet#Union| a@@32 b@@22)) (+ (|MultiSet#Card| a@@32) (|MultiSet#Card| b@@22)))))
 :qid |seqgeneratedbpl.1022:18|
 :skolemid |191|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@32 b@@22)))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) ) (! (let ((T@@55 (SeqTypeInv0 (type s0@@1))))
 (=> (and (= (type s0@@1) (SeqType T@@55)) (= (type s1@@1) (SeqType T@@55))) (= (|Seq#Length| (|Seq#Append| s0@@1 s1@@1)) (+ (|Seq#Length| s0@@1) (|Seq#Length| s1@@1)))))
 :qid |seqgeneratedbpl.1179:18|
 :skolemid |224|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@1 s1@@1)))
)))
(assert (forall ((n@@10 Int) ) (!  (=> (<= 0 n@@10) (and (|ORD#IsNat| (|ORD#FromNat| n@@10)) (= (|ORD#Offset| (|ORD#FromNat| n@@10)) n@@10)))
 :qid |seqgeneratedbpl.421:15|
 :skolemid |78|
 :pattern ( (|ORD#FromNat| n@@10))
)))
(assert (forall ((arg0@@93 T@U) (arg1@@48 T@U) ) (! (= (type (Tclass._System.___hPartialFunc1 arg0@@93 arg1@@48)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc1|
 :pattern ( (Tclass._System.___hPartialFunc1 arg0@@93 arg1@@48))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@1| T@U) (|f#0@@1| T@U) ($h@@13 T@U) ) (!  (=> (and (and (and (= (type |#$T0@@4|) TyType) (= (type |#$R@@1|) TyType)) (= (type |f#0@@1|) HandleTypeType)) (= (type $h@@13) (MapType1Type refType))) (= ($IsAlloc |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@1|) $h@@13) ($IsAlloc |f#0@@1| (Tclass._System.___hFunc1 |#$T0@@4| |#$R@@1|) $h@@13)))
 :qid |seqgeneratedbpl.2339:15|
 :skolemid |413|
 :pattern ( ($IsAlloc |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@1|) $h@@13))
)))
(assert (forall ((arg0@@94 T@U) (arg1@@49 T@U) ) (! (= (type (Tclass._System.___hTotalFunc1 arg0@@94 arg1@@49)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc1|
 :pattern ( (Tclass._System.___hTotalFunc1 arg0@@94 arg1@@49))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@2| T@U) (|f#0@@2| T@U) ($h@@14 T@U) ) (!  (=> (and (and (and (= (type |#$T0@@5|) TyType) (= (type |#$R@@2|) TyType)) (= (type |f#0@@2|) HandleTypeType)) (= (type $h@@14) (MapType1Type refType))) (= ($IsAlloc |f#0@@2| (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@2|) $h@@14) ($IsAlloc |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@5| |#$R@@2|) $h@@14)))
 :qid |seqgeneratedbpl.2384:15|
 :skolemid |420|
 :pattern ( ($IsAlloc |f#0@@2| (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@2|) $h@@14))
)))
(assert (forall ((ms T@U) ) (! (let ((T@@56 (MapType0TypeInv0 (type ms))))
 (=> (= (type ms) (MapType0Type T@@56 intType)) (= ($IsGoodMultiSet ms) (forall ((bx@@6 T@U) ) (!  (=> (= (type bx@@6) T@@56) (and (<= 0 (U_2_int (MapType0Select ms bx@@6))) (<= (U_2_int (MapType0Select ms bx@@6)) (|MultiSet#Card| ms))))
 :qid |seqgeneratedbpl.964:19|
 :skolemid |176|
 :pattern ( (MapType0Select ms bx@@6))
)))))
 :qid |seqgeneratedbpl.961:18|
 :skolemid |177|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((arg0@@95 T@U) (arg1@@50 T@U) ) (! (= (type (|ORD#Plus| arg0@@95 arg1@@50)) BoxType)
 :qid |funType:ORD#Plus|
 :pattern ( (|ORD#Plus| arg0@@95 arg1@@50))
)))
(assert (forall ((o@@16 T@U) (p@@1 T@U) ) (!  (=> (and (= (type o@@16) BoxType) (= (type p@@1) BoxType)) (and (or (= o@@16 (|ORD#Plus| o@@16 p@@1)) (|ORD#Less| o@@16 (|ORD#Plus| o@@16 p@@1))) (or (= p@@1 (|ORD#Plus| o@@16 p@@1)) (|ORD#Less| p@@1 (|ORD#Plus| o@@16 p@@1)))))
 :qid |seqgeneratedbpl.463:15|
 :skolemid |86|
 :pattern ( (|ORD#Plus| o@@16 p@@1))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((arg0@@96 T@T) (arg1@@51 T@T) (arg2@@15 T@T) ) (! (= (Ctor (MapType3Type arg0@@96 arg1@@51 arg2@@15)) 24)
 :qid |ctor:MapType3Type|
)) (forall ((arg0@@97 T@T) (arg1@@52 T@T) (arg2@@16 T@T) ) (! (= (MapType3TypeInv0 (MapType3Type arg0@@97 arg1@@52 arg2@@16)) arg0@@97)
 :qid |typeInv:MapType3TypeInv0|
 :pattern ( (MapType3Type arg0@@97 arg1@@52 arg2@@16))
))) (forall ((arg0@@98 T@T) (arg1@@53 T@T) (arg2@@17 T@T) ) (! (= (MapType3TypeInv1 (MapType3Type arg0@@98 arg1@@53 arg2@@17)) arg1@@53)
 :qid |typeInv:MapType3TypeInv1|
 :pattern ( (MapType3Type arg0@@98 arg1@@53 arg2@@17))
))) (forall ((arg0@@99 T@T) (arg1@@54 T@T) (arg2@@18 T@T) ) (! (= (MapType3TypeInv2 (MapType3Type arg0@@99 arg1@@54 arg2@@18)) arg2@@18)
 :qid |typeInv:MapType3TypeInv2|
 :pattern ( (MapType3Type arg0@@99 arg1@@54 arg2@@18))
))) (forall ((arg0@@100 T@U) (arg1@@55 T@U) (arg2@@19 T@U) ) (! (let ((aVar2 (MapType3TypeInv2 (type arg0@@100))))
(= (type (MapType3Select arg0@@100 arg1@@55 arg2@@19)) aVar2))
 :qid |funType:MapType3Select|
 :pattern ( (MapType3Select arg0@@100 arg1@@55 arg2@@19))
))) (forall ((arg0@@101 T@U) (arg1@@56 T@U) (arg2@@20 T@U) (arg3@@5 T@U) ) (! (let ((aVar2@@0 (type arg3@@5)))
(let ((aVar1@@5 (type arg2@@20)))
(let ((aVar0@@2 (type arg1@@56)))
(= (type (MapType3Store arg0@@101 arg1@@56 arg2@@20 arg3@@5)) (MapType3Type aVar0@@2 aVar1@@5 aVar2@@0)))))
 :qid |funType:MapType3Store|
 :pattern ( (MapType3Store arg0@@101 arg1@@56 arg2@@20 arg3@@5))
))) (forall ((m@@14 T@U) (x0@@10 T@U) (x1@@7 T@U) (val@@10 T@U) ) (! (let ((aVar2@@1 (MapType3TypeInv2 (type m@@14))))
 (=> (= (type val@@10) aVar2@@1) (= (MapType3Select (MapType3Store m@@14 x0@@10 x1@@7 val@@10) x0@@10 x1@@7) val@@10)))
 :qid |mapAx0:MapType3Select|
 :weight 0
))) (and (and (forall ((val@@11 T@U) (m@@15 T@U) (x0@@11 T@U) (x1@@8 T@U) (y0@@7 T@U) (y1@@5 T@U) ) (!  (or (= x0@@11 y0@@7) (= (MapType3Select (MapType3Store m@@15 x0@@11 x1@@8 val@@11) y0@@7 y1@@5) (MapType3Select m@@15 y0@@7 y1@@5)))
 :qid |mapAx1:MapType3Select:0|
 :weight 0
)) (forall ((val@@12 T@U) (m@@16 T@U) (x0@@12 T@U) (x1@@9 T@U) (y0@@8 T@U) (y1@@6 T@U) ) (!  (or (= x1@@9 y1@@6) (= (MapType3Select (MapType3Store m@@16 x0@@12 x1@@9 val@@12) y0@@8 y1@@6) (MapType3Select m@@16 y0@@8 y1@@6)))
 :qid |mapAx1:MapType3Select:1|
 :weight 0
))) (forall ((val@@13 T@U) (m@@17 T@U) (x0@@13 T@U) (x1@@10 T@U) (y0@@9 T@U) (y1@@7 T@U) ) (!  (or true (= (MapType3Select (MapType3Store m@@17 x0@@13 x1@@10 val@@13) y0@@9 y1@@7) (MapType3Select m@@17 y0@@9 y1@@7)))
 :qid |mapAx2:MapType3Select|
 :weight 0
)))) (forall ((arg0@@102 T@U) (arg1@@57 T@U) (arg2@@21 T@U) (arg3@@6 T@U) (arg4@@0 T@U) ) (! (= (type (Apply1 arg0@@102 arg1@@57 arg2@@21 arg3@@6 arg4@@0)) BoxType)
 :qid |funType:Apply1|
 :pattern ( (Apply1 arg0@@102 arg1@@57 arg2@@21 arg3@@6 arg4@@0))
))) (forall ((arg0@@103 T@U) (arg1@@58 T@U) (arg2@@22 T@U) ) (! (= (type (Handle1 arg0@@103 arg1@@58 arg2@@22)) HandleTypeType)
 :qid |funType:Handle1|
 :pattern ( (Handle1 arg0@@103 arg1@@58 arg2@@22))
))))
(assert (forall ((t0@@12 T@U) (t1@@1 T@U) (heap@@2 T@U) (h@@6 T@U) (r@@2 T@U) (rd@@0 T@U) (bx0@@0 T@U) ) (!  (=> (and (and (and (and (and (and (= (type t0@@12) TyType) (= (type t1@@1) TyType)) (= (type heap@@2) (MapType1Type refType))) (= (type h@@6) (MapType3Type (MapType1Type refType) BoxType BoxType))) (= (type r@@2) (MapType3Type (MapType1Type refType) BoxType boolType))) (= (type rd@@0) (MapType3Type (MapType1Type refType) BoxType (MapType0Type BoxType boolType)))) (= (type bx0@@0) BoxType)) (= (Apply1 t0@@12 t1@@1 heap@@2 (Handle1 h@@6 r@@2 rd@@0) bx0@@0) (MapType3Select h@@6 heap@@2 bx0@@0)))
 :qid |seqgeneratedbpl.2108:15|
 :skolemid |380|
 :pattern ( (Apply1 t0@@12 t1@@1 heap@@2 (Handle1 h@@6 r@@2 rd@@0) bx0@@0))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> (and (= (type bx@@7) BoxType) ($IsBox bx@@7 Tclass._System.nat)) (and (= ($Box ($Unbox intType bx@@7)) bx@@7) ($Is ($Unbox intType bx@@7) Tclass._System.nat)))
 :qid |seqgeneratedbpl.1648:15|
 :skolemid |316|
 :pattern ( ($IsBox bx@@7 Tclass._System.nat))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> (and (= (type bx@@8) BoxType) ($IsBox bx@@8 Tclass._System.object?)) (and (= ($Box ($Unbox refType bx@@8)) bx@@8) ($Is ($Unbox refType bx@@8) Tclass._System.object?)))
 :qid |seqgeneratedbpl.1671:15|
 :skolemid |319|
 :pattern ( ($IsBox bx@@8 Tclass._System.object?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> (and (= (type bx@@9) BoxType) ($IsBox bx@@9 Tclass._System.object)) (and (= ($Box ($Unbox refType bx@@9)) bx@@9) ($Is ($Unbox refType bx@@9) Tclass._System.object)))
 :qid |seqgeneratedbpl.1697:15|
 :skolemid |322|
 :pattern ( ($IsBox bx@@9 Tclass._System.object))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> (and (= (type bx@@10) BoxType) ($IsBox bx@@10 Tclass._System.Tuple0)) (and (= ($Box ($Unbox DatatypeTypeType bx@@10)) bx@@10) ($Is ($Unbox DatatypeTypeType bx@@10) Tclass._System.Tuple0)))
 :qid |seqgeneratedbpl.2572:15|
 :skolemid |446|
 :pattern ( ($IsBox bx@@10 Tclass._System.Tuple0))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> (and (= (type bx@@11) BoxType) ($IsBox bx@@11 Tclass._module.__default)) (and (= ($Box ($Unbox refType bx@@11)) bx@@11) ($Is ($Unbox refType bx@@11) Tclass._module.__default)))
 :qid |seqgeneratedbpl.2626:15|
 :skolemid |452|
 :pattern ( ($IsBox bx@@11 Tclass._module.__default))
)))
(assert (forall ((|#$arg@@3| T@U) ($o@@9 T@U) ) (!  (=> (and (= (type |#$arg@@3|) TyType) (= (type $o@@9) refType)) (= ($Is $o@@9 (Tclass._System.array? |#$arg@@3|))  (or (= $o@@9 null) (= (dtype $o@@9) (Tclass._System.array? |#$arg@@3|)))))
 :qid |seqgeneratedbpl.1765:15|
 :skolemid |330|
 :pattern ( ($Is $o@@9 (Tclass._System.array? |#$arg@@3|)))
)))
(assert (forall ((a@@33 T@U) (x@@17 T@U) ) (! (let ((T@@57 (type x@@17)))
 (=> (= (type a@@33) (MapType0Type T@@57 intType)) (= (U_2_int (MapType0Select (|MultiSet#UnionOne| a@@33 x@@17) x@@17)) (+ (U_2_int (MapType0Select a@@33 x@@17)) 1))))
 :qid |seqgeneratedbpl.1000:18|
 :skolemid |186|
 :pattern ( (|MultiSet#UnionOne| a@@33 x@@17))
)))
(assert (forall ((|c#0@@2| T@U) ) (!  (=> (= (type |c#0@@2|) refType) (= ($Is |c#0@@2| Tclass._System.object)  (and ($Is |c#0@@2| Tclass._System.object?) (not (= |c#0@@2| null)))))
 :qid |seqgeneratedbpl.1703:15|
 :skolemid |323|
 :pattern ( ($Is |c#0@@2| Tclass._System.object))
)))
(assert (forall ((s@@17 T@U) (i@@7 Int) (v@@12 T@U) ) (! (let ((T@@58 (type v@@12)))
 (=> (= (type s@@17) (SeqType T@@58)) (and (=> (= i@@7 (|Seq#Length| s@@17)) (= (|Seq#Index| (|Seq#Build| s@@17 v@@12) i@@7) v@@12)) (=> (not (= i@@7 (|Seq#Length| s@@17))) (= (|Seq#Index| (|Seq#Build| s@@17 v@@12) i@@7) (|Seq#Index| s@@17 i@@7))))))
 :qid |seqgeneratedbpl.1168:18|
 :skolemid |222|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@17 v@@12) i@@7))
)))
(assert (forall ((arg0@@104 T@U) (arg1@@59 T@U) ) (! (= (type (|char#Minus| arg0@@104 arg1@@59)) charType)
 :qid |funType:char#Minus|
 :pattern ( (|char#Minus| arg0@@104 arg1@@59))
)))
(assert (forall ((a@@34 T@U) (b@@23 T@U) ) (!  (=> (and (= (type a@@34) charType) (= (type b@@23) charType)) (= (|char#Minus| a@@34 b@@23) (|char#FromInt| (- (|char#ToInt| a@@34) (|char#ToInt| b@@23)))))
 :qid |seqgeneratedbpl.164:15|
 :skolemid |24|
 :pattern ( (|char#Minus| a@@34 b@@23))
)))
(assert (forall ((arg0@@105 T@U) (arg1@@60 T@U) ) (! (= (type (|char#Plus| arg0@@105 arg1@@60)) charType)
 :qid |funType:char#Plus|
 :pattern ( (|char#Plus| arg0@@105 arg1@@60))
)))
(assert (forall ((a@@35 T@U) (b@@24 T@U) ) (!  (=> (and (= (type a@@35) charType) (= (type b@@24) charType)) (= (|char#Plus| a@@35 b@@24) (|char#FromInt| (+ (|char#ToInt| a@@35) (|char#ToInt| b@@24)))))
 :qid |seqgeneratedbpl.160:15|
 :skolemid |23|
 :pattern ( (|char#Plus| a@@35 b@@24))
)))
(assert (forall ((a@@36 T@U) (x@@18 T@U) (y@@2 T@U) ) (! (let ((T@@59 (type x@@18)))
 (=> (and (and (= (type a@@36) (MapType0Type T@@59 intType)) (= (type y@@2) T@@59)) (< 0 (U_2_int (MapType0Select a@@36 y@@2)))) (< 0 (U_2_int (MapType0Select (|MultiSet#UnionOne| a@@36 x@@18) y@@2)))))
 :qid |seqgeneratedbpl.1004:18|
 :skolemid |187|
 :pattern ( (|MultiSet#UnionOne| a@@36 x@@18) (MapType0Select a@@36 y@@2))
)))
(assert (forall ((a@@37 T@U) (x@@19 T@U) (o@@17 T@U) ) (! (let ((T@@60 (type x@@19)))
 (=> (and (= (type a@@37) (MapType0Type T@@60 intType)) (= (type o@@17) T@@60)) (= (< 0 (U_2_int (MapType0Select (|MultiSet#UnionOne| a@@37 x@@19) o@@17)))  (or (= o@@17 x@@19) (< 0 (U_2_int (MapType0Select a@@37 o@@17)))))))
 :qid |seqgeneratedbpl.996:18|
 :skolemid |185|
 :pattern ( (MapType0Select (|MultiSet#UnionOne| a@@37 x@@19) o@@17))
)))
(assert (forall ((h@@7 T@U) (a@@38 T@U) ) (!  (=> (and (= (type h@@7) (MapType1Type refType)) (= (type a@@38) refType)) (forall ((i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length| (|Seq#FromArray| h@@7 a@@38)))) (= (|Seq#Index| (|Seq#FromArray| h@@7 a@@38) i@@8) (MapType1Select h@@7 a@@38 (IndexField i@@8))))
 :qid |seqgeneratedbpl.1308:11|
 :skolemid |251|
 :pattern ( (MapType1Select h@@7 a@@38 (IndexField i@@8)))
 :pattern ( (|Seq#Index| (|Seq#FromArray| h@@7 a@@38) i@@8))
)))
 :qid |seqgeneratedbpl.1306:15|
 :skolemid |252|
 :pattern ( (|Seq#FromArray| h@@7 a@@38))
)))
(assert (forall ((v@@13 T@U) (t0@@13 T@U) ) (!  (=> (and (= (type v@@13) (MapType0Type BoxType intType)) (= (type t0@@13) TyType)) (= ($Is v@@13 (TMultiSet t0@@13)) (forall ((bx@@12 T@U) ) (!  (=> (and (= (type bx@@12) BoxType) (< 0 (U_2_int (MapType0Select v@@13 bx@@12)))) ($IsBox bx@@12 t0@@13))
 :qid |seqgeneratedbpl.286:19|
 :skolemid |52|
 :pattern ( (MapType0Select v@@13 bx@@12))
))))
 :qid |seqgeneratedbpl.283:15|
 :skolemid |53|
 :pattern ( ($Is v@@13 (TMultiSet t0@@13)))
)))
(assert (forall ((s0@@2 T@U) (s1@@2 T@U) (x@@20 T@U) ) (! (let ((T@@61 (type x@@20)))
 (=> (and (= (type s0@@2) (SeqType T@@61)) (= (type s1@@2) (SeqType T@@61))) (= (|Seq#Contains| (|Seq#Append| s0@@2 s1@@2) x@@20)  (or (|Seq#Contains| s0@@2 x@@20) (|Seq#Contains| s1@@2 x@@20)))))
 :qid |seqgeneratedbpl.1224:18|
 :skolemid |233|
 :pattern ( (|Seq#Contains| (|Seq#Append| s0@@2 s1@@2) x@@20))
)))
(assert (forall ((s@@18 T@U) (n@@11 Int) (x@@21 T@U) ) (! (let ((T@@62 (type x@@21)))
 (=> (= (type s@@18) (SeqType T@@62)) (= (|Seq#Contains| (|Seq#Take| s@@18 n@@11) x@@21) (exists ((i@@9 Int) ) (!  (and (and (and (<= 0 i@@9) (< i@@9 n@@11)) (< i@@9 (|Seq#Length| s@@18))) (= (|Seq#Index| s@@18 i@@9) x@@21))
 :qid |seqgeneratedbpl.1236:19|
 :skolemid |235|
 :pattern ( (|Seq#Index| s@@18 i@@9))
)))))
 :qid |seqgeneratedbpl.1233:18|
 :skolemid |236|
 :pattern ( (|Seq#Contains| (|Seq#Take| s@@18 n@@11) x@@21))
)))
(assert (forall ((arg0@@106 T@U) (arg1@@61 T@U) ) (! (let ((T@@63 (MapType0TypeInv0 (type arg0@@106))))
(= (type (|Set#Difference| arg0@@106 arg1@@61)) (MapType0Type T@@63 boolType)))
 :qid |funType:Set#Difference|
 :pattern ( (|Set#Difference| arg0@@106 arg1@@61))
)))
(assert (forall ((a@@39 T@U) (b@@25 T@U) ) (! (let ((T@@64 (MapType0TypeInv0 (type a@@39))))
 (=> (and (and (= (type a@@39) (MapType0Type T@@64 boolType)) (= (type b@@25) (MapType0Type T@@64 boolType))) (|Set#Disjoint| a@@39 b@@25)) (and (= (|Set#Difference| (|Set#Union| a@@39 b@@25) a@@39) b@@25) (= (|Set#Difference| (|Set#Union| a@@39 b@@25) b@@25) a@@39))))
 :qid |seqgeneratedbpl.778:18|
 :skolemid |132|
 :pattern ( (|Set#Union| a@@39 b@@25))
)))
(assert (forall ((arg0@@107 T@U) (arg1@@62 T@U) ) (! (let ((T@@65 (MapType0TypeInv0 (type arg0@@107))))
(= (type (|ISet#Difference| arg0@@107 arg1@@62)) (MapType0Type T@@65 boolType)))
 :qid |funType:ISet#Difference|
 :pattern ( (|ISet#Difference| arg0@@107 arg1@@62))
)))
(assert (forall ((a@@40 T@U) (b@@26 T@U) ) (! (let ((T@@66 (MapType0TypeInv0 (type a@@40))))
 (=> (and (and (= (type a@@40) (MapType0Type T@@66 boolType)) (= (type b@@26) (MapType0Type T@@66 boolType))) (|ISet#Disjoint| a@@40 b@@26)) (and (= (|ISet#Difference| (|ISet#Union| a@@40 b@@26) a@@40) b@@26) (= (|ISet#Difference| (|ISet#Union| a@@40 b@@26) b@@26) a@@40))))
 :qid |seqgeneratedbpl.881:18|
 :skolemid |156|
 :pattern ( (|ISet#Union| a@@40 b@@26))
)))
(assert (forall ((f@@11 T@U) (t0@@14 T@U) (t1@@2 T@U) (h@@8 T@U) ) (!  (=> (and (and (and (and (= (type f@@11) HandleTypeType) (= (type t0@@14) TyType)) (= (type t1@@2) TyType)) (= (type h@@8) (MapType1Type refType))) (and ($IsGoodHeap h@@8) ($IsAlloc f@@11 (Tclass._System.___hFunc1 t0@@14 t1@@2) h@@8))) (forall ((bx0@@1 T@U) ) (!  (=> (= (type bx0@@1) BoxType) (=> (and ($IsAllocBox bx0@@1 t0@@14 h@@8) (Requires1 t0@@14 t1@@2 h@@8 f@@11 bx0@@1)) ($IsAllocBox (Apply1 t0@@14 t1@@2 h@@8 f@@11 bx0@@1) t1@@2 h@@8)))
 :qid |seqgeneratedbpl.2291:18|
 :skolemid |405|
 :pattern ( (Apply1 t0@@14 t1@@2 h@@8 f@@11 bx0@@1))
)))
 :qid |seqgeneratedbpl.2288:15|
 :skolemid |406|
 :pattern ( ($IsAlloc f@@11 (Tclass._System.___hFunc1 t0@@14 t1@@2) h@@8))
)))
(assert (forall ((a@@41 T@U) (b@@27 T@U) ) (! (let ((T@@67 (MapType0TypeInv0 (type a@@41))))
 (=> (and (= (type a@@41) (MapType0Type T@@67 intType)) (= (type b@@27) (MapType0Type T@@67 intType))) (= (|MultiSet#Equal| a@@41 b@@27) (forall ((o@@18 T@U) ) (!  (=> (= (type o@@18) T@@67) (= (U_2_int (MapType0Select a@@41 o@@18)) (U_2_int (MapType0Select b@@27 o@@18))))
 :qid |seqgeneratedbpl.1071:37|
 :skolemid |200|
 :pattern ( (MapType0Select a@@41 o@@18))
 :pattern ( (MapType0Select b@@27 o@@18))
)))))
 :qid |seqgeneratedbpl.1069:18|
 :skolemid |201|
 :pattern ( (|MultiSet#Equal| a@@41 b@@27))
)))
(assert (forall ((a@@42 T@U) (b@@28 T@U) ) (! (let ((T@@68 (MapType0TypeInv0 (type a@@42))))
 (=> (and (= (type a@@42) (MapType0Type T@@68 intType)) (= (type b@@28) (MapType0Type T@@68 intType))) (= (|MultiSet#Subset| a@@42 b@@28) (forall ((o@@19 T@U) ) (!  (=> (= (type o@@19) T@@68) (<= (U_2_int (MapType0Select a@@42 o@@19)) (U_2_int (MapType0Select b@@28 o@@19))))
 :qid |seqgeneratedbpl.1065:38|
 :skolemid |198|
 :pattern ( (MapType0Select a@@42 o@@19))
 :pattern ( (MapType0Select b@@28 o@@19))
)))))
 :qid |seqgeneratedbpl.1063:18|
 :skolemid |199|
 :pattern ( (|MultiSet#Subset| a@@42 b@@28))
)))
(assert (forall ((a@@43 T@U) (b@@29 T@U) ) (!  (=> (and (and (= (type a@@43) DatatypeTypeType) (= (type b@@29) DatatypeTypeType)) true) (= (|_System.Tuple0#Equal| a@@43 b@@29) true))
 :qid |seqgeneratedbpl.2607:15|
 :skolemid |450|
 :pattern ( (|_System.Tuple0#Equal| a@@43 b@@29))
)))
(assert (forall ((s@@19 T@U) (x@@22 T@U) ) (! (let ((T@@69 (type x@@22)))
 (=> (= (type s@@19) (SeqType T@@69)) (= (|Seq#Contains| s@@19 x@@22) (exists ((i@@10 Int) ) (!  (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length| s@@19))) (= (|Seq#Index| s@@19 i@@10) x@@22))
 :qid |seqgeneratedbpl.1216:19|
 :skolemid |230|
 :pattern ( (|Seq#Index| s@@19 i@@10))
)))))
 :qid |seqgeneratedbpl.1213:18|
 :skolemid |231|
 :pattern ( (|Seq#Contains| s@@19 x@@22))
)))
(assert (forall ((f@@12 T@U) (t0@@15 T@U) (t1@@3 T@U) (h@@9 T@U) ) (!  (=> (and (and (and (and (= (type f@@12) HandleTypeType) (= (type t0@@15) TyType)) (= (type t1@@3) TyType)) (= (type h@@9) (MapType1Type refType))) ($IsGoodHeap h@@9)) (= ($IsAlloc f@@12 (Tclass._System.___hFunc1 t0@@15 t1@@3) h@@9) (forall ((bx0@@2 T@U) ) (!  (=> (= (type bx0@@2) BoxType) (=> (and (and ($IsBox bx0@@2 t0@@15) ($IsAllocBox bx0@@2 t0@@15 h@@9)) (Requires1 t0@@15 t1@@3 h@@9 f@@12 bx0@@2)) (forall ((r@@3 T@U) ) (!  (=> (= (type r@@3) refType) (=> (and (not (= r@@3 null)) (U_2_bool (MapType0Select (Reads1 t0@@15 t1@@3 h@@9 f@@12 bx0@@2) ($Box r@@3)))) (U_2_bool (MapType1Select h@@9 r@@3 alloc))))
 :qid |seqgeneratedbpl.2284:24|
 :skolemid |402|
 :pattern ( (MapType0Select (Reads1 t0@@15 t1@@3 h@@9 f@@12 bx0@@2) ($Box r@@3)))
))))
 :qid |seqgeneratedbpl.2281:21|
 :skolemid |403|
 :pattern ( (Apply1 t0@@15 t1@@3 h@@9 f@@12 bx0@@2))
 :pattern ( (Reads1 t0@@15 t1@@3 h@@9 f@@12 bx0@@2))
))))
 :qid |seqgeneratedbpl.2277:15|
 :skolemid |404|
 :pattern ( ($IsAlloc f@@12 (Tclass._System.___hFunc1 t0@@15 t1@@3) h@@9))
)))
(assert (forall ((a@@44 T@U) (b@@30 T@U) (o@@20 T@U) ) (! (let ((T@@70 (type o@@20)))
 (=> (and (= (type a@@44) (MapType0Type T@@70 boolType)) (= (type b@@30) (MapType0Type T@@70 boolType))) (= (U_2_bool (MapType0Select (|Set#Intersection| a@@44 b@@30) o@@20))  (and (U_2_bool (MapType0Select a@@44 o@@20)) (U_2_bool (MapType0Select b@@30 o@@20))))))
 :qid |seqgeneratedbpl.786:18|
 :skolemid |133|
 :pattern ( (MapType0Select (|Set#Intersection| a@@44 b@@30) o@@20))
)))
(assert (forall ((a@@45 T@U) (b@@31 T@U) (o@@21 T@U) ) (! (let ((T@@71 (type o@@21)))
 (=> (and (= (type a@@45) (MapType0Type T@@71 boolType)) (= (type b@@31) (MapType0Type T@@71 boolType))) (= (U_2_bool (MapType0Select (|ISet#Intersection| a@@45 b@@31) o@@21))  (and (U_2_bool (MapType0Select a@@45 o@@21)) (U_2_bool (MapType0Select b@@31 o@@21))))))
 :qid |seqgeneratedbpl.889:18|
 :skolemid |157|
 :pattern ( (MapType0Select (|ISet#Intersection| a@@45 b@@31) o@@21))
)))
(assert (forall ((o@@22 T@U) (p@@2 T@U) ) (!  (=> (and (= (type o@@22) BoxType) (= (type p@@2) BoxType)) (or (or (|ORD#Less| o@@22 p@@2) (= o@@22 p@@2)) (|ORD#Less| p@@2 o@@22)))
 :qid |seqgeneratedbpl.440:15|
 :skolemid |82|
 :pattern ( (|ORD#Less| o@@22 p@@2) (|ORD#Less| p@@2 o@@22))
)))
(assert (forall ((a@@46 T@U) (b@@32 T@U) (o@@23 T@U) ) (! (let ((T@@72 (type o@@23)))
 (=> (and (= (type a@@46) (MapType0Type T@@72 boolType)) (= (type b@@32) (MapType0Type T@@72 boolType))) (= (U_2_bool (MapType0Select (|Set#Difference| a@@46 b@@32) o@@23))  (and (U_2_bool (MapType0Select a@@46 o@@23)) (not (U_2_bool (MapType0Select b@@32 o@@23)))))))
 :qid |seqgeneratedbpl.813:18|
 :skolemid |139|
 :pattern ( (MapType0Select (|Set#Difference| a@@46 b@@32) o@@23))
)))
(assert (forall ((a@@47 T@U) (b@@33 T@U) (o@@24 T@U) ) (! (let ((T@@73 (type o@@24)))
 (=> (and (= (type a@@47) (MapType0Type T@@73 boolType)) (= (type b@@33) (MapType0Type T@@73 boolType))) (= (U_2_bool (MapType0Select (|ISet#Difference| a@@47 b@@33) o@@24))  (and (U_2_bool (MapType0Select a@@47 o@@24)) (not (U_2_bool (MapType0Select b@@33 o@@24)))))))
 :qid |seqgeneratedbpl.911:18|
 :skolemid |162|
 :pattern ( (MapType0Select (|ISet#Difference| a@@47 b@@33) o@@24))
)))
(assert (forall ((v@@14 T@U) (t0@@16 T@U) (h@@10 T@U) ) (!  (=> (and (and (= (type v@@14) (MapType0Type BoxType boolType)) (= (type t0@@16) TyType)) (= (type h@@10) (MapType1Type refType))) (= ($IsAlloc v@@14 (TSet t0@@16) h@@10) (forall ((bx@@13 T@U) ) (!  (=> (and (= (type bx@@13) BoxType) (U_2_bool (MapType0Select v@@14 bx@@13))) ($IsAllocBox bx@@13 t0@@16 h@@10))
 :qid |seqgeneratedbpl.302:19|
 :skolemid |57|
 :pattern ( (MapType0Select v@@14 bx@@13))
))))
 :qid |seqgeneratedbpl.299:15|
 :skolemid |58|
 :pattern ( ($IsAlloc v@@14 (TSet t0@@16) h@@10))
)))
(assert (forall ((v@@15 T@U) (t0@@17 T@U) (h@@11 T@U) ) (!  (=> (and (and (= (type v@@15) (MapType0Type BoxType boolType)) (= (type t0@@17) TyType)) (= (type h@@11) (MapType1Type refType))) (= ($IsAlloc v@@15 (TISet t0@@17) h@@11) (forall ((bx@@14 T@U) ) (!  (=> (and (= (type bx@@14) BoxType) (U_2_bool (MapType0Select v@@15 bx@@14))) ($IsAllocBox bx@@14 t0@@17 h@@11))
 :qid |seqgeneratedbpl.307:19|
 :skolemid |59|
 :pattern ( (MapType0Select v@@15 bx@@14))
))))
 :qid |seqgeneratedbpl.304:15|
 :skolemid |60|
 :pattern ( ($IsAlloc v@@15 (TISet t0@@17) h@@11))
)))
(assert (forall ((t0@@18 T@U) (t1@@4 T@U) (h0@@6 T@U) (h1@@6 T@U) (f@@13 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and (and (and (and (= (type t0@@18) TyType) (= (type t1@@4) TyType)) (= (type h0@@6) (MapType1Type refType))) (= (type h1@@6) (MapType1Type refType))) (= (type f@@13) HandleTypeType)) (= (type bx0@@3) BoxType)) (and (and (and (and (and ($HeapSucc h0@@6 h1@@6) ($IsGoodHeap h0@@6)) ($IsGoodHeap h1@@6)) ($IsBox bx0@@3 t0@@18)) ($Is f@@13 (Tclass._System.___hFunc1 t0@@18 t1@@4))) (forall ((o@@25 T@U) (fld@@5 T@U) ) (! (let ((a@@48 (FieldTypeInv0 (type fld@@5))))
 (=> (and (and (= (type o@@25) refType) (= (type fld@@5) (FieldType a@@48))) (and (not (= o@@25 null)) (U_2_bool (MapType0Select (Reads1 t0@@18 t1@@4 h0@@6 f@@13 bx0@@3) ($Box o@@25))))) (= (MapType1Select h0@@6 o@@25 fld@@5) (MapType1Select h1@@6 o@@25 fld@@5))))
 :qid |seqgeneratedbpl.2189:22|
 :skolemid |387|
 :no-pattern (type o@@25)
 :no-pattern (type fld@@5)
 :no-pattern (U_2_int o@@25)
 :no-pattern (U_2_bool o@@25)
 :no-pattern (U_2_int fld@@5)
 :no-pattern (U_2_bool fld@@5)
)))) (= (Requires1 t0@@18 t1@@4 h0@@6 f@@13 bx0@@3) (Requires1 t0@@18 t1@@4 h1@@6 f@@13 bx0@@3)))
 :qid |seqgeneratedbpl.2180:15|
 :skolemid |388|
 :pattern ( ($HeapSucc h0@@6 h1@@6) (Requires1 t0@@18 t1@@4 h1@@6 f@@13 bx0@@3))
)))
(assert (forall ((t0@@19 T@U) (t1@@5 T@U) (h0@@7 T@U) (h1@@7 T@U) (f@@14 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and (and (and (and (= (type t0@@19) TyType) (= (type t1@@5) TyType)) (= (type h0@@7) (MapType1Type refType))) (= (type h1@@7) (MapType1Type refType))) (= (type f@@14) HandleTypeType)) (= (type bx0@@4) BoxType)) (and (and (and (and (and ($HeapSucc h0@@7 h1@@7) ($IsGoodHeap h0@@7)) ($IsGoodHeap h1@@7)) ($IsBox bx0@@4 t0@@19)) ($Is f@@14 (Tclass._System.___hFunc1 t0@@19 t1@@5))) (forall ((o@@26 T@U) (fld@@6 T@U) ) (! (let ((a@@49 (FieldTypeInv0 (type fld@@6))))
 (=> (and (and (= (type o@@26) refType) (= (type fld@@6) (FieldType a@@49))) (and (not (= o@@26 null)) (U_2_bool (MapType0Select (Reads1 t0@@19 t1@@5 h1@@7 f@@14 bx0@@4) ($Box o@@26))))) (= (MapType1Select h0@@7 o@@26 fld@@6) (MapType1Select h1@@7 o@@26 fld@@6))))
 :qid |seqgeneratedbpl.2204:22|
 :skolemid |389|
 :no-pattern (type o@@26)
 :no-pattern (type fld@@6)
 :no-pattern (U_2_int o@@26)
 :no-pattern (U_2_bool o@@26)
 :no-pattern (U_2_int fld@@6)
 :no-pattern (U_2_bool fld@@6)
)))) (= (Requires1 t0@@19 t1@@5 h0@@7 f@@14 bx0@@4) (Requires1 t0@@19 t1@@5 h1@@7 f@@14 bx0@@4)))
 :qid |seqgeneratedbpl.2195:15|
 :skolemid |390|
 :pattern ( ($HeapSucc h0@@7 h1@@7) (Requires1 t0@@19 t1@@5 h1@@7 f@@14 bx0@@4))
)))
(assert (forall ((o@@27 T@U) (p@@3 T@U) ) (!  (=> (and (= (type o@@27) BoxType) (= (type p@@3) BoxType)) (and (and (=> (|ORD#Less| o@@27 p@@3) (not (= o@@27 p@@3))) (=> (and (|ORD#IsNat| o@@27) (not (|ORD#IsNat| p@@3))) (|ORD#Less| o@@27 p@@3))) (=> (and (|ORD#IsNat| o@@27) (|ORD#IsNat| p@@3)) (= (|ORD#Less| o@@27 p@@3) (< (|ORD#Offset| o@@27) (|ORD#Offset| p@@3))))))
 :qid |seqgeneratedbpl.431:15|
 :skolemid |80|
 :pattern ( (|ORD#Less| o@@27 p@@3))
)))
(assert (forall ((o@@28 T@U) ) (! (let ((T@@74 (type o@@28)))
(= (U_2_int (MapType0Select (|MultiSet#Empty| T@@74) o@@28)) 0))
 :qid |seqgeneratedbpl.976:18|
 :skolemid |180|
 :pattern ( (let ((T@@74 (type o@@28)))
(MapType0Select (|MultiSet#Empty| T@@74) o@@28)))
)))
(assert (forall ((t0@@20 T@U) (heap@@3 T@U) (f@@15 T@U) ) (!  (=> (and (and (and (= (type t0@@20) TyType) (= (type heap@@3) (MapType1Type refType))) (= (type f@@15) HandleTypeType)) (and ($IsGoodHeap heap@@3) ($Is f@@15 (Tclass._System.___hFunc0 t0@@20)))) (= (|Set#Equal| (Reads0 t0@@20 $OneHeap f@@15) (|Set#Empty| BoxType)) (|Set#Equal| (Reads0 t0@@20 heap@@3 f@@15) (|Set#Empty| BoxType))))
 :qid |seqgeneratedbpl.1954:15|
 :skolemid |357|
 :pattern ( (Reads0 t0@@20 $OneHeap f@@15) ($IsGoodHeap heap@@3))
 :pattern ( (Reads0 t0@@20 heap@@3 f@@15))
)))
(assert (forall ((arg0@@108 T@U) ) (! (= (type (|Map#Items| arg0@@108)) (MapType0Type BoxType boolType))
 :qid |funType:Map#Items|
 :pattern ( (|Map#Items| arg0@@108))
)))
(assert (forall ((m@@18 T@U) (item T@U) ) (!  (=> (and (= (type m@@18) (MapType BoxType BoxType)) (= (type item) BoxType)) (= (U_2_bool (MapType0Select (|Map#Items| m@@18) item))  (and (U_2_bool (MapType0Select (|Map#Domain| m@@18) (_System.Tuple2._0 ($Unbox DatatypeTypeType item)))) (= (MapType0Select (|Map#Elements| m@@18) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item))))))
 :qid |seqgeneratedbpl.1426:15|
 :skolemid |274|
 :pattern ( (MapType0Select (|Map#Items| m@@18) item))
)))
(assert (forall ((arg0@@109 T@U) ) (! (= (type (|IMap#Items| arg0@@109)) (MapType0Type BoxType boolType))
 :qid |funType:IMap#Items|
 :pattern ( (|IMap#Items| arg0@@109))
)))
(assert (forall ((m@@19 T@U) (item@@0 T@U) ) (!  (=> (and (= (type m@@19) (IMapType BoxType BoxType)) (= (type item@@0) BoxType)) (= (U_2_bool (MapType0Select (|IMap#Items| m@@19) item@@0))  (and (U_2_bool (MapType0Select (|IMap#Domain| m@@19) (_System.Tuple2._0 ($Unbox DatatypeTypeType item@@0)))) (= (MapType0Select (|IMap#Elements| m@@19) (_System.Tuple2._0 ($Unbox DatatypeTypeType item@@0))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item@@0))))))
 :qid |seqgeneratedbpl.1514:15|
 :skolemid |292|
 :pattern ( (MapType0Select (|IMap#Items| m@@19) item@@0))
)))
(assert (forall ((arg0@@110 T@U) ) (! (let ((V@@17 (MapTypeInv1 (type arg0@@110))))
(= (type (|Map#Values| arg0@@110)) (MapType0Type V@@17 boolType)))
 :qid |funType:Map#Values|
 :pattern ( (|Map#Values| arg0@@110))
)))
(assert (forall ((m@@20 T@U) (v@@16 T@U) ) (! (let ((V@@18 (type v@@16)))
(let ((U@@19 (MapTypeInv0 (type m@@20))))
 (=> (= (type m@@20) (MapType U@@19 V@@18)) (= (U_2_bool (MapType0Select (|Map#Values| m@@20) v@@16)) (exists ((u@@3 T@U) ) (!  (and (= (type u@@3) U@@19) (and (U_2_bool (MapType0Select (|Map#Domain| m@@20) u@@3)) (= v@@16 (MapType0Select (|Map#Elements| m@@20) u@@3))))
 :qid |seqgeneratedbpl.1412:17|
 :skolemid |271|
 :pattern ( (MapType0Select (|Map#Domain| m@@20) u@@3))
 :pattern ( (MapType0Select (|Map#Elements| m@@20) u@@3))
))))))
 :qid |seqgeneratedbpl.1409:20|
 :skolemid |272|
 :pattern ( (MapType0Select (|Map#Values| m@@20) v@@16))
)))
(assert (forall ((arg0@@111 T@U) ) (! (let ((V@@19 (IMapTypeInv1 (type arg0@@111))))
(= (type (|IMap#Values| arg0@@111)) (MapType0Type V@@19 boolType)))
 :qid |funType:IMap#Values|
 :pattern ( (|IMap#Values| arg0@@111))
)))
(assert (forall ((m@@21 T@U) (v@@17 T@U) ) (! (let ((V@@20 (type v@@17)))
(let ((U@@20 (IMapTypeInv0 (type m@@21))))
 (=> (= (type m@@21) (IMapType U@@20 V@@20)) (= (U_2_bool (MapType0Select (|IMap#Values| m@@21) v@@17)) (exists ((u@@4 T@U) ) (!  (and (= (type u@@4) U@@20) (and (U_2_bool (MapType0Select (|IMap#Domain| m@@21) u@@4)) (= v@@17 (MapType0Select (|IMap#Elements| m@@21) u@@4))))
 :qid |seqgeneratedbpl.1508:17|
 :skolemid |290|
 :pattern ( (MapType0Select (|IMap#Domain| m@@21) u@@4))
 :pattern ( (MapType0Select (|IMap#Elements| m@@21) u@@4))
))))))
 :qid |seqgeneratedbpl.1505:20|
 :skolemid |291|
 :pattern ( (MapType0Select (|IMap#Values| m@@21) v@@17))
)))
(assert (forall ((t0@@21 T@U) (t1@@6 T@U) (heap@@4 T@U) (h@@12 T@U) (r@@4 T@U) (rd@@1 T@U) (bx0@@5 T@U) (bx@@15 T@U) ) (!  (=> (and (and (and (and (and (and (and (= (type t0@@21) TyType) (= (type t1@@6) TyType)) (= (type heap@@4) (MapType1Type refType))) (= (type h@@12) (MapType3Type (MapType1Type refType) BoxType BoxType))) (= (type r@@4) (MapType3Type (MapType1Type refType) BoxType boolType))) (= (type rd@@1) (MapType3Type (MapType1Type refType) BoxType (MapType0Type BoxType boolType)))) (= (type bx0@@5) BoxType)) (= (type bx@@15) BoxType)) (= (U_2_bool (MapType0Select (Reads1 t0@@21 t1@@6 heap@@4 (Handle1 h@@12 r@@4 rd@@1) bx0@@5) bx@@15)) (U_2_bool (MapType0Select (MapType3Select rd@@1 heap@@4 bx0@@5) bx@@15))))
 :qid |seqgeneratedbpl.2128:15|
 :skolemid |382|
 :pattern ( (MapType0Select (Reads1 t0@@21 t1@@6 heap@@4 (Handle1 h@@12 r@@4 rd@@1) bx0@@5) bx@@15))
)))
(assert (forall ((arg0@@112 T@U) (arg1@@63 T@U) ) (! (= (type (TMap arg0@@112 arg1@@63)) TyType)
 :qid |funType:TMap|
 :pattern ( (TMap arg0@@112 arg1@@63))
)))
(assert (forall ((v@@18 T@U) (t0@@22 T@U) (t1@@7 T@U) (h@@13 T@U) ) (!  (=> (and (and (and (= (type v@@18) (MapType BoxType BoxType)) (= (type t0@@22) TyType)) (= (type t1@@7) TyType)) (= (type h@@13) (MapType1Type refType))) (= ($IsAlloc v@@18 (TMap t0@@22 t1@@7) h@@13) (forall ((bx@@16 T@U) ) (!  (=> (and (= (type bx@@16) BoxType) (U_2_bool (MapType0Select (|Map#Domain| v@@18) bx@@16))) (and ($IsAllocBox (MapType0Select (|Map#Elements| v@@18) bx@@16) t1@@7 h@@13) ($IsAllocBox bx@@16 t0@@22 h@@13)))
 :qid |seqgeneratedbpl.331:19|
 :skolemid |67|
 :pattern ( (MapType0Select (|Map#Elements| v@@18) bx@@16))
 :pattern ( (MapType0Select (|Map#Domain| v@@18) bx@@16))
))))
 :qid |seqgeneratedbpl.328:15|
 :skolemid |68|
 :pattern ( ($IsAlloc v@@18 (TMap t0@@22 t1@@7) h@@13))
)))
(assert (forall ((arg0@@113 T@U) (arg1@@64 T@U) ) (! (= (type (TIMap arg0@@113 arg1@@64)) TyType)
 :qid |funType:TIMap|
 :pattern ( (TIMap arg0@@113 arg1@@64))
)))
(assert (forall ((v@@19 T@U) (t0@@23 T@U) (t1@@8 T@U) (h@@14 T@U) ) (!  (=> (and (and (and (= (type v@@19) (IMapType BoxType BoxType)) (= (type t0@@23) TyType)) (= (type t1@@8) TyType)) (= (type h@@14) (MapType1Type refType))) (= ($IsAlloc v@@19 (TIMap t0@@23 t1@@8) h@@14) (forall ((bx@@17 T@U) ) (!  (=> (and (= (type bx@@17) BoxType) (U_2_bool (MapType0Select (|IMap#Domain| v@@19) bx@@17))) (and ($IsAllocBox (MapType0Select (|IMap#Elements| v@@19) bx@@17) t1@@8 h@@14) ($IsAllocBox bx@@17 t0@@23 h@@14)))
 :qid |seqgeneratedbpl.346:19|
 :skolemid |71|
 :pattern ( (MapType0Select (|IMap#Elements| v@@19) bx@@17))
 :pattern ( (MapType0Select (|IMap#Domain| v@@19) bx@@17))
))))
 :qid |seqgeneratedbpl.343:15|
 :skolemid |72|
 :pattern ( ($IsAlloc v@@19 (TIMap t0@@23 t1@@8) h@@14))
)))
(assert (forall ((o@@29 T@U) (p@@4 T@U) ) (!  (=> (and (= (type o@@29) BoxType) (= (type p@@4) BoxType)) (and (=> (= o@@29 (|ORD#FromNat| 0)) (= (|ORD#Plus| o@@29 p@@4) p@@4)) (=> (= p@@4 (|ORD#FromNat| 0)) (= (|ORD#Plus| o@@29 p@@4) o@@29))))
 :qid |seqgeneratedbpl.468:15|
 :skolemid |87|
 :pattern ( (|ORD#Plus| o@@29 p@@4))
)))
(assert (forall ((x@@23 Int) (y@@3 Int) ) (! (= (INTERNAL_div_boogie x@@23 y@@3) (div x@@23 y@@3))
 :qid |seqgeneratedbpl.1586:15|
 :skolemid |305|
 :pattern ( (INTERNAL_div_boogie x@@23 y@@3))
)))
(assert (forall ((x@@24 Int) (y@@4 Int) ) (! (= (Div x@@24 y@@4) (div x@@24 y@@4))
 :qid |seqgeneratedbpl.1626:15|
 :skolemid |312|
 :pattern ( (Div x@@24 y@@4))
)))
(assert (forall ((o@@30 T@U) (p@@5 T@U) ) (!  (=> (and (= (type o@@30) BoxType) (= (type p@@5) BoxType)) (= (|ORD#LessThanLimit| o@@30 p@@5) (|ORD#Less| o@@30 p@@5)))
 :qid |seqgeneratedbpl.450:15|
 :skolemid |84|
 :pattern ( (|ORD#LessThanLimit| o@@30 p@@5))
)))
(assert (forall ((o@@31 T@U) (p@@6 T@U) ) (!  (=> (and (and (= (type o@@31) BoxType) (= (type p@@6) BoxType)) (|ORD#Less| o@@31 p@@6)) (not (= o@@31 p@@6)))
 :qid |seqgeneratedbpl.438:15|
 :skolemid |81|
 :pattern ( (|ORD#Less| o@@31 p@@6))
)))
(assert (forall ((a@@50 T@U) (b@@34 T@U) ) (! (let ((T@@75 (MapType0TypeInv0 (type a@@50))))
 (=> (and (and (= (type a@@50) (MapType0Type T@@75 boolType)) (= (type b@@34) (MapType0Type T@@75 boolType))) (|Set#Equal| a@@50 b@@34)) (= a@@50 b@@34)))
 :qid |seqgeneratedbpl.841:18|
 :skolemid |146|
 :pattern ( (|Set#Equal| a@@50 b@@34))
)))
(assert (forall ((a@@51 T@U) (b@@35 T@U) ) (! (let ((T@@76 (MapType0TypeInv0 (type a@@51))))
 (=> (and (and (= (type a@@51) (MapType0Type T@@76 boolType)) (= (type b@@35) (MapType0Type T@@76 boolType))) (|ISet#Equal| a@@51 b@@35)) (= a@@51 b@@35)))
 :qid |seqgeneratedbpl.931:18|
 :skolemid |168|
 :pattern ( (|ISet#Equal| a@@51 b@@35))
)))
(assert (forall ((a@@52 T@U) (b@@36 T@U) ) (! (let ((T@@77 (MapType0TypeInv0 (type a@@52))))
 (=> (and (and (= (type a@@52) (MapType0Type T@@77 intType)) (= (type b@@36) (MapType0Type T@@77 intType))) (|MultiSet#Equal| a@@52 b@@36)) (= a@@52 b@@36)))
 :qid |seqgeneratedbpl.1073:18|
 :skolemid |202|
 :pattern ( (|MultiSet#Equal| a@@52 b@@36))
)))
(assert (forall ((a@@53 T@U) (b@@37 T@U) ) (! (let ((T@@78 (SeqTypeInv0 (type a@@53))))
 (=> (and (and (= (type a@@53) (SeqType T@@78)) (= (type b@@37) (SeqType T@@78))) (|Seq#Equal| a@@53 b@@37)) (= a@@53 b@@37)))
 :qid |seqgeneratedbpl.1257:18|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@53 b@@37))
)))
(assert (forall ((m@@22 T@U) (|m'@@0| T@U) ) (! (let ((V@@21 (MapTypeInv1 (type m@@22))))
(let ((U@@21 (MapTypeInv0 (type m@@22))))
 (=> (and (and (= (type m@@22) (MapType U@@21 V@@21)) (= (type |m'@@0|) (MapType U@@21 V@@21))) (|Map#Equal| m@@22 |m'@@0|)) (= m@@22 |m'@@0|))))
 :qid |seqgeneratedbpl.1484:20|
 :skolemid |287|
 :pattern ( (|Map#Equal| m@@22 |m'@@0|))
)))
(assert (forall ((m@@23 T@U) (|m'@@1| T@U) ) (! (let ((V@@22 (IMapTypeInv1 (type m@@23))))
(let ((U@@22 (IMapTypeInv0 (type m@@23))))
 (=> (and (and (= (type m@@23) (IMapType U@@22 V@@22)) (= (type |m'@@1|) (IMapType U@@22 V@@22))) (|IMap#Equal| m@@23 |m'@@1|)) (= m@@23 |m'@@1|))))
 :qid |seqgeneratedbpl.1562:20|
 :skolemid |301|
 :pattern ( (|IMap#Equal| m@@23 |m'@@1|))
)))
(assert (forall ((arg0@@114 T@U) (arg1@@65 T@U) ) (! (let ((T@@79 (type arg1@@65)))
(= (type (|Set#UnionOne| arg0@@114 arg1@@65)) (MapType0Type T@@79 boolType)))
 :qid |funType:Set#UnionOne|
 :pattern ( (|Set#UnionOne| arg0@@114 arg1@@65))
)))
(assert (forall ((a@@54 T@U) (x@@25 T@U) (y@@5 T@U) ) (! (let ((T@@80 (type x@@25)))
 (=> (and (and (= (type a@@54) (MapType0Type T@@80 boolType)) (= (type y@@5) T@@80)) (U_2_bool (MapType0Select a@@54 y@@5))) (U_2_bool (MapType0Select (|Set#UnionOne| a@@54 x@@25) y@@5))))
 :qid |seqgeneratedbpl.752:18|
 :skolemid |126|
 :pattern ( (|Set#UnionOne| a@@54 x@@25) (MapType0Select a@@54 y@@5))
)))
(assert (forall ((a@@55 T@U) (b@@38 T@U) (y@@6 T@U) ) (! (let ((T@@81 (type y@@6)))
 (=> (and (and (= (type a@@55) (MapType0Type T@@81 boolType)) (= (type b@@38) (MapType0Type T@@81 boolType))) (U_2_bool (MapType0Select a@@55 y@@6))) (U_2_bool (MapType0Select (|Set#Union| a@@55 b@@38) y@@6))))
 :qid |seqgeneratedbpl.770:18|
 :skolemid |130|
 :pattern ( (|Set#Union| a@@55 b@@38) (MapType0Select a@@55 y@@6))
)))
(assert (forall ((a@@56 T@U) (b@@39 T@U) (y@@7 T@U) ) (! (let ((T@@82 (type y@@7)))
 (=> (and (and (= (type a@@56) (MapType0Type T@@82 boolType)) (= (type b@@39) (MapType0Type T@@82 boolType))) (U_2_bool (MapType0Select b@@39 y@@7))) (U_2_bool (MapType0Select (|Set#Union| a@@56 b@@39) y@@7))))
 :qid |seqgeneratedbpl.774:18|
 :skolemid |131|
 :pattern ( (|Set#Union| a@@56 b@@39) (MapType0Select b@@39 y@@7))
)))
(assert (forall ((arg0@@115 T@U) (arg1@@66 T@U) ) (! (let ((T@@83 (type arg1@@66)))
(= (type (|ISet#UnionOne| arg0@@115 arg1@@66)) (MapType0Type T@@83 boolType)))
 :qid |funType:ISet#UnionOne|
 :pattern ( (|ISet#UnionOne| arg0@@115 arg1@@66))
)))
(assert (forall ((a@@57 T@U) (x@@26 T@U) (y@@8 T@U) ) (! (let ((T@@84 (type x@@26)))
 (=> (and (and (= (type a@@57) (MapType0Type T@@84 boolType)) (= (type y@@8) T@@84)) (U_2_bool (MapType0Select a@@57 y@@8))) (U_2_bool (MapType0Select (|ISet#UnionOne| a@@57 x@@26) y@@8))))
 :qid |seqgeneratedbpl.863:18|
 :skolemid |152|
 :pattern ( (|ISet#UnionOne| a@@57 x@@26) (MapType0Select a@@57 y@@8))
)))
(assert (forall ((a@@58 T@U) (b@@40 T@U) (y@@9 T@U) ) (! (let ((T@@85 (type y@@9)))
 (=> (and (and (= (type a@@58) (MapType0Type T@@85 boolType)) (= (type b@@40) (MapType0Type T@@85 boolType))) (U_2_bool (MapType0Select a@@58 y@@9))) (U_2_bool (MapType0Select (|ISet#Union| a@@58 b@@40) y@@9))))
 :qid |seqgeneratedbpl.873:18|
 :skolemid |154|
 :pattern ( (|ISet#Union| a@@58 b@@40) (MapType0Select a@@58 y@@9))
)))
(assert (forall ((a@@59 T@U) (b@@41 T@U) (y@@10 T@U) ) (! (let ((T@@86 (type y@@10)))
 (=> (and (and (= (type a@@59) (MapType0Type T@@86 boolType)) (= (type b@@41) (MapType0Type T@@86 boolType))) (U_2_bool (MapType0Select b@@41 y@@10))) (U_2_bool (MapType0Select (|ISet#Union| a@@59 b@@41) y@@10))))
 :qid |seqgeneratedbpl.877:18|
 :skolemid |155|
 :pattern ( (|ISet#Union| a@@59 b@@41) (MapType0Select b@@41 y@@10))
)))
(assert (forall ((x@@27 Int) ) (! (= (q@Real x@@27) (to_real x@@27))
 :qid |seqgeneratedbpl.607:15|
 :skolemid |105|
 :pattern ( (q@Real x@@27))
)))
(assert (forall ((a@@60 T@U) (x@@28 T@U) (o@@32 T@U) ) (! (let ((T@@87 (type x@@28)))
 (=> (and (= (type a@@60) (MapType0Type T@@87 boolType)) (= (type o@@32) T@@87)) (= (U_2_bool (MapType0Select (|Set#UnionOne| a@@60 x@@28) o@@32))  (or (= o@@32 x@@28) (U_2_bool (MapType0Select a@@60 o@@32))))))
 :qid |seqgeneratedbpl.746:18|
 :skolemid |124|
 :pattern ( (MapType0Select (|Set#UnionOne| a@@60 x@@28) o@@32))
)))
(assert (forall ((a@@61 T@U) (x@@29 T@U) (o@@33 T@U) ) (! (let ((T@@88 (type x@@29)))
 (=> (and (= (type a@@61) (MapType0Type T@@88 boolType)) (= (type o@@33) T@@88)) (= (U_2_bool (MapType0Select (|ISet#UnionOne| a@@61 x@@29) o@@33))  (or (= o@@33 x@@29) (U_2_bool (MapType0Select a@@61 o@@33))))))
 :qid |seqgeneratedbpl.857:18|
 :skolemid |150|
 :pattern ( (MapType0Select (|ISet#UnionOne| a@@61 x@@29) o@@33))
)))
(assert (forall ((s@@20 T@U) (n@@12 Int) ) (! (let ((T@@89 (SeqTypeInv0 (type s@@20))))
 (=> (= (type s@@20) (SeqType T@@89)) (=> (and (<= 0 n@@12) (<= n@@12 (|Seq#Length| s@@20))) (= (|Seq#Length| (|Seq#Take| s@@20 n@@12)) n@@12))))
 :qid |seqgeneratedbpl.1270:18|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@20 n@@12)))
)))
(assert (forall ((a@@62 T@U) (b@@42 T@U) (y@@11 T@U) ) (! (let ((T@@90 (type y@@11)))
 (=> (and (and (= (type a@@62) (MapType0Type T@@90 boolType)) (= (type b@@42) (MapType0Type T@@90 boolType))) (U_2_bool (MapType0Select b@@42 y@@11))) (not (U_2_bool (MapType0Select (|Set#Difference| a@@62 b@@42) y@@11)))))
 :qid |seqgeneratedbpl.817:18|
 :skolemid |140|
 :pattern ( (|Set#Difference| a@@62 b@@42) (MapType0Select b@@42 y@@11))
)))
(assert (forall ((a@@63 T@U) (b@@43 T@U) (y@@12 T@U) ) (! (let ((T@@91 (type y@@12)))
 (=> (and (and (= (type a@@63) (MapType0Type T@@91 boolType)) (= (type b@@43) (MapType0Type T@@91 boolType))) (U_2_bool (MapType0Select b@@43 y@@12))) (not (U_2_bool (MapType0Select (|ISet#Difference| a@@63 b@@43) y@@12)))))
 :qid |seqgeneratedbpl.915:18|
 :skolemid |163|
 :pattern ( (|ISet#Difference| a@@63 b@@43) (MapType0Select b@@43 y@@12))
)))
(assert (forall ((f@@16 T@U) (t0@@24 T@U) (t1@@9 T@U) ) (!  (=> (and (and (= (type f@@16) HandleTypeType) (= (type t0@@24) TyType)) (= (type t1@@9) TyType)) (= ($Is f@@16 (Tclass._System.___hFunc1 t0@@24 t1@@9)) (forall ((h@@15 T@U) (bx0@@6 T@U) ) (!  (=> (and (= (type h@@15) (MapType1Type refType)) (= (type bx0@@6) BoxType)) (=> (and (and ($IsGoodHeap h@@15) ($IsBox bx0@@6 t0@@24)) (Requires1 t0@@24 t1@@9 h@@15 f@@16 bx0@@6)) ($IsBox (Apply1 t0@@24 t1@@9 h@@15 f@@16 bx0@@6) t1@@9)))
 :qid |seqgeneratedbpl.2261:19|
 :skolemid |397|
 :pattern ( (Apply1 t0@@24 t1@@9 h@@15 f@@16 bx0@@6))
))))
 :qid |seqgeneratedbpl.2258:15|
 :skolemid |398|
 :pattern ( ($Is f@@16 (Tclass._System.___hFunc1 t0@@24 t1@@9)))
)))
(assert  (and (and (forall ((alpha@@7 T@T) (arg0@@116 T@U) (arg1@@67 T@U) ) (! (= (type (FieldOfDecl alpha@@7 arg0@@116 arg1@@67)) (FieldType alpha@@7))
 :qid |funType:FieldOfDecl|
 :pattern ( (FieldOfDecl alpha@@7 arg0@@116 arg1@@67))
)) (forall ((arg0@@117 T@U) ) (! (= (type (DeclType arg0@@117)) ClassNameType)
 :qid |funType:DeclType|
 :pattern ( (DeclType arg0@@117))
))) (forall ((arg0@@118 T@U) ) (! (= (type (DeclName arg0@@118)) NameFamilyType)
 :qid |funType:DeclName|
 :pattern ( (DeclName arg0@@118))
))))
(assert (forall ((cl T@U) (nm T@U) (T@@92 T@T) ) (!  (=> (and (= (type cl) ClassNameType) (= (type nm) NameFamilyType)) (and (= (DeclType (FieldOfDecl T@@92 cl nm)) cl) (= (DeclName (FieldOfDecl T@@92 cl nm)) nm)))
 :qid |seqgeneratedbpl.576:18|
 :skolemid |100|
 :pattern ( (FieldOfDecl T@@92 cl nm))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> (and (= (type bx@@18) BoxType) ($IsBox bx@@18 TInt)) (and (= ($Box ($Unbox intType bx@@18)) bx@@18) ($Is ($Unbox intType bx@@18) TInt)))
 :qid |seqgeneratedbpl.186:15|
 :skolemid |26|
 :pattern ( ($IsBox bx@@18 TInt))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> (and (= (type bx@@19) BoxType) ($IsBox bx@@19 TReal)) (and (= ($Box ($Unbox realType bx@@19)) bx@@19) ($Is ($Unbox realType bx@@19) TReal)))
 :qid |seqgeneratedbpl.190:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@19 TReal))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> (and (= (type bx@@20) BoxType) ($IsBox bx@@20 TBool)) (and (= ($Box ($Unbox boolType bx@@20)) bx@@20) ($Is ($Unbox boolType bx@@20) TBool)))
 :qid |seqgeneratedbpl.195:15|
 :skolemid |28|
 :pattern ( ($IsBox bx@@20 TBool))
)))
(assert (forall ((bx@@21 T@U) ) (!  (=> (and (= (type bx@@21) BoxType) ($IsBox bx@@21 TChar)) (and (= ($Box ($Unbox charType bx@@21)) bx@@21) ($Is ($Unbox charType bx@@21) TChar)))
 :qid |seqgeneratedbpl.200:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@21 TChar))
)))
(assert (forall ((a@@64 T@U) (b@@44 T@U) ) (! (let ((T@@93 (MapType0TypeInv0 (type a@@64))))
 (=> (and (= (type a@@64) (MapType0Type T@@93 boolType)) (= (type b@@44) (MapType0Type T@@93 boolType))) (and (= (+ (+ (|Set#Card| (|Set#Difference| a@@64 b@@44)) (|Set#Card| (|Set#Difference| b@@44 a@@64))) (|Set#Card| (|Set#Intersection| a@@64 b@@44))) (|Set#Card| (|Set#Union| a@@64 b@@44))) (= (|Set#Card| (|Set#Difference| a@@64 b@@44)) (- (|Set#Card| a@@64) (|Set#Card| (|Set#Intersection| a@@64 b@@44)))))))
 :qid |seqgeneratedbpl.821:18|
 :skolemid |141|
 :pattern ( (|Set#Card| (|Set#Difference| a@@64 b@@44)))
)))
(assert (forall ((v@@20 T@U) (t@@11 T@U) ) (!  (=> (= (type t@@11) TyType) (= ($IsBox ($Box v@@20) t@@11) ($Is v@@20 t@@11)))
 :qid |seqgeneratedbpl.237:18|
 :skolemid |36|
 :pattern ( ($IsBox ($Box v@@20) t@@11))
)))
(assert (forall ((t0@@25 T@U) (t1@@10 T@U) (h0@@8 T@U) (h1@@8 T@U) (f@@17 T@U) (bx0@@7 T@U) ) (!  (=> (and (and (and (and (and (and (= (type t0@@25) TyType) (= (type t1@@10) TyType)) (= (type h0@@8) (MapType1Type refType))) (= (type h1@@8) (MapType1Type refType))) (= (type f@@17) HandleTypeType)) (= (type bx0@@7) BoxType)) (and (and (and (and (and ($HeapSucc h0@@8 h1@@8) ($IsGoodHeap h0@@8)) ($IsGoodHeap h1@@8)) ($IsBox bx0@@7 t0@@25)) ($Is f@@17 (Tclass._System.___hFunc1 t0@@25 t1@@10))) (forall ((o@@34 T@U) (fld@@7 T@U) ) (! (let ((a@@65 (FieldTypeInv0 (type fld@@7))))
 (=> (and (and (= (type o@@34) refType) (= (type fld@@7) (FieldType a@@65))) (and (not (= o@@34 null)) (U_2_bool (MapType0Select (Reads1 t0@@25 t1@@10 h0@@8 f@@17 bx0@@7) ($Box o@@34))))) (= (MapType1Select h0@@8 o@@34 fld@@7) (MapType1Select h1@@8 o@@34 fld@@7))))
 :qid |seqgeneratedbpl.2159:22|
 :skolemid |383|
 :no-pattern (type o@@34)
 :no-pattern (type fld@@7)
 :no-pattern (U_2_int o@@34)
 :no-pattern (U_2_bool o@@34)
 :no-pattern (U_2_int fld@@7)
 :no-pattern (U_2_bool fld@@7)
)))) (= (Reads1 t0@@25 t1@@10 h0@@8 f@@17 bx0@@7) (Reads1 t0@@25 t1@@10 h1@@8 f@@17 bx0@@7)))
 :qid |seqgeneratedbpl.2150:15|
 :skolemid |384|
 :pattern ( ($HeapSucc h0@@8 h1@@8) (Reads1 t0@@25 t1@@10 h1@@8 f@@17 bx0@@7))
)))
(assert (forall ((t0@@26 T@U) (t1@@11 T@U) (h0@@9 T@U) (h1@@9 T@U) (f@@18 T@U) (bx0@@8 T@U) ) (!  (=> (and (and (and (and (and (and (= (type t0@@26) TyType) (= (type t1@@11) TyType)) (= (type h0@@9) (MapType1Type refType))) (= (type h1@@9) (MapType1Type refType))) (= (type f@@18) HandleTypeType)) (= (type bx0@@8) BoxType)) (and (and (and (and (and ($HeapSucc h0@@9 h1@@9) ($IsGoodHeap h0@@9)) ($IsGoodHeap h1@@9)) ($IsBox bx0@@8 t0@@26)) ($Is f@@18 (Tclass._System.___hFunc1 t0@@26 t1@@11))) (forall ((o@@35 T@U) (fld@@8 T@U) ) (! (let ((a@@66 (FieldTypeInv0 (type fld@@8))))
 (=> (and (and (= (type o@@35) refType) (= (type fld@@8) (FieldType a@@66))) (and (not (= o@@35 null)) (U_2_bool (MapType0Select (Reads1 t0@@26 t1@@11 h1@@9 f@@18 bx0@@8) ($Box o@@35))))) (= (MapType1Select h0@@9 o@@35 fld@@8) (MapType1Select h1@@9 o@@35 fld@@8))))
 :qid |seqgeneratedbpl.2174:22|
 :skolemid |385|
 :no-pattern (type o@@35)
 :no-pattern (type fld@@8)
 :no-pattern (U_2_int o@@35)
 :no-pattern (U_2_bool o@@35)
 :no-pattern (U_2_int fld@@8)
 :no-pattern (U_2_bool fld@@8)
)))) (= (Reads1 t0@@26 t1@@11 h0@@9 f@@18 bx0@@8) (Reads1 t0@@26 t1@@11 h1@@9 f@@18 bx0@@8)))
 :qid |seqgeneratedbpl.2165:15|
 :skolemid |386|
 :pattern ( ($HeapSucc h0@@9 h1@@9) (Reads1 t0@@26 t1@@11 h1@@9 f@@18 bx0@@8))
)))
(assert (forall ((t0@@27 T@U) (t1@@12 T@U) (h0@@10 T@U) (h1@@10 T@U) (f@@19 T@U) (bx0@@9 T@U) ) (!  (=> (and (and (and (and (and (and (= (type t0@@27) TyType) (= (type t1@@12) TyType)) (= (type h0@@10) (MapType1Type refType))) (= (type h1@@10) (MapType1Type refType))) (= (type f@@19) HandleTypeType)) (= (type bx0@@9) BoxType)) (and (and (and (and (and ($HeapSucc h0@@10 h1@@10) ($IsGoodHeap h0@@10)) ($IsGoodHeap h1@@10)) ($IsBox bx0@@9 t0@@27)) ($Is f@@19 (Tclass._System.___hFunc1 t0@@27 t1@@12))) (forall ((o@@36 T@U) (fld@@9 T@U) ) (! (let ((a@@67 (FieldTypeInv0 (type fld@@9))))
 (=> (and (and (= (type o@@36) refType) (= (type fld@@9) (FieldType a@@67))) (and (not (= o@@36 null)) (U_2_bool (MapType0Select (Reads1 t0@@27 t1@@12 h0@@10 f@@19 bx0@@9) ($Box o@@36))))) (= (MapType1Select h0@@10 o@@36 fld@@9) (MapType1Select h1@@10 o@@36 fld@@9))))
 :qid |seqgeneratedbpl.2219:22|
 :skolemid |391|
 :no-pattern (type o@@36)
 :no-pattern (type fld@@9)
 :no-pattern (U_2_int o@@36)
 :no-pattern (U_2_bool o@@36)
 :no-pattern (U_2_int fld@@9)
 :no-pattern (U_2_bool fld@@9)
)))) (= (Apply1 t0@@27 t1@@12 h0@@10 f@@19 bx0@@9) (Apply1 t0@@27 t1@@12 h1@@10 f@@19 bx0@@9)))
 :qid |seqgeneratedbpl.2210:15|
 :skolemid |392|
 :pattern ( ($HeapSucc h0@@10 h1@@10) (Apply1 t0@@27 t1@@12 h1@@10 f@@19 bx0@@9))
)))
(assert (forall ((t0@@28 T@U) (t1@@13 T@U) (h0@@11 T@U) (h1@@11 T@U) (f@@20 T@U) (bx0@@10 T@U) ) (!  (=> (and (and (and (and (and (and (= (type t0@@28) TyType) (= (type t1@@13) TyType)) (= (type h0@@11) (MapType1Type refType))) (= (type h1@@11) (MapType1Type refType))) (= (type f@@20) HandleTypeType)) (= (type bx0@@10) BoxType)) (and (and (and (and (and ($HeapSucc h0@@11 h1@@11) ($IsGoodHeap h0@@11)) ($IsGoodHeap h1@@11)) ($IsBox bx0@@10 t0@@28)) ($Is f@@20 (Tclass._System.___hFunc1 t0@@28 t1@@13))) (forall ((o@@37 T@U) (fld@@10 T@U) ) (! (let ((a@@68 (FieldTypeInv0 (type fld@@10))))
 (=> (and (and (= (type o@@37) refType) (= (type fld@@10) (FieldType a@@68))) (and (not (= o@@37 null)) (U_2_bool (MapType0Select (Reads1 t0@@28 t1@@13 h1@@11 f@@20 bx0@@10) ($Box o@@37))))) (= (MapType1Select h0@@11 o@@37 fld@@10) (MapType1Select h1@@11 o@@37 fld@@10))))
 :qid |seqgeneratedbpl.2234:22|
 :skolemid |393|
 :no-pattern (type o@@37)
 :no-pattern (type fld@@10)
 :no-pattern (U_2_int o@@37)
 :no-pattern (U_2_bool o@@37)
 :no-pattern (U_2_int fld@@10)
 :no-pattern (U_2_bool fld@@10)
)))) (= (Apply1 t0@@28 t1@@13 h0@@11 f@@20 bx0@@10) (Apply1 t0@@28 t1@@13 h1@@11 f@@20 bx0@@10)))
 :qid |seqgeneratedbpl.2225:15|
 :skolemid |394|
 :pattern ( ($HeapSucc h0@@11 h1@@11) (Apply1 t0@@28 t1@@13 h1@@11 f@@20 bx0@@10))
)))
(assert (forall ((|s#0@@1| T@U) ) (!  (=> (and (= (type |s#0@@1|) (SeqType BoxType)) ($Is |s#0@@1| (TSeq TInt))) (= (|_module.__default.sorted#requires| |s#0@@1|) true))
 :qid |seqgeneratedbpl.2659:15|
 :skolemid |456|
 :pattern ( (|_module.__default.sorted#requires| |s#0@@1|))
)))
(assert (forall ((t0@@29 T@U) (t1@@14 T@U) (heap@@5 T@U) (h@@16 T@U) (r@@5 T@U) (rd@@2 T@U) (bx0@@11 T@U) ) (!  (=> (and (and (and (and (and (and (and (= (type t0@@29) TyType) (= (type t1@@14) TyType)) (= (type heap@@5) (MapType1Type refType))) (= (type h@@16) (MapType3Type (MapType1Type refType) BoxType BoxType))) (= (type r@@5) (MapType3Type (MapType1Type refType) BoxType boolType))) (= (type rd@@2) (MapType3Type (MapType1Type refType) BoxType (MapType0Type BoxType boolType)))) (= (type bx0@@11) BoxType)) (U_2_bool (MapType3Select r@@5 heap@@5 bx0@@11))) (Requires1 t0@@29 t1@@14 heap@@5 (Handle1 h@@16 r@@5 rd@@2) bx0@@11))
 :qid |seqgeneratedbpl.2118:15|
 :skolemid |381|
 :pattern ( (Requires1 t0@@29 t1@@14 heap@@5 (Handle1 h@@16 r@@5 rd@@2) bx0@@11))
)))
(assert (forall ((t@@12 T@U) (T@@94 T@T) ) (!  (=> (= (type t@@12) TyType) ($Is ((as seq.empty T@U) T@@94) t@@12))
 :qid |seqgeneratedbpl.1145:18|
 :skolemid |218|
 :pattern ( ($Is ((as seq.empty T@U) T@@94) t@@12))
)))
(assert (forall ((arg0@@119 T@U) ) (! (let ((T@@95 (MapType0TypeInv0 (type arg0@@119))))
(= (type (|MultiSet#FromSet| arg0@@119)) (MapType0Type T@@95 intType)))
 :qid |funType:MultiSet#FromSet|
 :pattern ( (|MultiSet#FromSet| arg0@@119))
)))
(assert (forall ((s@@21 T@U) (a@@69 T@U) ) (! (let ((T@@96 (type a@@69)))
 (=> (= (type s@@21) (MapType0Type T@@96 boolType)) (and (= (= (U_2_int (MapType0Select (|MultiSet#FromSet| s@@21) a@@69)) 0)  (not (U_2_bool (MapType0Select s@@21 a@@69)))) (= (= (U_2_int (MapType0Select (|MultiSet#FromSet| s@@21) a@@69)) 1) (U_2_bool (MapType0Select s@@21 a@@69))))))
 :qid |seqgeneratedbpl.1086:18|
 :skolemid |205|
 :pattern ( (MapType0Select (|MultiSet#FromSet| s@@21) a@@69))
)))
(assert (forall ((arg0@@120 T@U) ) (! (let ((T@@97 (type arg0@@120)))
(= (type (|Seq#Singleton| arg0@@120)) (SeqType T@@97)))
 :qid |funType:Seq#Singleton|
 :pattern ( (|Seq#Singleton| arg0@@120))
)))
(assert (forall ((t@@13 T@U) ) (! (= (|Seq#Index| (|Seq#Singleton| t@@13) 0) t@@13)
 :qid |seqgeneratedbpl.1189:18|
 :skolemid |226|
 :pattern ( (|Seq#Index| (|Seq#Singleton| t@@13) 0))
)))
(assert (forall ((s@@22 T@U) (i@@11 Int) (v@@21 T@U) (n@@13 Int) ) (! (let ((T@@98 (type v@@21)))
 (=> (= (type s@@22) (SeqType T@@98)) (=> (and (<= n@@13 i@@11) (< i@@11 (|Seq#Length| s@@22))) (= (|Seq#Take| (|Seq#Update| s@@22 i@@11 v@@21) n@@13) (|Seq#Take| s@@22 n@@13)))))
 :qid |seqgeneratedbpl.1334:18|
 :skolemid |257|
 :pattern ( (|Seq#Take| (|Seq#Update| s@@22 i@@11 v@@21) n@@13))
)))
(assert (forall ((arg0@@121 T@U) ) (! (let ((T@@99 (type arg0@@121)))
(= (type (|MultiSet#Singleton| arg0@@121)) (MapType0Type T@@99 intType)))
 :qid |funType:MultiSet#Singleton|
 :pattern ( (|MultiSet#Singleton| arg0@@121))
)))
(assert (forall ((r@@6 T@U) (o@@38 T@U) ) (! (let ((T@@100 (type r@@6)))
 (=> (= (type o@@38) T@@100) (and (= (= (U_2_int (MapType0Select (|MultiSet#Singleton| r@@6) o@@38)) 1) (= r@@6 o@@38)) (= (= (U_2_int (MapType0Select (|MultiSet#Singleton| r@@6) o@@38)) 0) (not (= r@@6 o@@38))))))
 :qid |seqgeneratedbpl.985:18|
 :skolemid |183|
 :pattern ( (MapType0Select (|MultiSet#Singleton| r@@6) o@@38))
)))
(assert (forall ((o@@39 T@U) ) (!  (=> (= (type o@@39) BoxType) (<= 0 (|ORD#Offset| o@@39)))
 :qid |seqgeneratedbpl.407:15|
 :skolemid |77|
 :pattern ( (|ORD#Offset| o@@39))
)))
(assert (forall ((o@@40 T@U) ) (!  (=> (= (type o@@40) refType) (<= 0 (_System.array.Length o@@40)))
 :qid |seqgeneratedbpl.599:15|
 :skolemid |103|
 :no-pattern (type o@@40)
 :no-pattern (U_2_int o@@40)
 :no-pattern (U_2_bool o@@40)
)))
(assert (forall ((s@@23 T@U) ) (! (let ((T@@101 (MapType0TypeInv0 (type s@@23))))
 (=> (= (type s@@23) (MapType0Type T@@101 boolType)) (<= 0 (|Set#Card| s@@23))))
 :qid |seqgeneratedbpl.721:18|
 :skolemid |117|
 :pattern ( (|Set#Card| s@@23))
)))
(assert (forall ((s@@24 T@U) ) (! (let ((T@@102 (MapType0TypeInv0 (type s@@24))))
 (=> (= (type s@@24) (MapType0Type T@@102 intType)) (<= 0 (|MultiSet#Card| s@@24))))
 :qid |seqgeneratedbpl.968:18|
 :skolemid |178|
 :pattern ( (|MultiSet#Card| s@@24))
)))
(assert (forall ((s@@25 T@U) ) (! (let ((T@@103 (SeqTypeInv0 (type s@@25))))
 (=> (= (type s@@25) (SeqType T@@103)) (<= 0 (|Seq#Length| s@@25))))
 :qid |seqgeneratedbpl.1135:18|
 :skolemid |215|
 :pattern ( (|Seq#Length| s@@25))
)))
(assert (forall ((m@@24 T@U) ) (! (let ((V@@23 (MapTypeInv1 (type m@@24))))
(let ((U@@23 (MapTypeInv0 (type m@@24))))
 (=> (= (type m@@24) (MapType U@@23 V@@23)) (<= 0 (|Map#Card| m@@24)))))
 :qid |seqgeneratedbpl.1401:20|
 :skolemid |269|
 :pattern ( (|Map#Card| m@@24))
)))
(assert (forall ((s@@26 T@U) (i@@12 Int) (j@@2 Int) ) (! (let ((T@@104 (SeqTypeInv0 (type s@@26))))
 (=> (= (type s@@26) (SeqType T@@104)) (=> (and (and (<= 0 i@@12) (< i@@12 j@@2)) (<= j@@2 (|Seq#Length| s@@26))) (< (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@26 i@@12) (|Seq#Drop| s@@26 j@@2))) (|Seq#Rank| s@@26)))))
 :qid |seqgeneratedbpl.1375:18|
 :skolemid |265|
 :pattern ( (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@26 i@@12) (|Seq#Drop| s@@26 j@@2))))
)))
(assert (forall ((a@@70 T@U) (b@@45 T@U) (o@@41 T@U) ) (! (let ((T@@105 (type o@@41)))
 (=> (and (= (type a@@70) (MapType0Type T@@105 intType)) (= (type b@@45) (MapType0Type T@@105 intType))) (= (U_2_int (MapType0Select (|MultiSet#Intersection| a@@70 b@@45) o@@41)) (|Math#min| (U_2_int (MapType0Select a@@70 o@@41)) (U_2_int (MapType0Select b@@45 o@@41))))))
 :qid |seqgeneratedbpl.1028:18|
 :skolemid |192|
 :pattern ( (MapType0Select (|MultiSet#Intersection| a@@70 b@@45) o@@41))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|s#0@@2| T@U) ) (!  (=> (and (= (type |s#0@@2|) (SeqType BoxType)) (or (|_module.__default.sorted#canCall| (Lit |s#0@@2|)) (and (not (= 0 $FunctionContextHeight)) ($Is |s#0@@2| (TSeq TInt))))) (= (_module.__default.sorted (Lit |s#0@@2|)) (forall ((|i#1| Int) (|j#1| Int) ) (!  (=> true (=> (and (and (<= (LitInt 0) |i#1|) (< |i#1| |j#1|)) (< |j#1| (|Seq#Length| (Lit |s#0@@2|)))) (<= (U_2_int ($Unbox intType (|Seq#Index| (Lit |s#0@@2|) |i#1|))) (U_2_int ($Unbox intType (|Seq#Index| (Lit |s#0@@2|) |j#1|))))))
 :qid |seqgeneratedbpl.2684:21|
 :skolemid |459|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@2| |j#1|)) ($Unbox intType (|Seq#Index| |s#0@@2| |i#1|)))
))))
 :qid |seqgeneratedbpl.2679:16|
 :weight 3
 :skolemid |460|
 :pattern ( (_module.__default.sorted (Lit |s#0@@2|)))
))))
(assert (forall ((arg0@@122 T@U) ) (! (= (type (Inv0_TMap arg0@@122)) TyType)
 :qid |funType:Inv0_TMap|
 :pattern ( (Inv0_TMap arg0@@122))
)))
(assert (forall ((t@@14 T@U) (u@@5 T@U) ) (!  (=> (and (= (type t@@14) TyType) (= (type u@@5) TyType)) (= (Inv0_TMap (TMap t@@14 u@@5)) t@@14))
 :qid |seqgeneratedbpl.60:15|
 :skolemid |5|
 :pattern ( (TMap t@@14 u@@5))
)))
(assert (forall ((arg0@@123 T@U) ) (! (= (type (Inv1_TMap arg0@@123)) TyType)
 :qid |funType:Inv1_TMap|
 :pattern ( (Inv1_TMap arg0@@123))
)))
(assert (forall ((t@@15 T@U) (u@@6 T@U) ) (!  (=> (and (= (type t@@15) TyType) (= (type u@@6) TyType)) (= (Inv1_TMap (TMap t@@15 u@@6)) u@@6))
 :qid |seqgeneratedbpl.62:15|
 :skolemid |6|
 :pattern ( (TMap t@@15 u@@6))
)))
(assert (forall ((arg0@@124 T@U) ) (! (= (type (Inv0_TIMap arg0@@124)) TyType)
 :qid |funType:Inv0_TIMap|
 :pattern ( (Inv0_TIMap arg0@@124))
)))
(assert (forall ((t@@16 T@U) (u@@7 T@U) ) (!  (=> (and (= (type t@@16) TyType) (= (type u@@7) TyType)) (= (Inv0_TIMap (TIMap t@@16 u@@7)) t@@16))
 :qid |seqgeneratedbpl.68:15|
 :skolemid |7|
 :pattern ( (TIMap t@@16 u@@7))
)))
(assert (forall ((arg0@@125 T@U) ) (! (= (type (Inv1_TIMap arg0@@125)) TyType)
 :qid |funType:Inv1_TIMap|
 :pattern ( (Inv1_TIMap arg0@@125))
)))
(assert (forall ((t@@17 T@U) (u@@8 T@U) ) (!  (=> (and (= (type t@@17) TyType) (= (type u@@8) TyType)) (= (Inv1_TIMap (TIMap t@@17 u@@8)) u@@8))
 :qid |seqgeneratedbpl.70:15|
 :skolemid |8|
 :pattern ( (TIMap t@@17 u@@8))
)))
(assert (forall ((t@@18 T@U) (u@@9 T@U) ) (!  (=> (and (= (type t@@18) TyType) (= (type u@@9) TyType)) (= (Tag (TMap t@@18 u@@9)) TagMap))
 :qid |seqgeneratedbpl.118:15|
 :skolemid |13|
 :pattern ( (TMap t@@18 u@@9))
)))
(assert (forall ((t@@19 T@U) (u@@10 T@U) ) (!  (=> (and (= (type t@@19) TyType) (= (type u@@10) TyType)) (= (Tag (TIMap t@@19 u@@10)) TagIMap))
 :qid |seqgeneratedbpl.120:15|
 :skolemid |14|
 :pattern ( (TIMap t@@19 u@@10))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@3| T@U) ) (!  (=> (and (= (type |#$T0@@6|) TyType) (= (type |#$R@@3|) TyType)) (= (Tag (Tclass._System.___hFunc1 |#$T0@@6| |#$R@@3|)) Tagclass._System.___hFunc1))
 :qid |seqgeneratedbpl.2073:15|
 :skolemid |376|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@6| |#$R@@3|))
)))
(assert (forall ((arg0@@126 T@U) ) (! (= (type (Tclass._System.___hFunc1_0 arg0@@126)) TyType)
 :qid |funType:Tclass._System.___hFunc1_0|
 :pattern ( (Tclass._System.___hFunc1_0 arg0@@126))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@4| T@U) ) (!  (=> (and (= (type |#$T0@@7|) TyType) (= (type |#$R@@4|) TyType)) (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@7| |#$R@@4|)) |#$T0@@7|))
 :qid |seqgeneratedbpl.2080:15|
 :skolemid |377|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@7| |#$R@@4|))
)))
(assert (forall ((arg0@@127 T@U) ) (! (= (type (Tclass._System.___hFunc1_1 arg0@@127)) TyType)
 :qid |funType:Tclass._System.___hFunc1_1|
 :pattern ( (Tclass._System.___hFunc1_1 arg0@@127))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@5| T@U) ) (!  (=> (and (= (type |#$T0@@8|) TyType) (= (type |#$R@@5|) TyType)) (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@5|)) |#$R@@5|))
 :qid |seqgeneratedbpl.2087:15|
 :skolemid |378|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@5|))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@6| T@U) ) (!  (=> (and (= (type |#$T0@@9|) TyType) (= (type |#$R@@6|) TyType)) (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@9| |#$R@@6|)) Tagclass._System.___hPartialFunc1))
 :qid |seqgeneratedbpl.2299:15|
 :skolemid |407|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@9| |#$R@@6|))
)))
(assert (forall ((arg0@@128 T@U) ) (! (= (type (Tclass._System.___hPartialFunc1_0 arg0@@128)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc1_0|
 :pattern ( (Tclass._System.___hPartialFunc1_0 arg0@@128))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@7| T@U) ) (!  (=> (and (= (type |#$T0@@10|) TyType) (= (type |#$R@@7|) TyType)) (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@7|)) |#$T0@@10|))
 :qid |seqgeneratedbpl.2307:15|
 :skolemid |408|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@7|))
)))
(assert (forall ((arg0@@129 T@U) ) (! (= (type (Tclass._System.___hPartialFunc1_1 arg0@@129)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc1_1|
 :pattern ( (Tclass._System.___hPartialFunc1_1 arg0@@129))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@8| T@U) ) (!  (=> (and (= (type |#$T0@@11|) TyType) (= (type |#$R@@8|) TyType)) (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@11| |#$R@@8|)) |#$R@@8|))
 :qid |seqgeneratedbpl.2315:15|
 :skolemid |409|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@11| |#$R@@8|))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@9| T@U) ) (!  (=> (and (= (type |#$T0@@12|) TyType) (= (type |#$R@@9|) TyType)) (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@12| |#$R@@9|)) Tagclass._System.___hTotalFunc1))
 :qid |seqgeneratedbpl.2347:15|
 :skolemid |414|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@12| |#$R@@9|))
)))
(assert (forall ((arg0@@130 T@U) ) (! (= (type (Tclass._System.___hTotalFunc1_0 arg0@@130)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc1_0|
 :pattern ( (Tclass._System.___hTotalFunc1_0 arg0@@130))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@10| T@U) ) (!  (=> (and (= (type |#$T0@@13|) TyType) (= (type |#$R@@10|) TyType)) (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@13| |#$R@@10|)) |#$T0@@13|))
 :qid |seqgeneratedbpl.2354:15|
 :skolemid |415|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@13| |#$R@@10|))
)))
(assert (forall ((arg0@@131 T@U) ) (! (= (type (Tclass._System.___hTotalFunc1_1 arg0@@131)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc1_1|
 :pattern ( (Tclass._System.___hTotalFunc1_1 arg0@@131))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@11| T@U) ) (!  (=> (and (= (type |#$T0@@14|) TyType) (= (type |#$R@@11|) TyType)) (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@11|)) |#$R@@11|))
 :qid |seqgeneratedbpl.2362:15|
 :skolemid |416|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@11|))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (!  (=> (and (= (type |a#0#0#0|) BoxType) (= (type |a#0#1#0|) BoxType)) (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|))
 :qid |seqgeneratedbpl.2397:15|
 :skolemid |421|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|#$T0@@15| T@U) (|#$T1@@4| T@U) ) (!  (=> (and (= (type |#$T0@@15|) TyType) (= (type |#$T1@@4|) TyType)) (= (Tag (Tclass._System.Tuple2 |#$T0@@15| |#$T1@@4|)) Tagclass._System.Tuple2))
 :qid |seqgeneratedbpl.2420:15|
 :skolemid |425|
 :pattern ( (Tclass._System.Tuple2 |#$T0@@15| |#$T1@@4|))
)))
(assert (forall ((arg0@@132 T@U) ) (! (= (type (Tclass._System.Tuple2_0 arg0@@132)) TyType)
 :qid |funType:Tclass._System.Tuple2_0|
 :pattern ( (Tclass._System.Tuple2_0 arg0@@132))
)))
(assert (forall ((|#$T0@@16| T@U) (|#$T1@@5| T@U) ) (!  (=> (and (= (type |#$T0@@16|) TyType) (= (type |#$T1@@5|) TyType)) (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |#$T0@@16| |#$T1@@5|)) |#$T0@@16|))
 :qid |seqgeneratedbpl.2427:15|
 :skolemid |426|
 :pattern ( (Tclass._System.Tuple2 |#$T0@@16| |#$T1@@5|))
)))
(assert (forall ((arg0@@133 T@U) ) (! (= (type (Tclass._System.Tuple2_1 arg0@@133)) TyType)
 :qid |funType:Tclass._System.Tuple2_1|
 :pattern ( (Tclass._System.Tuple2_1 arg0@@133))
)))
(assert (forall ((|#$T0@@17| T@U) (|#$T1@@6| T@U) ) (!  (=> (and (= (type |#$T0@@17|) TyType) (= (type |#$T1@@6|) TyType)) (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |#$T0@@17| |#$T1@@6|)) |#$T1@@6|))
 :qid |seqgeneratedbpl.2434:15|
 :skolemid |427|
 :pattern ( (Tclass._System.Tuple2 |#$T0@@17| |#$T1@@6|))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (!  (=> (and (= (type |a#5#0#0|) BoxType) (= (type |a#5#1#0|) BoxType)) (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)) |a#5#0#0|))
 :qid |seqgeneratedbpl.2493:15|
 :skolemid |436|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (!  (=> (and (= (type |a#7#0#0|) BoxType) (= (type |a#7#1#0|) BoxType)) (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)) |a#7#1#0|))
 :qid |seqgeneratedbpl.2503:15|
 :skolemid |438|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall (($o@@10 T@U) ) (!  (=> (= (type $o@@10) refType) ($Is $o@@10 Tclass._System.object?))
 :qid |seqgeneratedbpl.1677:15|
 :skolemid |320|
 :pattern ( ($Is $o@@10 Tclass._System.object?))
)))
(assert (forall ((v@@22 T@U) (t0@@30 T@U) (h@@17 T@U) ) (!  (=> (and (and (= (type v@@22) (SeqType BoxType)) (= (type t0@@30) TyType)) (= (type h@@17) (MapType1Type refType))) (= ($IsAlloc v@@22 (TSeq t0@@30) h@@17) (forall ((i@@13 Int) ) (!  (=> (and (<= 0 i@@13) (< i@@13 (|Seq#Length| v@@22))) ($IsAllocBox (|Seq#Index| v@@22 i@@13) t0@@30 h@@17))
 :qid |seqgeneratedbpl.317:19|
 :skolemid |63|
 :pattern ( (|Seq#Index| v@@22 i@@13))
))))
 :qid |seqgeneratedbpl.314:15|
 :skolemid |64|
 :pattern ( ($IsAlloc v@@22 (TSeq t0@@30) h@@17))
)))
(assert (forall ((a@@71 T@U) (x@@30 T@U) ) (! (let ((T@@106 (type x@@30)))
 (=> (= (type a@@71) (MapType0Type T@@106 boolType)) (U_2_bool (MapType0Select (|Set#UnionOne| a@@71 x@@30) x@@30))))
 :qid |seqgeneratedbpl.750:18|
 :skolemid |125|
 :pattern ( (|Set#UnionOne| a@@71 x@@30))
)))
(assert (forall ((a@@72 T@U) (x@@31 T@U) ) (! (let ((T@@107 (type x@@31)))
 (=> (= (type a@@72) (MapType0Type T@@107 boolType)) (U_2_bool (MapType0Select (|ISet#UnionOne| a@@72 x@@31) x@@31))))
 :qid |seqgeneratedbpl.861:18|
 :skolemid |151|
 :pattern ( (|ISet#UnionOne| a@@72 x@@31))
)))
(assert (forall ((a@@73 T@U) (x@@32 T@U) ) (! (let ((T@@108 (type x@@32)))
 (=> (and (= (type a@@73) (MapType0Type T@@108 boolType)) (U_2_bool (MapType0Select a@@73 x@@32))) (= (|Set#Card| (|Set#UnionOne| a@@73 x@@32)) (|Set#Card| a@@73))))
 :qid |seqgeneratedbpl.756:18|
 :skolemid |127|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@73 x@@32)))
)))
(assert (forall ((arg0@@134 Int) ) (! (= (type (TBitvector arg0@@134)) TyType)
 :qid |funType:TBitvector|
 :pattern ( (TBitvector arg0@@134))
)))
(assert (forall ((w Int) ) (! (= (Inv0_TBitvector (TBitvector w)) w)
 :qid |seqgeneratedbpl.38:15|
 :skolemid |0|
 :pattern ( (TBitvector w))
)))
(assert (forall ((arg0@@135 T@U) ) (! (= (type (Inv0_TSet arg0@@135)) TyType)
 :qid |funType:Inv0_TSet|
 :pattern ( (Inv0_TSet arg0@@135))
)))
(assert (forall ((t@@20 T@U) ) (!  (=> (= (type t@@20) TyType) (= (Inv0_TSet (TSet t@@20)) t@@20))
 :qid |seqgeneratedbpl.42:15|
 :skolemid |1|
 :pattern ( (TSet t@@20))
)))
(assert (forall ((arg0@@136 T@U) ) (! (= (type (Inv0_TISet arg0@@136)) TyType)
 :qid |funType:Inv0_TISet|
 :pattern ( (Inv0_TISet arg0@@136))
)))
(assert (forall ((t@@21 T@U) ) (!  (=> (= (type t@@21) TyType) (= (Inv0_TISet (TISet t@@21)) t@@21))
 :qid |seqgeneratedbpl.46:15|
 :skolemid |2|
 :pattern ( (TISet t@@21))
)))
(assert (forall ((arg0@@137 T@U) ) (! (= (type (Inv0_TSeq arg0@@137)) TyType)
 :qid |funType:Inv0_TSeq|
 :pattern ( (Inv0_TSeq arg0@@137))
)))
(assert (forall ((t@@22 T@U) ) (!  (=> (= (type t@@22) TyType) (= (Inv0_TSeq (TSeq t@@22)) t@@22))
 :qid |seqgeneratedbpl.50:15|
 :skolemid |3|
 :pattern ( (TSeq t@@22))
)))
(assert (forall ((arg0@@138 T@U) ) (! (= (type (Inv0_TMultiSet arg0@@138)) TyType)
 :qid |funType:Inv0_TMultiSet|
 :pattern ( (Inv0_TMultiSet arg0@@138))
)))
(assert (forall ((t@@23 T@U) ) (!  (=> (= (type t@@23) TyType) (= (Inv0_TMultiSet (TMultiSet t@@23)) t@@23))
 :qid |seqgeneratedbpl.54:15|
 :skolemid |4|
 :pattern ( (TMultiSet t@@23))
)))
(assert (forall ((t@@24 T@U) ) (!  (=> (= (type t@@24) TyType) (= (Tag (TSet t@@24)) TagSet))
 :qid |seqgeneratedbpl.110:15|
 :skolemid |9|
 :pattern ( (TSet t@@24))
)))
(assert (forall ((t@@25 T@U) ) (!  (=> (= (type t@@25) TyType) (= (Tag (TISet t@@25)) TagISet))
 :qid |seqgeneratedbpl.112:15|
 :skolemid |10|
 :pattern ( (TISet t@@25))
)))
(assert (forall ((t@@26 T@U) ) (!  (=> (= (type t@@26) TyType) (= (Tag (TMultiSet t@@26)) TagMultiSet))
 :qid |seqgeneratedbpl.114:15|
 :skolemid |11|
 :pattern ( (TMultiSet t@@26))
)))
(assert (forall ((t@@27 T@U) ) (!  (=> (= (type t@@27) TyType) (= (Tag (TSeq t@@27)) TagSeq))
 :qid |seqgeneratedbpl.116:15|
 :skolemid |12|
 :pattern ( (TSeq t@@27))
)))
(assert (forall ((i@@14 Int) ) (! (= (FDim (IndexField i@@14)) 1)
 :qid |seqgeneratedbpl.547:15|
 :skolemid |96|
 :pattern ( (IndexField i@@14))
)))
(assert (forall ((i@@15 Int) ) (! (= (IndexField_Inverse (IndexField i@@15)) i@@15)
 :qid |seqgeneratedbpl.551:15|
 :skolemid |97|
 :pattern ( (IndexField i@@15))
)))
(assert (forall ((i@@16 Int) ) (! (= (q@Int (q@Real i@@16)) i@@16)
 :qid |seqgeneratedbpl.609:15|
 :skolemid |106|
 :pattern ( (q@Int (q@Real i@@16)))
)))
(assert (forall ((|#$arg@@4| T@U) ) (!  (=> (= (type |#$arg@@4|) TyType) (= (Tag (Tclass._System.array? |#$arg@@4|)) Tagclass._System.array?))
 :qid |seqgeneratedbpl.1719:15|
 :skolemid |325|
 :pattern ( (Tclass._System.array? |#$arg@@4|))
)))
(assert (forall ((arg0@@139 T@U) ) (! (= (type (Tclass._System.array?_0 arg0@@139)) TyType)
 :qid |funType:Tclass._System.array?_0|
 :pattern ( (Tclass._System.array?_0 arg0@@139))
)))
(assert (forall ((|#$arg@@5| T@U) ) (!  (=> (= (type |#$arg@@5|) TyType) (= (Tclass._System.array?_0 (Tclass._System.array? |#$arg@@5|)) |#$arg@@5|))
 :qid |seqgeneratedbpl.1726:15|
 :skolemid |326|
 :pattern ( (Tclass._System.array? |#$arg@@5|))
)))
(assert (forall ((_System.array$arg@@1 T@U) ) (!  (=> (= (type _System.array$arg@@1) TyType) (= (Tag (Tclass._System.array _System.array$arg@@1)) Tagclass._System.array))
 :qid |seqgeneratedbpl.1795:15|
 :skolemid |334|
 :pattern ( (Tclass._System.array _System.array$arg@@1))
)))
(assert (forall ((arg0@@140 T@U) ) (! (= (type (Tclass._System.array_0 arg0@@140)) TyType)
 :qid |funType:Tclass._System.array_0|
 :pattern ( (Tclass._System.array_0 arg0@@140))
)))
(assert (forall ((_System.array$arg@@2 T@U) ) (!  (=> (= (type _System.array$arg@@2) TyType) (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@2)) _System.array$arg@@2))
 :qid |seqgeneratedbpl.1802:15|
 :skolemid |335|
 :pattern ( (Tclass._System.array _System.array$arg@@2))
)))
(assert (forall ((|#$R@@12| T@U) ) (!  (=> (= (type |#$R@@12|) TyType) (= (Tag (Tclass._System.___hFunc0 |#$R@@12|)) Tagclass._System.___hFunc0))
 :qid |seqgeneratedbpl.1831:15|
 :skolemid |339|
 :pattern ( (Tclass._System.___hFunc0 |#$R@@12|))
)))
(assert (forall ((arg0@@141 T@U) ) (! (= (type (Tclass._System.___hFunc0_0 arg0@@141)) TyType)
 :qid |funType:Tclass._System.___hFunc0_0|
 :pattern ( (Tclass._System.___hFunc0_0 arg0@@141))
)))
(assert (forall ((|#$R@@13| T@U) ) (!  (=> (= (type |#$R@@13|) TyType) (= (Tclass._System.___hFunc0_0 (Tclass._System.___hFunc0 |#$R@@13|)) |#$R@@13|))
 :qid |seqgeneratedbpl.1838:15|
 :skolemid |340|
 :pattern ( (Tclass._System.___hFunc0 |#$R@@13|))
)))
(assert (forall ((|#$R@@14| T@U) ) (!  (=> (= (type |#$R@@14|) TyType) (= (Tag (Tclass._System.___hPartialFunc0 |#$R@@14|)) Tagclass._System.___hPartialFunc0))
 :qid |seqgeneratedbpl.2002:15|
 :skolemid |366|
 :pattern ( (Tclass._System.___hPartialFunc0 |#$R@@14|))
)))
(assert (forall ((arg0@@142 T@U) ) (! (= (type (Tclass._System.___hPartialFunc0_0 arg0@@142)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc0_0|
 :pattern ( (Tclass._System.___hPartialFunc0_0 arg0@@142))
)))
(assert (forall ((|#$R@@15| T@U) ) (!  (=> (= (type |#$R@@15|) TyType) (= (Tclass._System.___hPartialFunc0_0 (Tclass._System.___hPartialFunc0 |#$R@@15|)) |#$R@@15|))
 :qid |seqgeneratedbpl.2009:15|
 :skolemid |367|
 :pattern ( (Tclass._System.___hPartialFunc0 |#$R@@15|))
)))
(assert (forall ((|#$R@@16| T@U) ) (!  (=> (= (type |#$R@@16|) TyType) (= (Tag (Tclass._System.___hTotalFunc0 |#$R@@16|)) Tagclass._System.___hTotalFunc0))
 :qid |seqgeneratedbpl.2038:15|
 :skolemid |371|
 :pattern ( (Tclass._System.___hTotalFunc0 |#$R@@16|))
)))
(assert (forall ((arg0@@143 T@U) ) (! (= (type (Tclass._System.___hTotalFunc0_0 arg0@@143)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc0_0|
 :pattern ( (Tclass._System.___hTotalFunc0_0 arg0@@143))
)))
(assert (forall ((|#$R@@17| T@U) ) (!  (=> (= (type |#$R@@17|) TyType) (= (Tclass._System.___hTotalFunc0_0 (Tclass._System.___hTotalFunc0 |#$R@@17|)) |#$R@@17|))
 :qid |seqgeneratedbpl.2045:15|
 :skolemid |372|
 :pattern ( (Tclass._System.___hTotalFunc0 |#$R@@17|))
)))
(assert (forall ((x@@33 T@U) ) (! (let ((T@@109 (type x@@33)))
(= ($Unbox T@@109 ($Box x@@33)) x@@33))
 :qid |seqgeneratedbpl.184:18|
 :skolemid |25|
 :pattern ( ($Box x@@33))
)))
(assert (forall ((r@@7 T@U) ) (! (= (|Set#Card| (|Set#Singleton| r@@7)) 1)
 :qid |seqgeneratedbpl.740:18|
 :skolemid |123|
 :pattern ( (|Set#Card| (|Set#Singleton| r@@7)))
)))
(assert (forall ((t@@28 T@U) ) (! (= (|Seq#Length| (|Seq#Singleton| t@@28)) 1)
 :qid |seqgeneratedbpl.1149:18|
 :skolemid |219|
 :pattern ( (|Seq#Length| (|Seq#Singleton| t@@28)))
)))
(assert (forall ((v@@23 T@U) (t0@@31 T@U) (t1@@15 T@U) ) (!  (=> (and (and (= (type v@@23) (MapType BoxType BoxType)) (= (type t0@@31) TyType)) (= (type t1@@15) TyType)) (= ($Is v@@23 (TMap t0@@31 t1@@15)) (forall ((bx@@22 T@U) ) (!  (=> (and (= (type bx@@22) BoxType) (U_2_bool (MapType0Select (|Map#Domain| v@@23) bx@@22))) (and ($IsBox (MapType0Select (|Map#Elements| v@@23) bx@@22) t1@@15) ($IsBox bx@@22 t0@@31)))
 :qid |seqgeneratedbpl.324:19|
 :skolemid |65|
 :pattern ( (MapType0Select (|Map#Elements| v@@23) bx@@22))
 :pattern ( (MapType0Select (|Map#Domain| v@@23) bx@@22))
))))
 :qid |seqgeneratedbpl.321:15|
 :skolemid |66|
 :pattern ( ($Is v@@23 (TMap t0@@31 t1@@15)))
)))
(assert (forall ((v@@24 T@U) (t0@@32 T@U) (t1@@16 T@U) ) (!  (=> (and (and (= (type v@@24) (IMapType BoxType BoxType)) (= (type t0@@32) TyType)) (= (type t1@@16) TyType)) (= ($Is v@@24 (TIMap t0@@32 t1@@16)) (forall ((bx@@23 T@U) ) (!  (=> (and (= (type bx@@23) BoxType) (U_2_bool (MapType0Select (|IMap#Domain| v@@24) bx@@23))) (and ($IsBox (MapType0Select (|IMap#Elements| v@@24) bx@@23) t1@@16) ($IsBox bx@@23 t0@@32)))
 :qid |seqgeneratedbpl.339:19|
 :skolemid |69|
 :pattern ( (MapType0Select (|IMap#Elements| v@@24) bx@@23))
 :pattern ( (MapType0Select (|IMap#Domain| v@@24) bx@@23))
))))
 :qid |seqgeneratedbpl.336:15|
 :skolemid |70|
 :pattern ( ($Is v@@24 (TIMap t0@@32 t1@@16)))
)))
(assert (forall ((h@@18 T@U) (i@@17 Int) (v@@25 T@U) (a@@74 T@U) ) (!  (=> (and (and (and (= (type h@@18) (MapType1Type refType)) (= (type v@@25) BoxType)) (= (type a@@74) refType)) (and (<= 0 i@@17) (< i@@17 (_System.array.Length a@@74)))) (= (|Seq#FromArray| (MapType1Store h@@18 a@@74 (IndexField i@@17) v@@25) a@@74) (|Seq#Update| (|Seq#FromArray| h@@18 a@@74) i@@17 v@@25)))
 :qid |seqgeneratedbpl.1323:15|
 :skolemid |255|
 :pattern ( (|Seq#FromArray| (MapType1Store h@@18 a@@74 (IndexField i@@17) v@@25) a@@74))
)))
(assert (forall ((r@@8 T@U) ) (! (U_2_bool (MapType0Select (|Set#Singleton| r@@8) r@@8))
 :qid |seqgeneratedbpl.734:18|
 :skolemid |121|
 :pattern ( (|Set#Singleton| r@@8))
)))
(assert (forall ((x@@34 Int) (y@@13 Int) ) (! (= (INTERNAL_lt_boogie x@@34 y@@13) (< x@@34 y@@13))
 :qid |seqgeneratedbpl.1598:15|
 :skolemid |307|
 :pattern ( (INTERNAL_lt_boogie x@@34 y@@13))
)))
(assert (forall ((x@@35 Int) (y@@14 Int) ) (! (= (INTERNAL_gt_boogie x@@35 y@@14) (> x@@35 y@@14))
 :qid |seqgeneratedbpl.1610:15|
 :skolemid |309|
 :pattern ( (INTERNAL_gt_boogie x@@35 y@@14))
)))
(assert (forall ((s@@27 T@U) (i@@18 Int) (v@@26 T@U) (x@@36 T@U) ) (! (let ((T@@110 (type v@@26)))
 (=> (and (and (= (type s@@27) (SeqType T@@110)) (= (type x@@36) T@@110)) (and (<= 0 i@@18) (< i@@18 (|Seq#Length| s@@27)))) (= (U_2_int (MapType0Select (|MultiSet#FromSeq| (|Seq#Update| s@@27 i@@18 v@@26)) x@@36)) (U_2_int (MapType0Select (|MultiSet#Union| (|MultiSet#Difference| (|MultiSet#FromSeq| s@@27) (|MultiSet#Singleton| (|Seq#Index| s@@27 i@@18))) (|MultiSet#Singleton| v@@26)) x@@36)))))
 :qid |seqgeneratedbpl.1117:18|
 :skolemid |212|
 :pattern ( (MapType0Select (|MultiSet#FromSeq| (|Seq#Update| s@@27 i@@18 v@@26)) x@@36))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (!  (=> (and (= (type |a#6#0#0|) BoxType) (= (type |a#6#1#0|) BoxType)) (< (BoxRank |a#6#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))))
 :qid |seqgeneratedbpl.2498:15|
 :skolemid |437|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (!  (=> (and (= (type |a#8#0#0|) BoxType) (= (type |a#8#1#0|) BoxType)) (< (BoxRank |a#8#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#8#0#0| |a#8#1#0|))))
 :qid |seqgeneratedbpl.2508:15|
 :skolemid |439|
 :pattern ( (|#_System._tuple#2._#Make2| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((a@@75 T@U) (b@@46 T@U) ) (! (let ((T@@111 (MapType0TypeInv0 (type a@@75))))
 (=> (and (= (type a@@75) (MapType0Type T@@111 boolType)) (= (type b@@46) (MapType0Type T@@111 boolType))) (= (|Set#Union| a@@75 (|Set#Union| a@@75 b@@46)) (|Set#Union| a@@75 b@@46))))
 :qid |seqgeneratedbpl.794:18|
 :skolemid |135|
 :pattern ( (|Set#Union| a@@75 (|Set#Union| a@@75 b@@46)))
)))
(assert (forall ((a@@76 T@U) (b@@47 T@U) ) (! (let ((T@@112 (MapType0TypeInv0 (type a@@76))))
 (=> (and (= (type a@@76) (MapType0Type T@@112 boolType)) (= (type b@@47) (MapType0Type T@@112 boolType))) (= (|Set#Intersection| a@@76 (|Set#Intersection| a@@76 b@@47)) (|Set#Intersection| a@@76 b@@47))))
 :qid |seqgeneratedbpl.802:18|
 :skolemid |137|
 :pattern ( (|Set#Intersection| a@@76 (|Set#Intersection| a@@76 b@@47)))
)))
(assert (forall ((a@@77 T@U) (b@@48 T@U) ) (! (let ((T@@113 (MapType0TypeInv0 (type a@@77))))
 (=> (and (= (type a@@77) (MapType0Type T@@113 boolType)) (= (type b@@48) (MapType0Type T@@113 boolType))) (= (|ISet#Union| a@@77 (|ISet#Union| a@@77 b@@48)) (|ISet#Union| a@@77 b@@48))))
 :qid |seqgeneratedbpl.897:18|
 :skolemid |159|
 :pattern ( (|ISet#Union| a@@77 (|ISet#Union| a@@77 b@@48)))
)))
(assert (forall ((a@@78 T@U) (b@@49 T@U) ) (! (let ((T@@114 (MapType0TypeInv0 (type a@@78))))
 (=> (and (= (type a@@78) (MapType0Type T@@114 boolType)) (= (type b@@49) (MapType0Type T@@114 boolType))) (= (|ISet#Intersection| a@@78 (|ISet#Intersection| a@@78 b@@49)) (|ISet#Intersection| a@@78 b@@49))))
 :qid |seqgeneratedbpl.905:18|
 :skolemid |161|
 :pattern ( (|ISet#Intersection| a@@78 (|ISet#Intersection| a@@78 b@@49)))
)))
(assert (forall ((a@@79 T@U) (b@@50 T@U) ) (! (let ((T@@115 (MapType0TypeInv0 (type a@@79))))
 (=> (and (= (type a@@79) (MapType0Type T@@115 intType)) (= (type b@@50) (MapType0Type T@@115 intType))) (= (|MultiSet#Intersection| a@@79 (|MultiSet#Intersection| a@@79 b@@50)) (|MultiSet#Intersection| a@@79 b@@50))))
 :qid |seqgeneratedbpl.1037:18|
 :skolemid |194|
 :pattern ( (|MultiSet#Intersection| a@@79 (|MultiSet#Intersection| a@@79 b@@50)))
)))
(assert (forall ((|#$T0@@18| T@U) (|#$R@@18| T@U) (|f#0@@3| T@U) ) (!  (=> (and (and (= (type |#$T0@@18|) TyType) (= (type |#$R@@18|) TyType)) (= (type |f#0@@3|) HandleTypeType)) (= ($Is |f#0@@3| (Tclass._System.___hTotalFunc1 |#$T0@@18| |#$R@@18|))  (and ($Is |f#0@@3| (Tclass._System.___hPartialFunc1 |#$T0@@18| |#$R@@18|)) (forall ((|x0#0| T@U) ) (!  (=> (and (= (type |x0#0|) BoxType) ($IsBox |x0#0| |#$T0@@18|)) (Requires1 |#$T0@@18| |#$R@@18| $OneHeap |f#0@@3| |x0#0|))
 :qid |seqgeneratedbpl.2380:19|
 :skolemid |418|
 :no-pattern (type |x0#0|)
 :no-pattern (U_2_int |x0#0|)
 :no-pattern (U_2_bool |x0#0|)
)))))
 :qid |seqgeneratedbpl.2376:15|
 :skolemid |419|
 :pattern ( ($Is |f#0@@3| (Tclass._System.___hTotalFunc1 |#$T0@@18| |#$R@@18|)))
)))
(assert (forall ((|#$T0@@19| T@U) (|#$R@@19| T@U) (|f#0@@4| T@U) ) (!  (=> (and (and (= (type |#$T0@@19|) TyType) (= (type |#$R@@19|) TyType)) (= (type |f#0@@4|) HandleTypeType)) (= ($Is |f#0@@4| (Tclass._System.___hPartialFunc1 |#$T0@@19| |#$R@@19|))  (and ($Is |f#0@@4| (Tclass._System.___hFunc1 |#$T0@@19| |#$R@@19|)) (forall ((|x0#0@@0| T@U) ) (!  (=> (and (= (type |x0#0@@0|) BoxType) ($IsBox |x0#0@@0| |#$T0@@19|)) (|Set#Equal| (Reads1 |#$T0@@19| |#$R@@19| $OneHeap |f#0@@4| |x0#0@@0|) (|Set#Empty| BoxType)))
 :qid |seqgeneratedbpl.2334:19|
 :skolemid |411|
 :no-pattern (type |x0#0@@0|)
 :no-pattern (U_2_int |x0#0@@0|)
 :no-pattern (U_2_bool |x0#0@@0|)
)))))
 :qid |seqgeneratedbpl.2330:15|
 :skolemid |412|
 :pattern ( ($Is |f#0@@4| (Tclass._System.___hPartialFunc1 |#$T0@@19| |#$R@@19|)))
)))
(assert (forall ((m@@25 T@U) (u@@11 T@U) (|u'| T@U) (v@@27 T@U) ) (! (let ((V@@24 (type v@@27)))
(let ((U@@24 (type u@@11)))
 (=> (and (= (type m@@25) (MapType U@@24 V@@24)) (= (type |u'|) U@@24)) (and (=> (= |u'| u@@11) (and (U_2_bool (MapType0Select (|Map#Domain| (|Map#Build| m@@25 u@@11 v@@27)) |u'|)) (= (MapType0Select (|Map#Elements| (|Map#Build| m@@25 u@@11 v@@27)) |u'|) v@@27))) (=> (not (= |u'| u@@11)) (and (= (U_2_bool (MapType0Select (|Map#Domain| (|Map#Build| m@@25 u@@11 v@@27)) |u'|)) (U_2_bool (MapType0Select (|Map#Domain| m@@25) |u'|))) (= (MapType0Select (|Map#Elements| (|Map#Build| m@@25 u@@11 v@@27)) |u'|) (MapType0Select (|Map#Elements| m@@25) |u'|))))))))
 :qid |seqgeneratedbpl.1460:20|
 :skolemid |281|
 :pattern ( (MapType0Select (|Map#Domain| (|Map#Build| m@@25 u@@11 v@@27)) |u'|))
 :pattern ( (MapType0Select (|Map#Elements| (|Map#Build| m@@25 u@@11 v@@27)) |u'|))
)))
(assert (forall ((arg0@@144 T@U) (arg1@@68 T@U) (arg2@@23 T@U) ) (! (let ((V@@25 (type arg2@@23)))
(let ((U@@25 (type arg1@@68)))
(= (type (|IMap#Build| arg0@@144 arg1@@68 arg2@@23)) (IMapType U@@25 V@@25))))
 :qid |funType:IMap#Build|
 :pattern ( (|IMap#Build| arg0@@144 arg1@@68 arg2@@23))
)))
(assert (forall ((m@@26 T@U) (u@@12 T@U) (|u'@@0| T@U) (v@@28 T@U) ) (! (let ((V@@26 (type v@@28)))
(let ((U@@26 (type u@@12)))
 (=> (and (= (type m@@26) (IMapType U@@26 V@@26)) (= (type |u'@@0|) U@@26)) (and (=> (= |u'@@0| u@@12) (and (U_2_bool (MapType0Select (|IMap#Domain| (|IMap#Build| m@@26 u@@12 v@@28)) |u'@@0|)) (= (MapType0Select (|IMap#Elements| (|IMap#Build| m@@26 u@@12 v@@28)) |u'@@0|) v@@28))) (=> (not (= |u'@@0| u@@12)) (and (= (U_2_bool (MapType0Select (|IMap#Domain| (|IMap#Build| m@@26 u@@12 v@@28)) |u'@@0|)) (U_2_bool (MapType0Select (|IMap#Domain| m@@26) |u'@@0|))) (= (MapType0Select (|IMap#Elements| (|IMap#Build| m@@26 u@@12 v@@28)) |u'@@0|) (MapType0Select (|IMap#Elements| m@@26) |u'@@0|))))))))
 :qid |seqgeneratedbpl.1543:20|
 :skolemid |297|
 :pattern ( (MapType0Select (|IMap#Domain| (|IMap#Build| m@@26 u@@12 v@@28)) |u'@@0|))
 :pattern ( (MapType0Select (|IMap#Elements| (|IMap#Build| m@@26 u@@12 v@@28)) |u'@@0|))
)))
(assert (forall ((arg0@@145 T@U) ) (! (= (type ($LS arg0@@145)) LayerTypeType)
 :qid |funType:$LS|
 :pattern ( ($LS arg0@@145))
)))
(assert (forall ((f@@21 T@U) (ly@@0 T@U) ) (! (let ((A@@1 (MapType0TypeInv1 (type f@@21))))
 (=> (and (= (type f@@21) (MapType0Type LayerTypeType A@@1)) (= (type ly@@0) LayerTypeType)) (= (AtLayer f@@21 ($LS ly@@0)) (AtLayer f@@21 ly@@0))))
 :qid |seqgeneratedbpl.537:18|
 :skolemid |95|
 :pattern ( (AtLayer f@@21 ($LS ly@@0)))
)))
(assert (forall ((bx@@24 T@U) (s@@28 T@U) (t@@29 T@U) ) (!  (=> (and (and (and (= (type bx@@24) BoxType) (= (type s@@28) TyType)) (= (type t@@29) TyType)) ($IsBox bx@@24 (TMap s@@28 t@@29))) (and (= ($Box ($Unbox (MapType BoxType BoxType) bx@@24)) bx@@24) ($Is ($Unbox (MapType BoxType BoxType) bx@@24) (TMap s@@28 t@@29))))
 :qid |seqgeneratedbpl.226:15|
 :skolemid |34|
 :pattern ( ($IsBox bx@@24 (TMap s@@28 t@@29)))
)))
(assert (forall ((bx@@25 T@U) (s@@29 T@U) (t@@30 T@U) ) (!  (=> (and (and (and (= (type bx@@25) BoxType) (= (type s@@29) TyType)) (= (type t@@30) TyType)) ($IsBox bx@@25 (TIMap s@@29 t@@30))) (and (= ($Box ($Unbox (IMapType BoxType BoxType) bx@@25)) bx@@25) ($Is ($Unbox (IMapType BoxType BoxType) bx@@25) (TIMap s@@29 t@@30))))
 :qid |seqgeneratedbpl.231:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@25 (TIMap s@@29 t@@30)))
)))
(assert (forall ((|#$T0@@20| T@U) (|#$R@@20| T@U) (bx@@26 T@U) ) (!  (=> (and (and (and (= (type |#$T0@@20|) TyType) (= (type |#$R@@20|) TyType)) (= (type bx@@26) BoxType)) ($IsBox bx@@26 (Tclass._System.___hFunc1 |#$T0@@20| |#$R@@20|))) (and (= ($Box ($Unbox HandleTypeType bx@@26)) bx@@26) ($Is ($Unbox HandleTypeType bx@@26) (Tclass._System.___hFunc1 |#$T0@@20| |#$R@@20|))))
 :qid |seqgeneratedbpl.2094:15|
 :skolemid |379|
 :pattern ( ($IsBox bx@@26 (Tclass._System.___hFunc1 |#$T0@@20| |#$R@@20|)))
)))
(assert (forall ((|#$T0@@21| T@U) (|#$R@@21| T@U) (bx@@27 T@U) ) (!  (=> (and (and (and (= (type |#$T0@@21|) TyType) (= (type |#$R@@21|) TyType)) (= (type bx@@27) BoxType)) ($IsBox bx@@27 (Tclass._System.___hPartialFunc1 |#$T0@@21| |#$R@@21|))) (and (= ($Box ($Unbox HandleTypeType bx@@27)) bx@@27) ($Is ($Unbox HandleTypeType bx@@27) (Tclass._System.___hPartialFunc1 |#$T0@@21| |#$R@@21|))))
 :qid |seqgeneratedbpl.2323:15|
 :skolemid |410|
 :pattern ( ($IsBox bx@@27 (Tclass._System.___hPartialFunc1 |#$T0@@21| |#$R@@21|)))
)))
(assert (forall ((|#$T0@@22| T@U) (|#$R@@22| T@U) (bx@@28 T@U) ) (!  (=> (and (and (and (= (type |#$T0@@22|) TyType) (= (type |#$R@@22|) TyType)) (= (type bx@@28) BoxType)) ($IsBox bx@@28 (Tclass._System.___hTotalFunc1 |#$T0@@22| |#$R@@22|))) (and (= ($Box ($Unbox HandleTypeType bx@@28)) bx@@28) ($Is ($Unbox HandleTypeType bx@@28) (Tclass._System.___hTotalFunc1 |#$T0@@22| |#$R@@22|))))
 :qid |seqgeneratedbpl.2369:15|
 :skolemid |417|
 :pattern ( ($IsBox bx@@28 (Tclass._System.___hTotalFunc1 |#$T0@@22| |#$R@@22|)))
)))
(assert (forall ((|#$T0@@23| T@U) (|#$T1@@7| T@U) (bx@@29 T@U) ) (!  (=> (and (and (and (= (type |#$T0@@23|) TyType) (= (type |#$T1@@7|) TyType)) (= (type bx@@29) BoxType)) ($IsBox bx@@29 (Tclass._System.Tuple2 |#$T0@@23| |#$T1@@7|))) (and (= ($Box ($Unbox DatatypeTypeType bx@@29)) bx@@29) ($Is ($Unbox DatatypeTypeType bx@@29) (Tclass._System.Tuple2 |#$T0@@23| |#$T1@@7|))))
 :qid |seqgeneratedbpl.2441:15|
 :skolemid |428|
 :pattern ( ($IsBox bx@@29 (Tclass._System.Tuple2 |#$T0@@23| |#$T1@@7|)))
)))
(assert (forall ((a@@80 T@U) (b@@51 T@U) ) (! (let ((T@@116 (MapType0TypeInv0 (type a@@80))))
 (=> (and (= (type a@@80) (MapType0Type T@@116 intType)) (= (type b@@51) (MapType0Type T@@116 intType))) (= (|MultiSet#Disjoint| a@@80 b@@51) (forall ((o@@42 T@U) ) (!  (=> (= (type o@@42) T@@116) (or (= (U_2_int (MapType0Select a@@80 o@@42)) 0) (= (U_2_int (MapType0Select b@@51 o@@42)) 0)))
 :qid |seqgeneratedbpl.1082:19|
 :skolemid |203|
 :pattern ( (MapType0Select a@@80 o@@42))
 :pattern ( (MapType0Select b@@51 o@@42))
)))))
 :qid |seqgeneratedbpl.1079:18|
 :skolemid |204|
 :pattern ( (|MultiSet#Disjoint| a@@80 b@@51))
)))
(assert (forall ((f@@22 T@U) (t0@@33 T@U) (h@@19 T@U) ) (!  (=> (and (and (and (= (type f@@22) HandleTypeType) (= (type t0@@33) TyType)) (= (type h@@19) (MapType1Type refType))) ($IsGoodHeap h@@19)) (= ($IsAlloc f@@22 (Tclass._System.___hFunc0 t0@@33) h@@19)  (=> (Requires0 t0@@33 h@@19 f@@22) (forall ((r@@9 T@U) ) (!  (=> (= (type r@@9) refType) (=> (and (not (= r@@9 null)) (U_2_bool (MapType0Select (Reads0 t0@@33 h@@19 f@@22) ($Box r@@9)))) (U_2_bool (MapType1Select h@@19 r@@9 alloc))))
 :qid |seqgeneratedbpl.1988:22|
 :skolemid |363|
 :pattern ( (MapType0Select (Reads0 t0@@33 h@@19 f@@22) ($Box r@@9)))
)))))
 :qid |seqgeneratedbpl.1983:15|
 :skolemid |364|
 :pattern ( ($IsAlloc f@@22 (Tclass._System.___hFunc0 t0@@33) h@@19))
)))
(assert (forall ((o@@43 T@U) ) (! (let ((T@@117 (type o@@43)))
 (not (U_2_bool (MapType0Select (|Set#Empty| T@@117) o@@43))))
 :qid |seqgeneratedbpl.725:18|
 :skolemid |118|
 :pattern ( (let ((T@@117 (type o@@43)))
(MapType0Select (|Set#Empty| T@@117) o@@43)))
)))
(assert (forall ((T@@118 T@T) ) (! (= (type (|ISet#Empty| T@@118)) (MapType0Type T@@118 boolType))
 :qid |funType:ISet#Empty|
 :pattern ( (|ISet#Empty| T@@118))
)))
(assert (forall ((o@@44 T@U) ) (! (let ((T@@119 (type o@@44)))
 (not (U_2_bool (MapType0Select (|ISet#Empty| T@@119) o@@44))))
 :qid |seqgeneratedbpl.853:18|
 :skolemid |149|
 :pattern ( (let ((T@@119 (type o@@44)))
(MapType0Select (|ISet#Empty| T@@119) o@@44)))
)))
(assert (forall ((t0@@34 T@U) (t1@@17 T@U) (heap@@6 T@U) (f@@23 T@U) (bx0@@12 T@U) ) (!  (=> (and (and (and (and (and (= (type t0@@34) TyType) (= (type t1@@17) TyType)) (= (type heap@@6) (MapType1Type refType))) (= (type f@@23) HandleTypeType)) (= (type bx0@@12) BoxType)) (and (and ($IsGoodHeap heap@@6) ($IsBox bx0@@12 t0@@34)) ($Is f@@23 (Tclass._System.___hFunc1 t0@@34 t1@@17)))) (= (|Set#Equal| (Reads1 t0@@34 t1@@17 $OneHeap f@@23 bx0@@12) (|Set#Empty| BoxType)) (|Set#Equal| (Reads1 t0@@34 t1@@17 heap@@6 f@@23 bx0@@12) (|Set#Empty| BoxType))))
 :qid |seqgeneratedbpl.2240:15|
 :skolemid |395|
 :pattern ( (Reads1 t0@@34 t1@@17 $OneHeap f@@23 bx0@@12) ($IsGoodHeap heap@@6))
 :pattern ( (Reads1 t0@@34 t1@@17 heap@@6 f@@23 bx0@@12))
)))
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert  (not ($IsGhostField alloc)))
(assert (forall ((s@@30 T@U) (i@@19 Int) (v@@29 T@U) ) (! (let ((T@@120 (type v@@29)))
 (=> (= (type s@@30) (SeqType T@@120)) (=> (and (<= 0 i@@19) (< i@@19 (|Seq#Length| s@@30))) (= (|Seq#Length| (|Seq#Update| s@@30 i@@19 v@@29)) (|Seq#Length| s@@30)))))
 :qid |seqgeneratedbpl.1201:18|
 :skolemid |228|
 :pattern ( (|Seq#Length| (|Seq#Update| s@@30 i@@19 v@@29)))
)))
(assert (forall ((x@@37 Int) (y@@15 Int) ) (! (= (INTERNAL_mod_boogie x@@37 y@@15) (mod x@@37 y@@15))
 :qid |seqgeneratedbpl.1592:15|
 :skolemid |306|
 :pattern ( (INTERNAL_mod_boogie x@@37 y@@15))
)))
(assert (forall ((x@@38 Int) (y@@16 Int) ) (! (= (Mod x@@38 y@@16) (mod x@@38 y@@16))
 :qid |seqgeneratedbpl.1630:15|
 :skolemid |313|
 :pattern ( (Mod x@@38 y@@16))
)))
(assert (forall ((|#$R@@23| T@U) (|f#0@@5| T@U) ) (!  (=> (and (= (type |#$R@@23|) TyType) (= (type |f#0@@5|) HandleTypeType)) (= ($Is |f#0@@5| (Tclass._System.___hTotalFunc0 |#$R@@23|))  (and ($Is |f#0@@5| (Tclass._System.___hPartialFunc0 |#$R@@23|)) (Requires0 |#$R@@23| $OneHeap |f#0@@5|))))
 :qid |seqgeneratedbpl.2059:15|
 :skolemid |374|
 :pattern ( ($Is |f#0@@5| (Tclass._System.___hTotalFunc0 |#$R@@23|)))
)))
(assert (forall ((h@@20 T@U) (a@@81 T@U) ) (!  (=> (and (= (type h@@20) (MapType1Type refType)) (= (type a@@81) refType)) (= (|Seq#Length| (|Seq#FromArray| h@@20 a@@81)) (_System.array.Length a@@81)))
 :qid |seqgeneratedbpl.1302:15|
 :skolemid |250|
 :pattern ( (|Seq#Length| (|Seq#FromArray| h@@20 a@@81)))
)))
(assert  (and (and (forall ((arg0@@146 T@U) (arg1@@69 T@U) ) (! (= (type (TypeTuple arg0@@146 arg1@@69)) ClassNameType)
 :qid |funType:TypeTuple|
 :pattern ( (TypeTuple arg0@@146 arg1@@69))
)) (forall ((arg0@@147 T@U) ) (! (= (type (TypeTupleCar arg0@@147)) ClassNameType)
 :qid |funType:TypeTupleCar|
 :pattern ( (TypeTupleCar arg0@@147))
))) (forall ((arg0@@148 T@U) ) (! (= (type (TypeTupleCdr arg0@@148)) ClassNameType)
 :qid |funType:TypeTupleCdr|
 :pattern ( (TypeTupleCdr arg0@@148))
))))
(assert (forall ((a@@82 T@U) (b@@52 T@U) ) (!  (=> (and (= (type a@@82) ClassNameType) (= (type b@@52) ClassNameType)) (and (= (TypeTupleCar (TypeTuple a@@82 b@@52)) a@@82) (= (TypeTupleCdr (TypeTuple a@@82 b@@52)) b@@52)))
 :qid |seqgeneratedbpl.373:15|
 :skolemid |73|
 :pattern ( (TypeTuple a@@82 b@@52))
)))
(assert (forall ((arg0@@149 T@U) ) (! (let ((T@@121 (FieldTypeInv0 (type arg0@@149))))
(= (type (MultiIndexField_Inverse0 arg0@@149)) (FieldType T@@121)))
 :qid |funType:MultiIndexField_Inverse0|
 :pattern ( (MultiIndexField_Inverse0 arg0@@149))
)))
(assert (forall ((f@@24 T@U) (i@@20 Int) ) (!  (=> (= (type f@@24) (FieldType BoxType)) (and (= (MultiIndexField_Inverse0 (MultiIndexField f@@24 i@@20)) f@@24) (= (MultiIndexField_Inverse1 (MultiIndexField f@@24 i@@20)) i@@20)))
 :qid |seqgeneratedbpl.563:15|
 :skolemid |99|
 :pattern ( (MultiIndexField f@@24 i@@20))
)))
(assert  (and (forall ((arg0@@150 T@U) ) (! (let ((T@@122 (SeqTypeInv0 (type arg0@@150))))
(= (type (|Seq#Build_inv0| arg0@@150)) (SeqType T@@122)))
 :qid |funType:Seq#Build_inv0|
 :pattern ( (|Seq#Build_inv0| arg0@@150))
)) (forall ((arg0@@151 T@U) ) (! (let ((T@@123 (SeqTypeInv0 (type arg0@@151))))
(= (type (|Seq#Build_inv1| arg0@@151)) T@@123))
 :qid |funType:Seq#Build_inv1|
 :pattern ( (|Seq#Build_inv1| arg0@@151))
))))
(assert (forall ((s@@31 T@U) (val@@14 T@U) ) (! (let ((T@@124 (type val@@14)))
 (=> (= (type s@@31) (SeqType T@@124)) (and (= (|Seq#Build_inv0| (|Seq#Build| s@@31 val@@14)) s@@31) (= (|Seq#Build_inv1| (|Seq#Build| s@@31 val@@14)) val@@14))))
 :qid |seqgeneratedbpl.1159:18|
 :skolemid |220|
 :pattern ( (|Seq#Build| s@@31 val@@14))
)))
(assert (forall ((m@@27 T@U) (|m'@@2| T@U) ) (! (let ((V@@27 (MapTypeInv1 (type m@@27))))
(let ((U@@27 (MapTypeInv0 (type m@@27))))
 (=> (and (= (type m@@27) (MapType U@@27 V@@27)) (= (type |m'@@2|) (MapType U@@27 V@@27))) (= (|Map#Equal| m@@27 |m'@@2|)  (and (forall ((u@@13 T@U) ) (!  (=> (= (type u@@13) U@@27) (= (U_2_bool (MapType0Select (|Map#Domain| m@@27) u@@13)) (U_2_bool (MapType0Select (|Map#Domain| |m'@@2|) u@@13))))
 :qid |seqgeneratedbpl.1481:19|
 :skolemid |284|
 :no-pattern (type u@@13)
 :no-pattern (U_2_int u@@13)
 :no-pattern (U_2_bool u@@13)
)) (forall ((u@@14 T@U) ) (!  (=> (and (= (type u@@14) U@@27) (U_2_bool (MapType0Select (|Map#Domain| m@@27) u@@14))) (= (MapType0Select (|Map#Elements| m@@27) u@@14) (MapType0Select (|Map#Elements| |m'@@2|) u@@14)))
 :qid |seqgeneratedbpl.1482:19|
 :skolemid |285|
 :no-pattern (type u@@14)
 :no-pattern (U_2_int u@@14)
 :no-pattern (U_2_bool u@@14)
)))))))
 :qid |seqgeneratedbpl.1478:20|
 :skolemid |286|
 :pattern ( (|Map#Equal| m@@27 |m'@@2|))
)))
(assert (forall ((m@@28 T@U) (|m'@@3| T@U) ) (! (let ((V@@28 (IMapTypeInv1 (type m@@28))))
(let ((U@@28 (IMapTypeInv0 (type m@@28))))
 (=> (and (= (type m@@28) (IMapType U@@28 V@@28)) (= (type |m'@@3|) (IMapType U@@28 V@@28))) (= (|IMap#Equal| m@@28 |m'@@3|)  (and (forall ((u@@15 T@U) ) (!  (=> (= (type u@@15) U@@28) (= (U_2_bool (MapType0Select (|IMap#Domain| m@@28) u@@15)) (U_2_bool (MapType0Select (|IMap#Domain| |m'@@3|) u@@15))))
 :qid |seqgeneratedbpl.1558:19|
 :skolemid |298|
 :no-pattern (type u@@15)
 :no-pattern (U_2_int u@@15)
 :no-pattern (U_2_bool u@@15)
)) (forall ((u@@16 T@U) ) (!  (=> (and (= (type u@@16) U@@28) (U_2_bool (MapType0Select (|IMap#Domain| m@@28) u@@16))) (= (MapType0Select (|IMap#Elements| m@@28) u@@16) (MapType0Select (|IMap#Elements| |m'@@3|) u@@16)))
 :qid |seqgeneratedbpl.1559:19|
 :skolemid |299|
 :no-pattern (type u@@16)
 :no-pattern (U_2_int u@@16)
 :no-pattern (U_2_bool u@@16)
)))))))
 :qid |seqgeneratedbpl.1555:20|
 :skolemid |300|
 :pattern ( (|IMap#Equal| m@@28 |m'@@3|))
)))
(assert (forall ((o@@45 T@U) (m@@29 Int) (n@@14 Int) ) (!  (=> (= (type o@@45) BoxType) (=> (and (<= 0 m@@29) (<= 0 n@@14)) (= (|ORD#Plus| (|ORD#Plus| o@@45 (|ORD#FromNat| m@@29)) (|ORD#FromNat| n@@14)) (|ORD#Plus| o@@45 (|ORD#FromNat| (+ m@@29 n@@14))))))
 :qid |seqgeneratedbpl.487:15|
 :skolemid |90|
 :pattern ( (|ORD#Plus| (|ORD#Plus| o@@45 (|ORD#FromNat| m@@29)) (|ORD#FromNat| n@@14)))
)))
(assert (forall ((x@@39 Int) (y@@17 Int) ) (! (= (INTERNAL_le_boogie x@@39 y@@17) (<= x@@39 y@@17))
 :qid |seqgeneratedbpl.1604:15|
 :skolemid |308|
 :pattern ( (INTERNAL_le_boogie x@@39 y@@17))
)))
(assert (forall ((x@@40 Int) (y@@18 Int) ) (! (= (INTERNAL_ge_boogie x@@40 y@@18) (>= x@@40 y@@18))
 :qid |seqgeneratedbpl.1616:15|
 :skolemid |310|
 :pattern ( (INTERNAL_ge_boogie x@@40 y@@18))
)))
(assert (forall ((x@@41 Int) (y@@19 Int) ) (! (= (INTERNAL_sub_boogie x@@41 y@@19) (- x@@41 y@@19))
 :qid |seqgeneratedbpl.1574:15|
 :skolemid |303|
 :pattern ( (INTERNAL_sub_boogie x@@41 y@@19))
)))
(assert (forall ((x@@42 Int) (y@@20 Int) ) (! (= (Sub x@@42 y@@20) (- x@@42 y@@20))
 :qid |seqgeneratedbpl.1638:15|
 :skolemid |315|
 :pattern ( (Sub x@@42 y@@20))
)))
(assert (forall ((x@@43 Int) (y@@21 Int) ) (! (= (INTERNAL_add_boogie x@@43 y@@21) (+ x@@43 y@@21))
 :qid |seqgeneratedbpl.1568:15|
 :skolemid |302|
 :pattern ( (INTERNAL_add_boogie x@@43 y@@21))
)))
(assert (forall ((x@@44 Int) (y@@22 Int) ) (! (= (Add x@@44 y@@22) (+ x@@44 y@@22))
 :qid |seqgeneratedbpl.1634:15|
 :skolemid |314|
 :pattern ( (Add x@@44 y@@22))
)))
(assert (forall ((x@@45 Int) (y@@23 Int) ) (! (= (INTERNAL_mul_boogie x@@45 y@@23) (* x@@45 y@@23))
 :qid |seqgeneratedbpl.1580:15|
 :skolemid |304|
 :pattern ( (INTERNAL_mul_boogie x@@45 y@@23))
)))
(assert (forall ((x@@46 Int) (y@@24 Int) ) (! (= (Mul x@@46 y@@24) (* x@@46 y@@24))
 :qid |seqgeneratedbpl.1622:15|
 :skolemid |311|
 :pattern ( (Mul x@@46 y@@24))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (= (type d@@9) DatatypeTypeType) (= (BoxRank ($Box d@@9)) (DtRank d@@9)))
 :qid |seqgeneratedbpl.399:15|
 :skolemid |76|
 :pattern ( (BoxRank ($Box d@@9)))
)))
(assert (forall ((r@@10 T@U) ) (! (let ((T@@125 (type r@@10)))
(= (|MultiSet#Singleton| r@@10) (|MultiSet#UnionOne| (|MultiSet#Empty| T@@125) r@@10)))
 :qid |seqgeneratedbpl.990:18|
 :skolemid |184|
 :pattern ( (|MultiSet#Singleton| r@@10))
)))
(assert (forall ((s@@32 T@U) ) (! (let ((T@@126 (MapType0TypeInv0 (type s@@32))))
 (=> (= (type s@@32) (MapType0Type T@@126 boolType)) (= (|MultiSet#Card| (|MultiSet#FromSet| s@@32)) (|Set#Card| s@@32))))
 :qid |seqgeneratedbpl.1091:18|
 :skolemid |206|
 :pattern ( (|MultiSet#Card| (|MultiSet#FromSet| s@@32)))
)))
(assert (forall ((s@@33 T@U) ) (! (let ((T@@127 (SeqTypeInv0 (type s@@33))))
 (=> (= (type s@@33) (SeqType T@@127)) (= (|MultiSet#Card| (|MultiSet#FromSeq| s@@33)) (|Seq#Length| s@@33))))
 :qid |seqgeneratedbpl.1101:18|
 :skolemid |208|
 :pattern ( (|MultiSet#Card| (|MultiSet#FromSeq| s@@33)))
)))
(assert (forall ((m@@30 T@U) ) (! (let ((V@@29 (MapTypeInv1 (type m@@30))))
(let ((U@@29 (MapTypeInv0 (type m@@30))))
 (=> (= (type m@@30) (MapType U@@29 V@@29)) (= (|Set#Card| (|Map#Domain| m@@30)) (|Map#Card| m@@30)))))
 :qid |seqgeneratedbpl.1403:20|
 :skolemid |270|
 :pattern ( (|Set#Card| (|Map#Domain| m@@30)))
)))
(assert (forall ((m@@31 T@U) ) (! (let ((V@@30 (MapTypeInv1 (type m@@31))))
(let ((U@@30 (MapTypeInv0 (type m@@31))))
 (=> (= (type m@@31) (MapType U@@30 V@@30)) (= (|Set#Card| (|Map#Items| m@@31)) (|Map#Card| m@@31)))))
 :qid |seqgeneratedbpl.1422:20|
 :skolemid |273|
 :pattern ( (|Set#Card| (|Map#Items| m@@31)))
)))
(assert (forall ((s@@34 T@U) (n@@15 Int) (x@@47 T@U) ) (! (let ((T@@128 (type x@@47)))
 (=> (= (type s@@34) (SeqType T@@128)) (= (|Seq#Contains| (|Seq#Drop| s@@34 n@@15) x@@47) (exists ((i@@21 Int) ) (!  (and (and (and (<= 0 n@@15) (<= n@@15 i@@21)) (< i@@21 (|Seq#Length| s@@34))) (= (|Seq#Index| s@@34 i@@21) x@@47))
 :qid |seqgeneratedbpl.1243:19|
 :skolemid |237|
 :pattern ( (|Seq#Index| s@@34 i@@21))
)))))
 :qid |seqgeneratedbpl.1240:18|
 :skolemid |238|
 :pattern ( (|Seq#Contains| (|Seq#Drop| s@@34 n@@15) x@@47))
)))
(assert (forall ((a@@83 Int) (b@@53 Int) ) (! (= (<= a@@83 b@@53) (= (|Math#min| a@@83 b@@53) a@@83))
 :qid |seqgeneratedbpl.943:15|
 :skolemid |171|
 :pattern ( (|Math#min| a@@83 b@@53))
)))
(assert (forall ((a@@84 Int) (b@@54 Int) ) (! (= (<= b@@54 a@@84) (= (|Math#min| a@@84 b@@54) b@@54))
 :qid |seqgeneratedbpl.945:15|
 :skolemid |172|
 :pattern ( (|Math#min| a@@84 b@@54))
)))
(assert (forall ((f@@25 T@U) (t0@@35 T@U) ) (!  (=> (and (= (type f@@25) HandleTypeType) (= (type t0@@35) TyType)) (= ($Is f@@25 (Tclass._System.___hFunc0 t0@@35)) (forall ((h@@21 T@U) ) (!  (=> (= (type h@@21) (MapType1Type refType)) (=> (and ($IsGoodHeap h@@21) (Requires0 t0@@35 h@@21 f@@25)) ($IsBox (Apply0 t0@@35 h@@21 f@@25) t0@@35)))
 :qid |seqgeneratedbpl.1971:19|
 :skolemid |359|
 :pattern ( (Apply0 t0@@35 h@@21 f@@25))
))))
 :qid |seqgeneratedbpl.1968:15|
 :skolemid |360|
 :pattern ( ($Is f@@25 (Tclass._System.___hFunc0 t0@@35)))
)))
(assert (forall ((o@@46 T@U) (m@@32 Int) (n@@16 Int) ) (!  (=> (= (type o@@46) BoxType) (=> (and (and (<= 0 m@@32) (<= 0 n@@16)) (<= n@@16 (+ (|ORD#Offset| o@@46) m@@32))) (and (=> (<= 0 (- m@@32 n@@16)) (= (|ORD#Minus| (|ORD#Plus| o@@46 (|ORD#FromNat| m@@32)) (|ORD#FromNat| n@@16)) (|ORD#Plus| o@@46 (|ORD#FromNat| (- m@@32 n@@16))))) (=> (<= (- m@@32 n@@16) 0) (= (|ORD#Minus| (|ORD#Plus| o@@46 (|ORD#FromNat| m@@32)) (|ORD#FromNat| n@@16)) (|ORD#Minus| o@@46 (|ORD#FromNat| (- n@@16 m@@32))))))))
 :qid |seqgeneratedbpl.499:15|
 :skolemid |92|
 :pattern ( (|ORD#Minus| (|ORD#Plus| o@@46 (|ORD#FromNat| m@@32)) (|ORD#FromNat| n@@16)))
)))
(assert (forall ((o@@47 T@U) (m@@33 Int) (n@@17 Int) ) (!  (=> (= (type o@@47) BoxType) (=> (and (and (<= 0 m@@33) (<= 0 n@@17)) (<= n@@17 (+ (|ORD#Offset| o@@47) m@@33))) (and (=> (<= 0 (- m@@33 n@@17)) (= (|ORD#Plus| (|ORD#Minus| o@@47 (|ORD#FromNat| m@@33)) (|ORD#FromNat| n@@17)) (|ORD#Minus| o@@47 (|ORD#FromNat| (- m@@33 n@@17))))) (=> (<= (- m@@33 n@@17) 0) (= (|ORD#Plus| (|ORD#Minus| o@@47 (|ORD#FromNat| m@@33)) (|ORD#FromNat| n@@17)) (|ORD#Plus| o@@47 (|ORD#FromNat| (- n@@17 m@@33))))))))
 :qid |seqgeneratedbpl.509:15|
 :skolemid |93|
 :pattern ( (|ORD#Plus| (|ORD#Minus| o@@47 (|ORD#FromNat| m@@33)) (|ORD#FromNat| n@@17)))
)))
(assert (forall ((bx@@30 T@U) (t@@31 T@U) ) (!  (=> (and (and (= (type bx@@30) BoxType) (= (type t@@31) TyType)) ($IsBox bx@@30 (TSet t@@31))) (and (= ($Box ($Unbox (MapType0Type BoxType boolType) bx@@30)) bx@@30) ($Is ($Unbox (MapType0Type BoxType boolType) bx@@30) (TSet t@@31))))
 :qid |seqgeneratedbpl.205:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@30 (TSet t@@31)))
)))
(assert (forall ((bx@@31 T@U) (t@@32 T@U) ) (!  (=> (and (and (= (type bx@@31) BoxType) (= (type t@@32) TyType)) ($IsBox bx@@31 (TISet t@@32))) (and (= ($Box ($Unbox (MapType0Type BoxType boolType) bx@@31)) bx@@31) ($Is ($Unbox (MapType0Type BoxType boolType) bx@@31) (TISet t@@32))))
 :qid |seqgeneratedbpl.210:15|
 :skolemid |31|
 :pattern ( ($IsBox bx@@31 (TISet t@@32)))
)))
(assert (forall ((bx@@32 T@U) (t@@33 T@U) ) (!  (=> (and (and (= (type bx@@32) BoxType) (= (type t@@33) TyType)) ($IsBox bx@@32 (TMultiSet t@@33))) (and (= ($Box ($Unbox (MapType0Type BoxType intType) bx@@32)) bx@@32) ($Is ($Unbox (MapType0Type BoxType intType) bx@@32) (TMultiSet t@@33))))
 :qid |seqgeneratedbpl.215:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@32 (TMultiSet t@@33)))
)))
(assert (forall ((bx@@33 T@U) (t@@34 T@U) ) (!  (=> (and (and (= (type bx@@33) BoxType) (= (type t@@34) TyType)) ($IsBox bx@@33 (TSeq t@@34))) (and (= ($Box ($Unbox (SeqType BoxType) bx@@33)) bx@@33) ($Is ($Unbox (SeqType BoxType) bx@@33) (TSeq t@@34))))
 :qid |seqgeneratedbpl.221:15|
 :skolemid |33|
 :pattern ( ($IsBox bx@@33 (TSeq t@@34)))
)))
(assert (forall ((|#$arg@@6| T@U) (bx@@34 T@U) ) (!  (=> (and (and (= (type |#$arg@@6|) TyType) (= (type bx@@34) BoxType)) ($IsBox bx@@34 (Tclass._System.array? |#$arg@@6|))) (and (= ($Box ($Unbox refType bx@@34)) bx@@34) ($Is ($Unbox refType bx@@34) (Tclass._System.array? |#$arg@@6|))))
 :qid |seqgeneratedbpl.1733:15|
 :skolemid |327|
 :pattern ( ($IsBox bx@@34 (Tclass._System.array? |#$arg@@6|)))
)))
(assert (forall ((_System.array$arg@@3 T@U) (bx@@35 T@U) ) (!  (=> (and (and (= (type _System.array$arg@@3) TyType) (= (type bx@@35) BoxType)) ($IsBox bx@@35 (Tclass._System.array _System.array$arg@@3))) (and (= ($Box ($Unbox refType bx@@35)) bx@@35) ($Is ($Unbox refType bx@@35) (Tclass._System.array _System.array$arg@@3))))
 :qid |seqgeneratedbpl.1810:15|
 :skolemid |336|
 :pattern ( ($IsBox bx@@35 (Tclass._System.array _System.array$arg@@3)))
)))
(assert (forall ((|#$R@@24| T@U) (bx@@36 T@U) ) (!  (=> (and (and (= (type |#$R@@24|) TyType) (= (type bx@@36) BoxType)) ($IsBox bx@@36 (Tclass._System.___hFunc0 |#$R@@24|))) (and (= ($Box ($Unbox HandleTypeType bx@@36)) bx@@36) ($Is ($Unbox HandleTypeType bx@@36) (Tclass._System.___hFunc0 |#$R@@24|))))
 :qid |seqgeneratedbpl.1845:15|
 :skolemid |341|
 :pattern ( ($IsBox bx@@36 (Tclass._System.___hFunc0 |#$R@@24|)))
)))
(assert (forall ((|#$R@@25| T@U) (bx@@37 T@U) ) (!  (=> (and (and (= (type |#$R@@25|) TyType) (= (type bx@@37) BoxType)) ($IsBox bx@@37 (Tclass._System.___hPartialFunc0 |#$R@@25|))) (and (= ($Box ($Unbox HandleTypeType bx@@37)) bx@@37) ($Is ($Unbox HandleTypeType bx@@37) (Tclass._System.___hPartialFunc0 |#$R@@25|))))
 :qid |seqgeneratedbpl.2016:15|
 :skolemid |368|
 :pattern ( ($IsBox bx@@37 (Tclass._System.___hPartialFunc0 |#$R@@25|)))
)))
(assert (forall ((|#$R@@26| T@U) (bx@@38 T@U) ) (!  (=> (and (and (= (type |#$R@@26|) TyType) (= (type bx@@38) BoxType)) ($IsBox bx@@38 (Tclass._System.___hTotalFunc0 |#$R@@26|))) (and (= ($Box ($Unbox HandleTypeType bx@@38)) bx@@38) ($Is ($Unbox HandleTypeType bx@@38) (Tclass._System.___hTotalFunc0 |#$R@@26|))))
 :qid |seqgeneratedbpl.2052:15|
 :skolemid |373|
 :pattern ( ($IsBox bx@@38 (Tclass._System.___hTotalFunc0 |#$R@@26|)))
)))
(assert (forall ((s@@35 T@U) (v@@30 T@U) ) (! (let ((T@@129 (type v@@30)))
 (=> (= (type s@@35) (SeqType T@@129)) (= (|MultiSet#FromSeq| (|Seq#Build| s@@35 v@@30)) (|MultiSet#UnionOne| (|MultiSet#FromSeq| s@@35) v@@30))))
 :qid |seqgeneratedbpl.1105:18|
 :skolemid |209|
 :pattern ( (|MultiSet#FromSeq| (|Seq#Build| s@@35 v@@30)))
)))
(assert (forall ((o@@48 T@U) ) (!  (=> (and (= (type o@@48) BoxType) (|ORD#IsNat| o@@48)) (= o@@48 (|ORD#FromNat| (|ORD#Offset| o@@48))))
 :qid |seqgeneratedbpl.425:15|
 :skolemid |79|
 :pattern ( (|ORD#Offset| o@@48))
 :pattern ( (|ORD#IsNat| o@@48))
)))
(assert (forall ((s@@36 T@U) ) (! (let ((T@@130 (MapType0TypeInv0 (type s@@36))))
 (=> (= (type s@@36) (MapType0Type T@@130 boolType)) (and (= (= (|Set#Card| s@@36) 0) (= s@@36 (|Set#Empty| T@@130))) (=> (not (= (|Set#Card| s@@36) 0)) (exists ((x@@48 T@U) ) (!  (and (= (type x@@48) T@@130) (U_2_bool (MapType0Select s@@36 x@@48)))
 :qid |seqgeneratedbpl.730:39|
 :skolemid |119|
 :no-pattern (type x@@48)
 :no-pattern (U_2_int x@@48)
 :no-pattern (U_2_bool x@@48)
))))))
 :qid |seqgeneratedbpl.727:18|
 :skolemid |120|
 :pattern ( (|Set#Card| s@@36))
)))
(assert (forall ((h@@22 T@U) (r@@11 T@U) (f@@26 T@U) (x@@49 T@U) ) (! (let ((alpha@@8 (type x@@49)))
 (=> (and (and (and (= (type h@@22) (MapType1Type refType)) (= (type r@@11) refType)) (= (type f@@26) (FieldType alpha@@8))) ($IsGoodHeap (MapType1Store h@@22 r@@11 f@@26 x@@49))) ($HeapSucc h@@22 (MapType1Store h@@22 r@@11 f@@26 x@@49))))
 :qid |seqgeneratedbpl.640:22|
 :skolemid |107|
 :pattern ( (MapType1Store h@@22 r@@11 f@@26 x@@49))
)))
(assert (forall ((a@@85 T@U) (b@@55 T@U) ) (! (let ((T@@131 (MapType0TypeInv0 (type a@@85))))
 (=> (and (= (type a@@85) (MapType0Type T@@131 boolType)) (= (type b@@55) (MapType0Type T@@131 boolType))) (= (|Set#Subset| a@@85 b@@55) (forall ((o@@49 T@U) ) (!  (=> (and (= (type o@@49) T@@131) (U_2_bool (MapType0Select a@@85 o@@49))) (U_2_bool (MapType0Select b@@55 o@@49)))
 :qid |seqgeneratedbpl.833:33|
 :skolemid |142|
 :pattern ( (MapType0Select a@@85 o@@49))
 :pattern ( (MapType0Select b@@55 o@@49))
)))))
 :qid |seqgeneratedbpl.831:18|
 :skolemid |143|
 :pattern ( (|Set#Subset| a@@85 b@@55))
)))
(assert (forall ((a@@86 T@U) (b@@56 T@U) ) (! (let ((T@@132 (MapType0TypeInv0 (type a@@86))))
 (=> (and (= (type a@@86) (MapType0Type T@@132 boolType)) (= (type b@@56) (MapType0Type T@@132 boolType))) (= (|ISet#Subset| a@@86 b@@56) (forall ((o@@50 T@U) ) (!  (=> (and (= (type o@@50) T@@132) (U_2_bool (MapType0Select a@@86 o@@50))) (U_2_bool (MapType0Select b@@56 o@@50)))
 :qid |seqgeneratedbpl.923:34|
 :skolemid |164|
 :pattern ( (MapType0Select a@@86 o@@50))
 :pattern ( (MapType0Select b@@56 o@@50))
)))))
 :qid |seqgeneratedbpl.921:18|
 :skolemid |165|
 :pattern ( (|ISet#Subset| a@@86 b@@56))
)))
(assert (forall ((|#$arg@@7| T@U) ($h@@15 T@U) ($o@@11 T@U) ($i0@@0 Int) ) (!  (=> (and (and (= (type |#$arg@@7|) TyType) (= (type $h@@15) (MapType1Type refType))) (= (type $o@@11) refType)) (=> (and (and (and (and ($IsGoodHeap $h@@15) (not (= $o@@11 null))) (= (dtype $o@@11) (Tclass._System.array? |#$arg@@7|))) (<= 0 $i0@@0)) (< $i0@@0 (_System.array.Length $o@@11))) ($IsBox (MapType1Select $h@@15 $o@@11 (IndexField $i0@@0)) |#$arg@@7|)))
 :qid |seqgeneratedbpl.1740:15|
 :skolemid |328|
 :pattern ( (MapType1Select $h@@15 $o@@11 (IndexField $i0@@0)) (Tclass._System.array? |#$arg@@7|))
)))
(assert (forall ((s@@37 T@U) (n@@18 Int) (k@@3 Int) ) (! (let ((T@@133 (SeqTypeInv0 (type s@@37))))
 (=> (= (type s@@37) (SeqType T@@133)) (=> (and (and (<= 0 n@@18) (<= n@@18 k@@3)) (< k@@3 (|Seq#Length| s@@37))) (= (|Seq#Index| (|Seq#Drop| s@@37 n@@18) (- k@@3 n@@18)) (|Seq#Index| s@@37 k@@3)))))
 :qid |seqgeneratedbpl.1290:18|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@37 k@@3) (|Seq#Drop| s@@37 n@@18))
)))
(assert (forall ((v@@31 T@U) (t0@@36 T@U) (h@@23 T@U) ) (!  (=> (and (and (= (type v@@31) (MapType0Type BoxType intType)) (= (type t0@@36) TyType)) (= (type h@@23) (MapType1Type refType))) (= ($IsAlloc v@@31 (TMultiSet t0@@36) h@@23) (forall ((bx@@39 T@U) ) (!  (=> (and (= (type bx@@39) BoxType) (< 0 (U_2_int (MapType0Select v@@31 bx@@39)))) ($IsAllocBox bx@@39 t0@@36 h@@23))
 :qid |seqgeneratedbpl.312:19|
 :skolemid |61|
 :pattern ( (MapType0Select v@@31 bx@@39))
))))
 :qid |seqgeneratedbpl.309:15|
 :skolemid |62|
 :pattern ( ($IsAlloc v@@31 (TMultiSet t0@@36) h@@23))
)))
(assert (forall ((t0@@37 T@U) (heap@@7 T@U) (h@@24 T@U) (r@@12 T@U) (rd@@3 T@U) (bx@@40 T@U) ) (!  (=> (and (and (and (and (and (= (type t0@@37) TyType) (= (type heap@@7) (MapType1Type refType))) (= (type h@@24) (MapType0Type (MapType1Type refType) BoxType))) (= (type r@@12) (MapType0Type (MapType1Type refType) boolType))) (= (type rd@@3) (MapType0Type (MapType1Type refType) (MapType0Type BoxType boolType)))) (= (type bx@@40) BoxType)) (= (U_2_bool (MapType0Select (Reads0 t0@@37 heap@@7 (Handle0 h@@24 r@@12 rd@@3)) bx@@40)) (U_2_bool (MapType0Select (MapType0Select rd@@3 heap@@7) bx@@40))))
 :qid |seqgeneratedbpl.1867:15|
 :skolemid |344|
 :pattern ( (MapType0Select (Reads0 t0@@37 heap@@7 (Handle0 h@@24 r@@12 rd@@3)) bx@@40))
)))
(assert (= |#_System._tuple#0._#Make0| (Lit |#_System._tuple#0._#Make0|)))
(assert (forall ((o@@51 T@U) (p@@7 T@U) ) (!  (=> (and (and (= (type o@@51) BoxType) (= (type p@@7) BoxType)) (and (|ORD#IsNat| p@@7) (<= (|ORD#Offset| p@@7) (|ORD#Offset| o@@51)))) (or (and (= p@@7 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@51 p@@7) o@@51)) (and (not (= p@@7 (|ORD#FromNat| 0))) (|ORD#Less| (|ORD#Minus| o@@51 p@@7) o@@51))))
 :qid |seqgeneratedbpl.481:15|
 :skolemid |89|
 :pattern ( (|ORD#Minus| o@@51 p@@7))
)))
(assert (forall ((a@@87 T@U) (x@@50 T@U) ) (! (let ((T@@134 (type x@@50)))
 (=> (and (= (type a@@87) (MapType0Type T@@134 boolType)) (not (U_2_bool (MapType0Select a@@87 x@@50)))) (= (|Set#Card| (|Set#UnionOne| a@@87 x@@50)) (+ (|Set#Card| a@@87) 1))))
 :qid |seqgeneratedbpl.760:18|
 :skolemid |128|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@87 x@@50)))
)))
(assert (forall ((s@@38 T@U) ) (!  (=> (= (type s@@38) (MapType0Type refType boolType)) ($Is (SetRef_to_SetBox s@@38) (TSet Tclass._System.object?)))
 :qid |seqgeneratedbpl.385:15|
 :skolemid |75|
 :pattern ( (SetRef_to_SetBox s@@38))
)))
(assert (forall ((f@@27 T@U) (t0@@38 T@U) (h@@25 T@U) ) (!  (=> (and (and (and (and (= (type f@@27) HandleTypeType) (= (type t0@@38) TyType)) (= (type h@@25) (MapType1Type refType))) (and ($IsGoodHeap h@@25) ($IsAlloc f@@27 (Tclass._System.___hFunc0 t0@@38) h@@25))) (Requires0 t0@@38 h@@25 f@@27)) ($IsAllocBox (Apply0 t0@@38 h@@25 f@@27) t0@@38 h@@25))
 :qid |seqgeneratedbpl.1992:15|
 :skolemid |365|
 :pattern ( ($IsAlloc f@@27 (Tclass._System.___hFunc0 t0@@38) h@@25))
)))
(assert (forall ((s@@39 T@U) (m@@34 Int) (n@@19 Int) ) (! (let ((T@@135 (SeqTypeInv0 (type s@@39))))
 (=> (= (type s@@39) (SeqType T@@135)) (=> (and (and (<= 0 m@@34) (<= 0 n@@19)) (<= (+ m@@34 n@@19) (|Seq#Length| s@@39))) (= (|Seq#Drop| (|Seq#Drop| s@@39 m@@34) n@@19) (|Seq#Drop| s@@39 (+ m@@34 n@@19))))))
 :qid |seqgeneratedbpl.1388:18|
 :skolemid |268|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@39 m@@34) n@@19))
)))
(assert (forall ((s0@@3 T@U) (s1@@3 T@U) (n@@20 Int) ) (! (let ((T@@136 (SeqTypeInv0 (type s0@@3))))
 (=> (and (= (type s0@@3) (SeqType T@@136)) (= (type s1@@3) (SeqType T@@136))) (= (|Seq#SameUntil| s0@@3 s1@@3 n@@20) (forall ((j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 n@@20)) (= (|Seq#Index| s0@@3 j@@3) (|Seq#Index| s1@@3 j@@3)))
 :qid |seqgeneratedbpl.1264:19|
 :skolemid |242|
 :pattern ( (|Seq#Index| s0@@3 j@@3))
 :pattern ( (|Seq#Index| s1@@3 j@@3))
)))))
 :qid |seqgeneratedbpl.1261:18|
 :skolemid |243|
 :pattern ( (|Seq#SameUntil| s0@@3 s1@@3 n@@20))
)))
(assert (forall ((a@@88 T@U) (b@@57 T@U) ) (! (let ((T@@137 (MapType0TypeInv0 (type a@@88))))
 (=> (and (= (type a@@88) (MapType0Type T@@137 boolType)) (= (type b@@57) (MapType0Type T@@137 boolType))) (= (|Set#Disjoint| a@@88 b@@57) (forall ((o@@52 T@U) ) (!  (=> (= (type o@@52) T@@137) (or (not (U_2_bool (MapType0Select a@@88 o@@52))) (not (U_2_bool (MapType0Select b@@57 o@@52)))))
 :qid |seqgeneratedbpl.847:35|
 :skolemid |147|
 :pattern ( (MapType0Select a@@88 o@@52))
 :pattern ( (MapType0Select b@@57 o@@52))
)))))
 :qid |seqgeneratedbpl.845:18|
 :skolemid |148|
 :pattern ( (|Set#Disjoint| a@@88 b@@57))
)))
(assert (forall ((a@@89 T@U) (b@@58 T@U) ) (! (let ((T@@138 (MapType0TypeInv0 (type a@@89))))
 (=> (and (= (type a@@89) (MapType0Type T@@138 boolType)) (= (type b@@58) (MapType0Type T@@138 boolType))) (= (|ISet#Disjoint| a@@89 b@@58) (forall ((o@@53 T@U) ) (!  (=> (= (type o@@53) T@@138) (or (not (U_2_bool (MapType0Select a@@89 o@@53))) (not (U_2_bool (MapType0Select b@@58 o@@53)))))
 :qid |seqgeneratedbpl.939:36|
 :skolemid |169|
 :pattern ( (MapType0Select a@@89 o@@53))
 :pattern ( (MapType0Select b@@58 o@@53))
)))))
 :qid |seqgeneratedbpl.937:18|
 :skolemid |170|
 :pattern ( (|ISet#Disjoint| a@@89 b@@58))
)))
(assert (forall ((a@@90 T@U) (x@@51 T@U) (y@@25 T@U) ) (! (let ((T@@139 (type x@@51)))
 (=> (and (and (= (type a@@90) (MapType0Type T@@139 intType)) (= (type y@@25) T@@139)) (not (= x@@51 y@@25))) (= (U_2_int (MapType0Select a@@90 y@@25)) (U_2_int (MapType0Select (|MultiSet#UnionOne| a@@90 x@@51) y@@25)))))
 :qid |seqgeneratedbpl.1008:18|
 :skolemid |188|
 :pattern ( (|MultiSet#UnionOne| a@@90 x@@51) (MapType0Select a@@90 y@@25))
)))
(assert (forall ((s0@@4 T@U) (s1@@4 T@U) (n@@21 Int) ) (! (let ((T@@140 (SeqTypeInv0 (type s0@@4))))
 (=> (and (= (type s0@@4) (SeqType T@@140)) (= (type s1@@4) (SeqType T@@140))) (and (=> (< n@@21 (|Seq#Length| s0@@4)) (= (|Seq#Index| (|Seq#Append| s0@@4 s1@@4) n@@21) (|Seq#Index| s0@@4 n@@21))) (=> (<= (|Seq#Length| s0@@4) n@@21) (= (|Seq#Index| (|Seq#Append| s0@@4 s1@@4) n@@21) (|Seq#Index| s1@@4 (- n@@21 (|Seq#Length| s0@@4))))))))
 :qid |seqgeneratedbpl.1193:18|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@4 s1@@4) n@@21))
)))
(assert (forall ((o@@54 T@U) (p@@8 T@U) ) (!  (=> (and (= (type o@@54) BoxType) (= (type p@@8) BoxType)) (and (=> (|ORD#IsNat| (|ORD#Plus| o@@54 p@@8)) (and (|ORD#IsNat| o@@54) (|ORD#IsNat| p@@8))) (=> (|ORD#IsNat| p@@8) (and (= (|ORD#IsNat| (|ORD#Plus| o@@54 p@@8)) (|ORD#IsNat| o@@54)) (= (|ORD#Offset| (|ORD#Plus| o@@54 p@@8)) (+ (|ORD#Offset| o@@54) (|ORD#Offset| p@@8)))))))
 :qid |seqgeneratedbpl.456:15|
 :skolemid |85|
 :pattern ( (|ORD#Plus| o@@54 p@@8))
)))
(assert (forall ((f@@28 T@U) (t0@@39 T@U) (u0@@0 T@U) ) (!  (=> (and (and (and (= (type f@@28) HandleTypeType) (= (type t0@@39) TyType)) (= (type u0@@0) TyType)) (and ($Is f@@28 (Tclass._System.___hFunc0 t0@@39)) (forall ((bx@@41 T@U) ) (!  (=> (and (= (type bx@@41) BoxType) ($IsBox bx@@41 t0@@39)) ($IsBox bx@@41 u0@@0))
 :qid |seqgeneratedbpl.1978:19|
 :skolemid |361|
 :pattern ( ($IsBox bx@@41 t0@@39))
 :pattern ( ($IsBox bx@@41 u0@@0))
)))) ($Is f@@28 (Tclass._System.___hFunc0 u0@@0)))
 :qid |seqgeneratedbpl.1975:15|
 :skolemid |362|
 :pattern ( ($Is f@@28 (Tclass._System.___hFunc0 t0@@39)) ($Is f@@28 (Tclass._System.___hFunc0 u0@@0)))
)))
(assert (forall ((m@@35 T@U) ) (! (let ((V@@31 (MapTypeInv1 (type m@@35))))
(let ((U@@31 (MapTypeInv0 (type m@@35))))
 (=> (= (type m@@35) (MapType U@@31 V@@31)) (and (= (= (|Map#Card| m@@35) 0) (= m@@35 (|Map#Empty| U@@31 V@@31))) (=> (not (= (|Map#Card| m@@35) 0)) (exists ((x@@52 T@U) ) (!  (and (= (type x@@52) U@@31) (U_2_bool (MapType0Select (|Map#Domain| m@@35) x@@52)))
 :qid |seqgeneratedbpl.1442:39|
 :skolemid |276|
 :no-pattern (type x@@52)
 :no-pattern (U_2_int x@@52)
 :no-pattern (U_2_bool x@@52)
)))))))
 :qid |seqgeneratedbpl.1439:20|
 :skolemid |277|
 :pattern ( (|Map#Card| m@@35))
)))
(assert (forall ((a@@91 Int) ) (!  (=> (< a@@91 0) (= (|Math#clip| a@@91) 0))
 :qid |seqgeneratedbpl.955:15|
 :skolemid |175|
 :pattern ( (|Math#clip| a@@91))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (!  (=> (and (= (type |a#4#0#0|) BoxType) (= (type |a#4#1#0|) BoxType)) (= (|#_System._tuple#2._#Make2| (Lit |a#4#0#0|) (Lit |a#4#1#0|)) (Lit (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))))
 :qid |seqgeneratedbpl.2487:15|
 :skolemid |435|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit |a#4#0#0|) (Lit |a#4#1#0|)))
)))
(assert (forall ((x@@53 Int) ) (! (= ($Box (int_2_U (LitInt x@@53))) (Lit ($Box (int_2_U x@@53))))
 :qid |seqgeneratedbpl.126:15|
 :skolemid |16|
 :pattern ( ($Box (int_2_U (LitInt x@@53))))
)))
(assert (forall ((x@@54 Real) ) (! (= ($Box (real_2_U (LitReal x@@54))) (Lit ($Box (real_2_U x@@54))))
 :qid |seqgeneratedbpl.132:15|
 :skolemid |18|
 :pattern ( ($Box (real_2_U (LitReal x@@54))))
)))
(assert (forall ((x@@55 T@U) ) (! (= ($Box (Lit x@@55)) (Lit ($Box x@@55)))
 :qid |seqgeneratedbpl.138:18|
 :skolemid |20|
 :pattern ( ($Box (Lit x@@55)))
)))
(assert (forall ((a@@92 T@U) (b@@59 T@U) ) (! (let ((T@@141 (SeqTypeInv0 (type a@@92))))
 (=> (and (= (type a@@92) (SeqType T@@141)) (= (type b@@59) (SeqType T@@141))) (= (|MultiSet#FromSeq| (|Seq#Append| a@@92 b@@59)) (|MultiSet#Union| (|MultiSet#FromSeq| a@@92) (|MultiSet#FromSeq| b@@59)))))
 :qid |seqgeneratedbpl.1112:18|
 :skolemid |211|
 :pattern ( (|MultiSet#FromSeq| (|Seq#Append| a@@92 b@@59)))
)))
(assert (forall ((s@@40 T@U) ) (! (let ((T@@142 (SeqTypeInv0 (type s@@40))))
 (=> (and (= (type s@@40) (SeqType T@@142)) (= (|Seq#Length| s@@40) 0)) (= s@@40 ((as seq.empty T@U) T@@142))))
 :qid |seqgeneratedbpl.1141:18|
 :skolemid |217|
 :pattern ( (|Seq#Length| s@@40))
)))
(assert (forall ((s@@41 T@U) (n@@22 Int) ) (! (let ((T@@143 (SeqTypeInv0 (type s@@41))))
 (=> (and (= (type s@@41) (SeqType T@@143)) (= n@@22 0)) (= (|Seq#Take| s@@41 n@@22) ((as seq.empty T@U) T@@143))))
 :qid |seqgeneratedbpl.1384:18|
 :skolemid |267|
 :pattern ( (|Seq#Take| s@@41 n@@22))
)))
(assert (forall ((t0@@40 T@U) (heap@@8 T@U) (h@@26 T@U) (r@@13 T@U) (rd@@4 T@U) ) (!  (=> (and (and (and (and (and (= (type t0@@40) TyType) (= (type heap@@8) (MapType1Type refType))) (= (type h@@26) (MapType0Type (MapType1Type refType) BoxType))) (= (type r@@13) (MapType0Type (MapType1Type refType) boolType))) (= (type rd@@4) (MapType0Type (MapType1Type refType) (MapType0Type BoxType boolType)))) (U_2_bool (MapType0Select r@@13 heap@@8))) (Requires0 t0@@40 heap@@8 (Handle0 h@@26 r@@13 rd@@4)))
 :qid |seqgeneratedbpl.1863:15|
 :skolemid |343|
 :pattern ( (Requires0 t0@@40 heap@@8 (Handle0 h@@26 r@@13 rd@@4)))
)))
(assert (forall ((s@@42 T@U) (x@@56 T@U) (n@@23 T@U) ) (! (let ((T@@144 (type x@@56)))
 (=> (and (and (= (type s@@42) (MapType0Type T@@144 intType)) (= (type n@@23) intType)) (<= 0 (U_2_int n@@23))) (= (|MultiSet#Card| (MapType0Store s@@42 x@@56 n@@23)) (+ (- (|MultiSet#Card| s@@42) (U_2_int (MapType0Select s@@42 x@@56))) (U_2_int n@@23)))))
 :qid |seqgeneratedbpl.970:18|
 :skolemid |179|
 :pattern ( (|MultiSet#Card| (MapType0Store s@@42 x@@56 n@@23)))
)))
(assert (forall ((a@@93 T@U) (b@@60 T@U) (o@@55 T@U) ) (! (let ((T@@145 (type o@@55)))
 (=> (and (= (type a@@93) (MapType0Type T@@145 boolType)) (= (type b@@60) (MapType0Type T@@145 boolType))) (= (U_2_bool (MapType0Select (|Set#Union| a@@93 b@@60) o@@55))  (or (U_2_bool (MapType0Select a@@93 o@@55)) (U_2_bool (MapType0Select b@@60 o@@55))))))
 :qid |seqgeneratedbpl.766:18|
 :skolemid |129|
 :pattern ( (MapType0Select (|Set#Union| a@@93 b@@60) o@@55))
)))
(assert (forall ((a@@94 T@U) (b@@61 T@U) (o@@56 T@U) ) (! (let ((T@@146 (type o@@56)))
 (=> (and (= (type a@@94) (MapType0Type T@@146 boolType)) (= (type b@@61) (MapType0Type T@@146 boolType))) (= (U_2_bool (MapType0Select (|ISet#Union| a@@94 b@@61) o@@56))  (or (U_2_bool (MapType0Select a@@94 o@@56)) (U_2_bool (MapType0Select b@@61 o@@56))))))
 :qid |seqgeneratedbpl.869:18|
 :skolemid |153|
 :pattern ( (MapType0Select (|ISet#Union| a@@94 b@@61) o@@56))
)))
(assert (forall ((h@@27 T@U) (v@@32 T@U) ) (!  (=> (and (= (type h@@27) (MapType1Type refType)) (= (type v@@32) intType)) ($IsAlloc v@@32 TInt h@@27))
 :qid |seqgeneratedbpl.263:15|
 :skolemid |43|
 :pattern ( ($IsAlloc v@@32 TInt h@@27))
)))
(assert (forall ((h@@28 T@U) (v@@33 T@U) ) (!  (=> (and (= (type h@@28) (MapType1Type refType)) (= (type v@@33) realType)) ($IsAlloc v@@33 TReal h@@28))
 :qid |seqgeneratedbpl.265:15|
 :skolemid |44|
 :pattern ( ($IsAlloc v@@33 TReal h@@28))
)))
(assert (forall ((h@@29 T@U) (v@@34 T@U) ) (!  (=> (and (= (type h@@29) (MapType1Type refType)) (= (type v@@34) boolType)) ($IsAlloc v@@34 TBool h@@29))
 :qid |seqgeneratedbpl.267:15|
 :skolemid |45|
 :pattern ( ($IsAlloc v@@34 TBool h@@29))
)))
(assert (forall ((h@@30 T@U) (v@@35 T@U) ) (!  (=> (and (= (type h@@30) (MapType1Type refType)) (= (type v@@35) charType)) ($IsAlloc v@@35 TChar h@@30))
 :qid |seqgeneratedbpl.269:15|
 :skolemid |46|
 :pattern ( ($IsAlloc v@@35 TChar h@@30))
)))
(assert (forall ((h@@31 T@U) (v@@36 T@U) ) (!  (=> (and (= (type h@@31) (MapType1Type refType)) (= (type v@@36) BoxType)) ($IsAlloc v@@36 TORDINAL h@@31))
 :qid |seqgeneratedbpl.271:15|
 :skolemid |47|
 :pattern ( ($IsAlloc v@@36 TORDINAL h@@31))
)))
(assert (forall ((s@@43 T@U) (i@@22 Int) (v@@37 T@U) (n@@24 Int) ) (! (let ((T@@147 (type v@@37)))
 (=> (= (type s@@43) (SeqType T@@147)) (=> (and (and (<= 0 i@@22) (< i@@22 n@@24)) (<= n@@24 (|Seq#Length| s@@43))) (= (|Seq#Take| (|Seq#Update| s@@43 i@@22 v@@37) n@@24) (|Seq#Update| (|Seq#Take| s@@43 n@@24) i@@22 v@@37)))))
 :qid |seqgeneratedbpl.1329:18|
 :skolemid |256|
 :pattern ( (|Seq#Take| (|Seq#Update| s@@43 i@@22 v@@37) n@@24))
)))
(assert (forall ((v@@38 T@U) (t0@@41 T@U) ) (!  (=> (and (= (type v@@38) (SeqType BoxType)) (= (type t0@@41) TyType)) (= ($Is v@@38 (TSeq t0@@41)) (forall ((i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 (|Seq#Length| v@@38))) ($IsBox (|Seq#Index| v@@38 i@@23) t0@@41))
 :qid |seqgeneratedbpl.295:19|
 :skolemid |55|
 :pattern ( (|Seq#Index| v@@38 i@@23))
))))
 :qid |seqgeneratedbpl.292:15|
 :skolemid |56|
 :pattern ( ($Is v@@38 (TSeq t0@@41)))
)))
(assert (forall ((|#$R@@27| T@U) (|f#0@@6| T@U) ) (!  (=> (and (= (type |#$R@@27|) TyType) (= (type |f#0@@6|) HandleTypeType)) (= ($Is |f#0@@6| (Tclass._System.___hPartialFunc0 |#$R@@27|))  (and ($Is |f#0@@6| (Tclass._System.___hFunc0 |#$R@@27|)) (|Set#Equal| (Reads0 |#$R@@27| $OneHeap |f#0@@6|) (|Set#Empty| BoxType)))))
 :qid |seqgeneratedbpl.2023:15|
 :skolemid |369|
 :pattern ( ($Is |f#0@@6| (Tclass._System.___hPartialFunc0 |#$R@@27|)))
)))
(assert (forall ((s@@44 T@U) (i@@24 Int) ) (!  (=> (= (type s@@44) (SeqType BoxType)) (=> (and (<= 0 i@@24) (< i@@24 (|Seq#Length| s@@44))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@44 i@@24))) (|Seq#Rank| s@@44))))
 :qid |seqgeneratedbpl.1362:15|
 :skolemid |262|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@44 i@@24))))
)))
(assert (forall ((v@@39 T@U) ) (!  (=> (= (type v@@39) intType) ($Is v@@39 TInt))
 :qid |seqgeneratedbpl.253:15|
 :skolemid |38|
 :pattern ( ($Is v@@39 TInt))
)))
(assert (forall ((v@@40 T@U) ) (!  (=> (= (type v@@40) realType) ($Is v@@40 TReal))
 :qid |seqgeneratedbpl.255:15|
 :skolemid |39|
 :pattern ( ($Is v@@40 TReal))
)))
(assert (forall ((v@@41 T@U) ) (!  (=> (= (type v@@41) boolType) ($Is v@@41 TBool))
 :qid |seqgeneratedbpl.257:15|
 :skolemid |40|
 :pattern ( ($Is v@@41 TBool))
)))
(assert (forall ((v@@42 T@U) ) (!  (=> (= (type v@@42) charType) ($Is v@@42 TChar))
 :qid |seqgeneratedbpl.259:15|
 :skolemid |41|
 :pattern ( ($Is v@@42 TChar))
)))
(assert (forall ((v@@43 T@U) ) (!  (=> (= (type v@@43) BoxType) ($Is v@@43 TORDINAL))
 :qid |seqgeneratedbpl.261:15|
 :skolemid |42|
 :pattern ( ($Is v@@43 TORDINAL))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#2@0| () Int)
(declare-fun |j#2@0| () Int)
(declare-fun |s#0@@3| () T@U)
(declare-fun $_Frame@1 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_Frame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(assert  (and (and (and (= (type |s#0@@3|) (SeqType BoxType)) (= (type $_Frame@1) (MapType2Type refType boolType))) (= (type $Heap) (MapType1Type refType))) (= (type $_Frame@0) (MapType2Type refType boolType))))
(set-info :boogie-vc-id CheckWellformed$$_module.__default.sorted)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 13) (let ((anon8_correct true))
(let ((anon12_Else_correct  (=> (and (not (and (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| |j#2@0|)) (< |j#2@0| (|Seq#Length| |s#0@@3|)))) (= (ControlFlow 0 6) 2)) anon8_correct)))
(let ((anon12_Then_correct  (=> (and (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| |j#2@0|)) (< |j#2@0| (|Seq#Length| |s#0@@3|))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (and (<= 0 |i#2@0|) (< |i#2@0| (|Seq#Length| |s#0@@3|)))) (=> (and (<= 0 |i#2@0|) (< |i#2@0| (|Seq#Length| |s#0@@3|))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (and (<= 0 |j#2@0|) (< |j#2@0| (|Seq#Length| |s#0@@3|)))) (=> (and (<= 0 |j#2@0|) (< |j#2@0| (|Seq#Length| |s#0@@3|))) (=> (= (ControlFlow 0 3) 2) anon8_correct))))))))
(let ((anon11_Else_correct  (=> (not (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| |j#2@0|))) (and (=> (= (ControlFlow 0 8) 3) anon12_Then_correct) (=> (= (ControlFlow 0 8) 6) anon12_Else_correct)))))
(let ((anon11_Then_correct  (=> (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| |j#2@0|)) (and (=> (= (ControlFlow 0 7) 3) anon12_Then_correct) (=> (= (ControlFlow 0 7) 6) anon12_Else_correct)))))
(let ((anon10_Else_correct  (=> (< |i#2@0| (LitInt 0)) (and (=> (= (ControlFlow 0 10) 7) anon11_Then_correct) (=> (= (ControlFlow 0 10) 8) anon11_Else_correct)))))
(let ((anon10_Then_correct  (=> (<= (LitInt 0) |i#2@0|) (and (=> (= (ControlFlow 0 9) 7) anon11_Then_correct) (=> (= (ControlFlow 0 9) 8) anon11_Else_correct)))))
(let ((anon9_Else_correct  (=> (= $_Frame@1 (|lambda#1| null $Heap alloc false)) (and (=> (= (ControlFlow 0 11) 9) anon10_Then_correct) (=> (= (ControlFlow 0 11) 10) anon10_Else_correct)))))
(let ((anon9_Then_correct true))
(let ((anon0_correct  (=> (= $_Frame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 12) 1) anon9_Then_correct) (=> (= (ControlFlow 0 12) 11) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is |s#0@@3| (TSeq TInt))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 13) 12))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))
))
; Valid
