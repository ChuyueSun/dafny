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
(declare-fun |x#0@@0| () Int)
(declare-fun Ctor (T@T) Int)
(declare-fun intType () T@T)
(declare-fun realType () T@T)
(declare-fun boolType () T@T)
(declare-fun rmodeType () T@T)
(declare-fun stringType () T@T)
(declare-fun regexType () T@T)
(declare-fun int_2_U (Int) T@U)
(declare-fun U_2_int (T@U) Int)
(declare-fun type (T@U) T@T)
(declare-fun real_2_U (Real) T@U)
(declare-fun U_2_real (T@U) Real)
(declare-fun bool_2_U (Bool) T@U)
(declare-fun U_2_bool (T@U) Bool)
(declare-fun rmode_2_U (RoundingMode) T@U)
(declare-fun U_2_rmode (T@U) RoundingMode)
(declare-fun string_2_U (String) T@U)
(declare-fun U_2_string (T@U) String)
(declare-fun regex_2_U ((RegEx String)) T@U)
(declare-fun U_2_regex (T@U) (RegEx String))
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
(define-fun _module.__default.abs ((|x#0| Int) ) Int (ite (< |x#0| 0) (- 0 |x#0|) |x#0|))
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
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun Tagclass._System.___hFunc0 () T@U)
(declare-fun Tagclass._System.___hPartialFunc0 () T@U)
(declare-fun Tagclass._System.___hTotalFunc0 () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun class._System.Tuple2 () T@U)
(declare-fun |##_System._tuple#0._#Make0| () T@U)
(declare-fun Tagclass._System.Tuple0 () T@U)
(declare-fun class._System.Tuple0 () T@U)
(declare-fun class._module.__default () T@U)
(declare-fun Tagclass._module.__default () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
(declare-fun |tytagFamily$_#Func0| () T@U)
(declare-fun |tytagFamily$_#PartialFunc0| () T@U)
(declare-fun |tytagFamily$_#TotalFunc0| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun |tytagFamily$_tuple#0| () T@U)
(declare-fun tytagFamily$_default () T@U)
(declare-fun TyType () T@T)
(declare-fun TyTagType () T@T)
(declare-fun ClassNameType () T@T)
(declare-fun FieldType (T@T) T@T)
(declare-fun FieldTypeInv0 (T@T) T@T)
(declare-fun NameFamilyType () T@T)
(declare-fun DtCtorIdType () T@T)
(declare-fun TyTagFamilyType () T@T)
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
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun refType () T@T)
(declare-fun MapType1Type () T@T)
(declare-fun HandleTypeType () T@T)
(declare-fun BoxType () T@T)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Is (T@U T@U) Bool)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun |Set#Empty| (T@T) T@U)
(declare-fun MapType1Select (T@U T@U) T@U)
(declare-fun MapType1Store (T@U T@U T@U) T@U)
(declare-fun $IsAlloc (T@U T@U T@U) Bool)
(declare-fun TBitvector (Int) T@U)
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |MultiSet#Difference| (T@U T@U) T@U)
(declare-fun |MultiSet#Intersection| (T@U T@U) T@U)
(declare-fun |MultiSet#Union| (T@U T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |$IsA#_System.Tuple2| (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun |$IsA#_System.Tuple0| (T@U) Bool)
(declare-fun _System.Tuple0.___hMake0_q (T@U) Bool)
(declare-fun |MultiSet#FromSeq| (T@U) T@U)
(declare-fun |Seq#Empty| (T@T) T@U)
(declare-fun |MultiSet#Empty| (T@T) T@U)
(declare-fun SeqType (T@T) T@T)
(declare-fun SeqTypeInv0 (T@T) T@T)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.__default.abs#canCall| (Int) Bool)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |_System.Tuple2#Equal| (T@U T@U) Bool)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_System._tuple#0._#Make0| () T@U)
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
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun |ISet#Union| (T@U T@U) T@U)
(declare-fun |ISet#Intersection| (T@U T@U) T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun |Map#Card| (T@U) Int)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
(declare-fun |Set#Singleton| (T@U) T@U)
(declare-fun Tclass._System.Tuple0 () T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun Apply0 (T@U T@U T@U) T@U)
(declare-fun Handle0 (T@U T@U T@U) T@U)
(declare-fun |Set#Card| (T@U) Int)
(declare-fun |Map#Subtract| (T@U T@U) T@U)
(declare-fun |IMap#Subtract| (T@U T@U) T@U)
(declare-fun |Seq#FromArray| (T@U T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |_System.Tuple0#Equal| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun TISet (T@U) T@U)
(declare-fun |Math#clip| (Int) Int)
(declare-fun q@Int (Real) Int)
(declare-fun LitReal (Real) Real)
(declare-fun Lit (T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun charType () T@T)
(declare-fun $$Language$Dafny () Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MultiIndexField (T@U Int) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun AtLayer (T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Empty| (T@T T@T) T@U)
(declare-fun |IMap#Empty| (T@T T@T) T@U)
(declare-fun $HeapSuccGhost (T@U T@U) Bool)
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
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |IMap#Values| (T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |ISet#Disjoint| (T@U T@U) Bool)
(declare-fun |ISet#Difference| (T@U T@U) T@U)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
(declare-fun |MultiSet#Subset| (T@U T@U) Bool)
(declare-fun |_module.__default.abs#requires| (Int) Bool)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun |IMap#Items| (T@U) T@U)
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
(declare-fun |ISet#Empty| (T@T) T@U)
(declare-fun FieldOfDecl (T@T T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun |MultiSet#FromSet| (T@U) T@U)
(declare-fun |Seq#Singleton| (T@U) T@U)
(declare-fun |MultiSet#Singleton| (T@U) T@U)
(declare-fun $AlwaysAllocated (T@U) Bool)
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
(declare-fun Inv0_TBitvector (T@U) Int)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TISet (T@U) T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc0_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc0_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc0_0 (T@U) T@U)
(declare-fun INTERNAL_lt_boogie (Int Int) Bool)
(declare-fun INTERNAL_gt_boogie (Int Int) Bool)
(declare-fun |Map#Merge| (T@U T@U) T@U)
(declare-fun |IMap#Merge| (T@U T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |IMap#Build| (T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |MultiSet#Disjoint| (T@U T@U) Bool)
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
(declare-fun |Seq#Create| (T@U T@U Int T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |ISet#Subset| (T@U T@U) Bool)
(declare-fun |Seq#SameUntil| (T@U T@U Int) Bool)
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
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (Ctor TyType) 6) (= (type TBool) TyType)) (= (type TChar) TyType)) (= (type TInt) TyType)) (= (type TReal) TyType)) (= (type TORDINAL) TyType)) (= (Ctor TyTagType) 7)) (= (type TagBool) TyTagType)) (= (type TagChar) TyTagType)) (= (type TagInt) TyTagType)) (= (type TagReal) TyTagType)) (= (type TagORDINAL) TyTagType)) (= (type TagSet) TyTagType)) (= (type TagISet) TyTagType)) (= (type TagMultiSet) TyTagType)) (= (type TagSeq) TyTagType)) (= (type TagMap) TyTagType)) (= (type TagIMap) TyTagType)) (= (type TagClass) TyTagType)) (= (Ctor ClassNameType) 8)) (= (type class._System.int) ClassNameType)) (= (type class._System.bool) ClassNameType)) (= (type class._System.set) ClassNameType)) (= (type class._System.seq) ClassNameType)) (= (type class._System.multiset) ClassNameType)) (forall ((arg0@@11 T@T) ) (! (= (Ctor (FieldType arg0@@11)) 9)
 :qid |ctor:FieldType|
))) (forall ((arg0@@12 T@T) ) (! (= (FieldTypeInv0 (FieldType arg0@@12)) arg0@@12)
 :qid |typeInv:FieldTypeInv0|
 :pattern ( (FieldType arg0@@12))
))) (= (type alloc) (FieldType boolType))) (= (Ctor NameFamilyType) 10)) (= (type allocName) NameFamilyType)) (= (type Tagclass._System.nat) TyTagType)) (= (type class._System.object?) ClassNameType)) (= (type Tagclass._System.object?) TyTagType)) (= (type Tagclass._System.object) TyTagType)) (= (type class._System.array?) ClassNameType)) (= (type Tagclass._System.array?) TyTagType)) (= (type Tagclass._System.array) TyTagType)) (= (type Tagclass._System.___hFunc1) TyTagType)) (= (type Tagclass._System.___hPartialFunc1) TyTagType)) (= (type Tagclass._System.___hTotalFunc1) TyTagType)) (= (type Tagclass._System.___hFunc0) TyTagType)) (= (type Tagclass._System.___hPartialFunc0) TyTagType)) (= (type Tagclass._System.___hTotalFunc0) TyTagType)) (= (Ctor DtCtorIdType) 11)) (= (type |##_System._tuple#2._#Make2|) DtCtorIdType)) (= (type Tagclass._System.Tuple2) TyTagType)) (= (type class._System.Tuple2) ClassNameType)) (= (type |##_System._tuple#0._#Make0|) DtCtorIdType)) (= (type Tagclass._System.Tuple0) TyTagType)) (= (type class._System.Tuple0) ClassNameType)) (= (type class._module.__default) ClassNameType)) (= (type Tagclass._module.__default) TyTagType)) (= (Ctor TyTagFamilyType) 12)) (= (type tytagFamily$nat) TyTagFamilyType)) (= (type tytagFamily$object) TyTagFamilyType)) (= (type tytagFamily$array) TyTagFamilyType)) (= (type |tytagFamily$_#Func1|) TyTagFamilyType)) (= (type |tytagFamily$_#PartialFunc1|) TyTagFamilyType)) (= (type |tytagFamily$_#TotalFunc1|) TyTagFamilyType)) (= (type |tytagFamily$_#Func0|) TyTagFamilyType)) (= (type |tytagFamily$_#PartialFunc0|) TyTagFamilyType)) (= (type |tytagFamily$_#TotalFunc0|) TyTagFamilyType)) (= (type |tytagFamily$_tuple#2|) TyTagFamilyType)) (= (type |tytagFamily$_tuple#0|) TyTagFamilyType)) (= (type tytagFamily$_default) TyTagFamilyType)))
(assert (distinct TBool TChar TInt TReal TORDINAL TagBool TagChar TagInt TagReal TagORDINAL TagSet TagISet TagMultiSet TagSeq TagMap TagIMap TagClass class._System.int class._System.bool class._System.set class._System.seq class._System.multiset alloc allocName Tagclass._System.nat class._System.object? Tagclass._System.object? Tagclass._System.object class._System.array? Tagclass._System.array? Tagclass._System.array Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 Tagclass._System.___hFunc0 Tagclass._System.___hPartialFunc0 Tagclass._System.___hTotalFunc0 |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 class._System.Tuple2 |##_System._tuple#0._#Make0| Tagclass._System.Tuple0 class._System.Tuple0 class._module.__default Tagclass._module.__default tytagFamily$nat tytagFamily$object tytagFamily$array |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| |tytagFamily$_#Func0| |tytagFamily$_#PartialFunc0| |tytagFamily$_#TotalFunc0| |tytagFamily$_tuple#2| |tytagFamily$_tuple#0| tytagFamily$_default)
)
(assert  (and (and (and (and (and (and (and (and (and (and (forall ((arg0@@13 T@T) (arg1 T@T) ) (! (= (Ctor (MapType arg0@@13 arg1)) 13)
 :qid |ctor:MapType|
)) (forall ((arg0@@14 T@T) (arg1@@0 T@T) ) (! (= (MapTypeInv0 (MapType arg0@@14 arg1@@0)) arg0@@14)
 :qid |typeInv:MapTypeInv0|
 :pattern ( (MapType arg0@@14 arg1@@0))
))) (forall ((arg0@@15 T@T) (arg1@@1 T@T) ) (! (= (MapTypeInv1 (MapType arg0@@15 arg1@@1)) arg1@@1)
 :qid |typeInv:MapTypeInv1|
 :pattern ( (MapType arg0@@15 arg1@@1))
))) (forall ((arg0@@16 T@T) (arg1@@2 T@T) ) (! (= (Ctor (MapType0Type arg0@@16 arg1@@2)) 14)
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
 :qid |assertbpl.1580:19|
 :skolemid |304|
 :pattern ( (MapType0Select (|Map#Domain| m@@2) o))
 :pattern ( (MapType0Select (|Map#Domain| |m'|) o))
))))))
 :qid |assertbpl.1577:20|
 :skolemid |305|
 :pattern ( (|Map#Disjoint| m@@2 |m'|))
)))
(assert (= (FDim alloc) 0))
(assert (forall ((arg0@@22 T@U) ) (! (= (type (Tag arg0@@22)) TyTagType)
 :qid |funType:Tag|
 :pattern ( (Tag arg0@@22))
)))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (= (Tag TORDINAL) TagORDINAL))
(assert (forall ((arg0@@23 T@U) ) (! (= (type (DeclName arg0@@23)) NameFamilyType)
 :qid |funType:DeclName|
 :pattern ( (DeclName arg0@@23))
)))
(assert (= (DeclName alloc) allocName))
(assert  (and (and (and (and (and (and (and (and (and (and (and (= (Ctor refType) 15) (forall ((arg0@@24 T@U) (arg1@@7 T@U) ) (! (let ((alpha@@1 (FieldTypeInv0 (type arg1@@7))))
(= (type (MapType1Select arg0@@24 arg1@@7)) alpha@@1))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@24 arg1@@7))
))) (= (Ctor MapType1Type) 16)) (forall ((arg0@@25 T@U) (arg1@@8 T@U) (arg2@@0 T@U) ) (! (= (type (MapType1Store arg0@@25 arg1@@8 arg2@@0)) MapType1Type)
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@25 arg1@@8 arg2@@0))
))) (forall ((m@@3 T@U) (x0@@2 T@U) (val@@2 T@U) ) (! (let ((alpha@@2 (FieldTypeInv0 (type x0@@2))))
 (=> (= (type val@@2) alpha@@2) (= (MapType1Select (MapType1Store m@@3 x0@@2 val@@2) x0@@2) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (forall ((val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@4 x0@@3 val@@3) y0@@1) (MapType1Select m@@4 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@4 T@U) (m@@5 T@U) (x0@@4 T@U) (y0@@2 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@5 x0@@4 val@@4) y0@@2) (MapType1Select m@@5 y0@@2)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))) (= (Ctor HandleTypeType) 17)) (= (Ctor BoxType) 18)) (= (type $OneHeap) (MapType0Type refType MapType1Type))) (forall ((arg0@@26 T@U) (arg1@@9 T@U) ) (! (= (type (Tclass._System.___hFunc1 arg0@@26 arg1@@9)) TyType)
 :qid |funType:Tclass._System.___hFunc1|
 :pattern ( (Tclass._System.___hFunc1 arg0@@26 arg1@@9))
))) (forall ((arg0@@27 T@U) (arg1@@10 T@U) (arg2@@1 T@U) (arg3 T@U) (arg4 T@U) ) (! (= (type (Reads1 arg0@@27 arg1@@10 arg2@@1 arg3 arg4)) (MapType0Type BoxType boolType))
 :qid |funType:Reads1|
 :pattern ( (Reads1 arg0@@27 arg1@@10 arg2@@1 arg3 arg4))
))) (forall ((T T@T) ) (! (= (type (|Set#Empty| T)) (MapType0Type T boolType))
 :qid |funType:Set#Empty|
 :pattern ( (|Set#Empty| T))
))))
(assert (forall ((t0 T@U) (t1 T@U) (heap T@U) (f T@U) (bx0 T@U) ) (!  (=> (and (and (and (and (and (= (type t0) TyType) (= (type t1) TyType)) (= (type heap) (MapType0Type refType MapType1Type))) (= (type f) HandleTypeType)) (= (type bx0) BoxType)) (and (and (and ($IsGoodHeap heap) ($IsBox bx0 t0)) ($Is f (Tclass._System.___hFunc1 t0 t1))) (|Set#Equal| (Reads1 t0 t1 $OneHeap f bx0) (|Set#Empty| BoxType)))) (= (Requires1 t0 t1 $OneHeap f bx0) (Requires1 t0 t1 heap f bx0)))
 :qid |assertbpl.2149:15|
 :skolemid |389|
 :pattern ( (Requires1 t0 t1 $OneHeap f bx0) ($IsGoodHeap heap))
 :pattern ( (Requires1 t0 t1 heap f bx0))
)))
(assert (forall ((arg0@@28 Int) ) (! (= (type (TBitvector arg0@@28)) TyType)
 :qid |funType:TBitvector|
 :pattern ( (TBitvector arg0@@28))
)))
(assert (forall ((v T@U) (h T@U) ) (!  (=> (and (= (type v) intType) (= (type h) (MapType0Type refType MapType1Type))) ($IsAlloc v (TBitvector 0) h))
 :qid |assertbpl.332:15|
 :skolemid |65|
 :pattern ( ($IsAlloc v (TBitvector 0) h))
)))
(assert  (and (and (forall ((arg0@@29 T@U) ) (! (= (type (Tclass._System.array? arg0@@29)) TyType)
 :qid |funType:Tclass._System.array?|
 :pattern ( (Tclass._System.array? arg0@@29))
)) (= (type null) refType)) (forall ((arg0@@30 T@U) ) (! (= (type (dtype arg0@@30)) TyType)
 :qid |funType:dtype|
 :pattern ( (dtype arg0@@30))
))))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (and (= (type _System.array$arg) TyType) (= (type $o) refType)) (and (not (= $o null)) (= (dtype $o) (Tclass._System.array? _System.array$arg)))) ($Is (int_2_U (_System.array.Length $o)) TInt))
 :qid |assertbpl.1920:15|
 :skolemid |362|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
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
 :qid |assertbpl.1095:18|
 :skolemid |203|
 :pattern ( (|MultiSet#Card| (|MultiSet#Difference| a b)))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> (and (and (= (type h@@0) (MapType0Type refType MapType1Type)) (= (type k) (MapType0Type refType MapType1Type))) ($HeapSucc h@@0 k)) (forall ((o@@0 T@U) ) (!  (=> (and (= (type o@@0) refType) (U_2_bool (MapType1Select (MapType0Select h@@0 o@@0) alloc))) (U_2_bool (MapType1Select (MapType0Select k o@@0) alloc)))
 :qid |assertbpl.702:18|
 :skolemid |117|
 :pattern ( (MapType1Select (MapType0Select k o@@0) alloc))
)))
 :qid |assertbpl.699:15|
 :skolemid |118|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((_System.array$arg@@0 T@U) ($o@@0 T@U) ($h T@U) ) (!  (=> (and (and (= (type _System.array$arg@@0) TyType) (= (type $o@@0) refType)) (= (type $h) (MapType0Type refType MapType1Type))) (= ($IsAlloc $o@@0 (Tclass._System.array? _System.array$arg@@0) $h)  (or (= $o@@0 null) (U_2_bool (MapType1Select (MapType0Select $h $o@@0) alloc)))))
 :qid |assertbpl.1914:15|
 :skolemid |361|
 :pattern ( ($IsAlloc $o@@0 (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (forall ((o@@1 T@U) (p T@U) (r T@U) ) (!  (=> (and (and (and (= (type o@@1) BoxType) (= (type p) BoxType)) (= (type r) BoxType)) (and (|ORD#Less| o@@1 p) (|ORD#Less| p r))) (|ORD#Less| o@@1 r))
 :qid |assertbpl.483:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@1 p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o@@1 p) (|ORD#Less| o@@1 r))
)))
(assert (= (type Tclass._System.nat) TyType))
(assert (forall ((|x#0@@1| T@U) ($h@@0 T@U) ) (!  (=> (and (= (type |x#0@@1|) intType) (= (type $h@@0) (MapType0Type refType MapType1Type))) ($IsAlloc |x#0@@1| Tclass._System.nat $h@@0))
 :qid |assertbpl.1798:15|
 :skolemid |348|
 :pattern ( ($IsAlloc |x#0@@1| Tclass._System.nat $h@@0))
)))
(assert (= (Ctor DatatypeTypeType) 19))
(assert (forall ((d T@U) ) (!  (=> (and (= (type d) DatatypeTypeType) (|$IsA#_System.Tuple2| d)) (_System.Tuple2.___hMake2_q d))
 :qid |assertbpl.2671:15|
 :skolemid |470|
 :pattern ( (|$IsA#_System.Tuple2| d))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> (and (= (type d@@0) DatatypeTypeType) (|$IsA#_System.Tuple0| d@@0)) (_System.Tuple0.___hMake0_q d@@0))
 :qid |assertbpl.2751:15|
 :skolemid |478|
 :pattern ( (|$IsA#_System.Tuple0| d@@0))
)))
(assert  (and (and (and (and (forall ((arg0@@34 T@T) ) (! (= (Ctor (SeqType arg0@@34)) 20)
 :qid |ctor:SeqType|
)) (forall ((arg0@@35 T@T) ) (! (= (SeqTypeInv0 (SeqType arg0@@35)) arg0@@35)
 :qid |typeInv:SeqTypeInv0|
 :pattern ( (SeqType arg0@@35))
))) (forall ((arg0@@36 T@U) ) (! (let ((T@@4 (SeqTypeInv0 (type arg0@@36))))
(= (type (|MultiSet#FromSeq| arg0@@36)) (MapType0Type T@@4 intType)))
 :qid |funType:MultiSet#FromSeq|
 :pattern ( (|MultiSet#FromSeq| arg0@@36))
))) (forall ((T@@5 T@T) ) (! (= (type (|Seq#Empty| T@@5)) (SeqType T@@5))
 :qid |funType:Seq#Empty|
 :pattern ( (|Seq#Empty| T@@5))
))) (forall ((T@@6 T@T) ) (! (= (type (|MultiSet#Empty| T@@6)) (MapType0Type T@@6 intType))
 :qid |funType:MultiSet#Empty|
 :pattern ( (|MultiSet#Empty| T@@6))
))))
(assert (forall ((T@@7 T@T) ) (! (= (|MultiSet#FromSeq| (|Seq#Empty| T@@7)) (|MultiSet#Empty| T@@7))
 :skolemid |213|
)))
(assert (= (type Tclass._System.object?) TyType))
(assert (forall (($o@@1 T@U) ($h@@1 T@U) ) (!  (=> (and (= (type $o@@1) refType) (= (type $h@@1) (MapType0Type refType MapType1Type))) (= ($IsAlloc $o@@1 Tclass._System.object? $h@@1)  (or (= $o@@1 null) (U_2_bool (MapType1Select (MapType0Select $h@@1 $o@@1) alloc)))))
 :qid |assertbpl.1822:15|
 :skolemid |351|
 :pattern ( ($IsAlloc $o@@1 Tclass._System.object? $h@@1))
)))
(assert (= (type Tclass._module.__default) TyType))
(assert (forall (($o@@2 T@U) ($h@@2 T@U) ) (!  (=> (and (= (type $o@@2) refType) (= (type $h@@2) (MapType0Type refType MapType1Type))) (= ($IsAlloc $o@@2 Tclass._module.__default $h@@2)  (or (= $o@@2 null) (U_2_bool (MapType1Select (MapType0Select $h@@2 $o@@2) alloc)))))
 :qid |assertbpl.2798:15|
 :skolemid |484|
 :pattern ( ($IsAlloc $o@@2 Tclass._module.__default $h@@2))
)))
(assert (forall ((arg0@@37 T@U) (arg1@@14 T@U) ) (! (let ((T@@8 (type arg1@@14)))
(= (type (|Seq#Build| arg0@@37 arg1@@14)) (SeqType T@@8)))
 :qid |funType:Seq#Build|
 :pattern ( (|Seq#Build| arg0@@37 arg1@@14))
)))
(assert (forall ((s T@U) (v@@0 T@U) (x@@8 T@U) ) (! (let ((T@@9 (type v@@0)))
 (=> (and (= (type s) (SeqType T@@9)) (= (type x@@8) T@@9)) (= (|Seq#Contains| (|Seq#Build| s v@@0) x@@8)  (or (= v@@0 x@@8) (|Seq#Contains| s x@@8)))))
 :qid |assertbpl.1279:18|
 :skolemid |240|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v@@0) x@@8))
)))
(assert  (and (and (forall ((arg0@@38 T@U) ) (! (= (type (Tclass._System.___hFunc0 arg0@@38)) TyType)
 :qid |funType:Tclass._System.___hFunc0|
 :pattern ( (Tclass._System.___hFunc0 arg0@@38))
)) (forall ((arg0@@39 T@U) (arg1@@15 T@U) (arg2@@2 T@U) ) (! (= (type (Reads0 arg0@@39 arg1@@15 arg2@@2)) (MapType0Type BoxType boolType))
 :qid |funType:Reads0|
 :pattern ( (Reads0 arg0@@39 arg1@@15 arg2@@2))
))) (forall ((arg0@@40 T@U) ) (! (= (type ($Box arg0@@40)) BoxType)
 :qid |funType:$Box|
 :pattern ( ($Box arg0@@40))
))))
(assert (forall ((t0@@0 T@U) (h0 T@U) (h1 T@U) (f@@0 T@U) ) (!  (=> (and (and (and (= (type t0@@0) TyType) (= (type h0) (MapType0Type refType MapType1Type))) (= (type h1) (MapType0Type refType MapType1Type))) (= (type f@@0) HandleTypeType)) (=> (and (and (and (and ($HeapSucc h0 h1) ($IsGoodHeap h0)) ($IsGoodHeap h1)) ($Is f@@0 (Tclass._System.___hFunc0 t0@@0))) (forall ((o@@2 T@U) (fld T@U) ) (! (let ((a@@0 (FieldTypeInv0 (type fld))))
 (=> (and (and (= (type o@@2) refType) (= (type fld) (FieldType a@@0))) (and (not (= o@@2 null)) (U_2_bool (MapType0Select (Reads0 t0@@0 h0 f@@0) ($Box o@@2))))) (= (MapType1Select (MapType0Select h0 o@@2) fld) (MapType1Select (MapType0Select h1 o@@2) fld))))
 :qid |assertbpl.2379:22|
 :skolemid |424|
 :no-pattern (type o@@2)
 :no-pattern (type fld)
 :no-pattern (U_2_int o@@2)
 :no-pattern (U_2_bool o@@2)
 :no-pattern (U_2_int fld)
 :no-pattern (U_2_bool fld)
))) (= (Requires0 t0@@0 h0 f@@0) (Requires0 t0@@0 h1 f@@0))))
 :qid |assertbpl.2372:15|
 :skolemid |425|
 :pattern ( ($HeapSucc h0 h1) (Requires0 t0@@0 h1 f@@0))
)))
(assert (forall ((t0@@1 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@1 T@U) ) (!  (=> (and (and (and (= (type t0@@1) TyType) (= (type h0@@0) (MapType0Type refType MapType1Type))) (= (type h1@@0) (MapType0Type refType MapType1Type))) (= (type f@@1) HandleTypeType)) (=> (and (and (and (and ($HeapSucc h0@@0 h1@@0) ($IsGoodHeap h0@@0)) ($IsGoodHeap h1@@0)) ($Is f@@1 (Tclass._System.___hFunc0 t0@@1))) (forall ((o@@3 T@U) (fld@@0 T@U) ) (! (let ((a@@1 (FieldTypeInv0 (type fld@@0))))
 (=> (and (and (= (type o@@3) refType) (= (type fld@@0) (FieldType a@@1))) (and (not (= o@@3 null)) (U_2_bool (MapType0Select (Reads0 t0@@1 h1@@0 f@@1) ($Box o@@3))))) (= (MapType1Select (MapType0Select h0@@0 o@@3) fld@@0) (MapType1Select (MapType0Select h1@@0 o@@3) fld@@0))))
 :qid |assertbpl.2391:22|
 :skolemid |426|
 :no-pattern (type o@@3)
 :no-pattern (type fld@@0)
 :no-pattern (U_2_int o@@3)
 :no-pattern (U_2_bool o@@3)
 :no-pattern (U_2_int fld@@0)
 :no-pattern (U_2_bool fld@@0)
))) (= (Requires0 t0@@1 h0@@0 f@@1) (Requires0 t0@@1 h1@@0 f@@1))))
 :qid |assertbpl.2384:15|
 :skolemid |427|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires0 t0@@1 h1@@0 f@@1))
)))
(assert (forall ((arg0@@41 T@U) (arg1@@16 T@U) (arg2@@3 T@U) ) (! (let ((V@@0 (MapType0TypeInv1 (type arg1@@16))))
(let ((U@@1 (MapType0TypeInv0 (type arg0@@41))))
(= (type (|Map#Glue| arg0@@41 arg1@@16 arg2@@3)) (MapType U@@1 V@@0))))
 :qid |funType:Map#Glue|
 :pattern ( (|Map#Glue| arg0@@41 arg1@@16 arg2@@3))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (t T@U) ) (! (let ((V@@1 (MapType0TypeInv1 (type b@@0))))
(let ((U@@2 (MapType0TypeInv0 (type a@@2))))
 (=> (and (and (= (type a@@2) (MapType0Type U@@2 boolType)) (= (type b@@0) (MapType0Type U@@2 V@@1))) (= (type t) TyType)) (= (|Map#Domain| (|Map#Glue| a@@2 b@@0 t)) a@@2))))
 :qid |assertbpl.1509:20|
 :skolemid |289|
 :pattern ( (|Map#Domain| (|Map#Glue| a@@2 b@@0 t)))
)))
(assert (forall ((arg0@@42 T@U) ) (! (let ((V@@2 (MapTypeInv1 (type arg0@@42))))
(let ((U@@3 (MapTypeInv0 (type arg0@@42))))
(= (type (|Map#Elements| arg0@@42)) (MapType0Type U@@3 V@@2))))
 :qid |funType:Map#Elements|
 :pattern ( (|Map#Elements| arg0@@42))
)))
(assert (forall ((a@@3 T@U) (b@@1 T@U) (t@@0 T@U) ) (! (let ((V@@3 (MapType0TypeInv1 (type b@@1))))
(let ((U@@4 (MapType0TypeInv0 (type a@@3))))
 (=> (and (and (= (type a@@3) (MapType0Type U@@4 boolType)) (= (type b@@1) (MapType0Type U@@4 V@@3))) (= (type t@@0) TyType)) (= (|Map#Elements| (|Map#Glue| a@@3 b@@1 t@@0)) b@@1))))
 :qid |assertbpl.1513:20|
 :skolemid |290|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@3 b@@1 t@@0)))
)))
(assert  (and (and (and (and (forall ((arg0@@43 T@T) (arg1@@17 T@T) ) (! (= (Ctor (IMapType arg0@@43 arg1@@17)) 21)
 :qid |ctor:IMapType|
)) (forall ((arg0@@44 T@T) (arg1@@18 T@T) ) (! (= (IMapTypeInv0 (IMapType arg0@@44 arg1@@18)) arg0@@44)
 :qid |typeInv:IMapTypeInv0|
 :pattern ( (IMapType arg0@@44 arg1@@18))
))) (forall ((arg0@@45 T@T) (arg1@@19 T@T) ) (! (= (IMapTypeInv1 (IMapType arg0@@45 arg1@@19)) arg1@@19)
 :qid |typeInv:IMapTypeInv1|
 :pattern ( (IMapType arg0@@45 arg1@@19))
))) (forall ((arg0@@46 T@U) ) (! (let ((U@@5 (IMapTypeInv0 (type arg0@@46))))
(= (type (|IMap#Domain| arg0@@46)) (MapType0Type U@@5 boolType)))
 :qid |funType:IMap#Domain|
 :pattern ( (|IMap#Domain| arg0@@46))
))) (forall ((arg0@@47 T@U) (arg1@@20 T@U) (arg2@@4 T@U) ) (! (let ((V@@4 (MapType0TypeInv1 (type arg1@@20))))
(let ((U@@6 (MapType0TypeInv0 (type arg0@@47))))
(= (type (|IMap#Glue| arg0@@47 arg1@@20 arg2@@4)) (IMapType U@@6 V@@4))))
 :qid |funType:IMap#Glue|
 :pattern ( (|IMap#Glue| arg0@@47 arg1@@20 arg2@@4))
))))
(assert (forall ((a@@4 T@U) (b@@2 T@U) (t@@1 T@U) ) (! (let ((V@@5 (MapType0TypeInv1 (type b@@2))))
(let ((U@@7 (MapType0TypeInv0 (type a@@4))))
 (=> (and (and (= (type a@@4) (MapType0Type U@@7 boolType)) (= (type b@@2) (MapType0Type U@@7 V@@5))) (= (type t@@1) TyType)) (= (|IMap#Domain| (|IMap#Glue| a@@4 b@@2 t@@1)) a@@4))))
 :qid |assertbpl.1641:20|
 :skolemid |319|
 :pattern ( (|IMap#Domain| (|IMap#Glue| a@@4 b@@2 t@@1)))
)))
(assert (forall ((arg0@@48 T@U) ) (! (let ((V@@6 (IMapTypeInv1 (type arg0@@48))))
(let ((U@@8 (IMapTypeInv0 (type arg0@@48))))
(= (type (|IMap#Elements| arg0@@48)) (MapType0Type U@@8 V@@6))))
 :qid |funType:IMap#Elements|
 :pattern ( (|IMap#Elements| arg0@@48))
)))
(assert (forall ((a@@5 T@U) (b@@3 T@U) (t@@2 T@U) ) (! (let ((V@@7 (MapType0TypeInv1 (type b@@3))))
(let ((U@@9 (MapType0TypeInv0 (type a@@5))))
 (=> (and (and (= (type a@@5) (MapType0Type U@@9 boolType)) (= (type b@@3) (MapType0Type U@@9 V@@7))) (= (type t@@2) TyType)) (= (|IMap#Elements| (|IMap#Glue| a@@5 b@@3 t@@2)) b@@3))))
 :qid |assertbpl.1645:20|
 :skolemid |320|
 :pattern ( (|IMap#Elements| (|IMap#Glue| a@@5 b@@3 t@@2)))
)))
(assert (forall ((v@@1 T@U) ) (!  (=> (= (type v@@1) intType) ($Is v@@1 (TBitvector 0)))
 :qid |assertbpl.264:15|
 :skolemid |44|
 :pattern ( ($Is v@@1 (TBitvector 0)))
)))
(assert (forall ((a@@6 Int) (b@@4 Int) ) (!  (or (= (|Math#min| a@@6 b@@4) a@@6) (= (|Math#min| a@@6 b@@4) b@@4))
 :qid |assertbpl.990:15|
 :skolemid |179|
 :pattern ( (|Math#min| a@@6 b@@4))
)))
(assert (forall ((arg0@@49 T@U) ) (! (= (type (Tclass._System.array arg0@@49)) TyType)
 :qid |funType:Tclass._System.array|
 :pattern ( (Tclass._System.array arg0@@49))
)))
(assert (forall ((_System.array$arg@@1 T@U) (|c#0| T@U) ($h@@3 T@U) ) (!  (=> (and (and (= (type _System.array$arg@@1) TyType) (= (type |c#0|) refType)) (= (type $h@@3) (MapType0Type refType MapType1Type))) (= ($IsAlloc |c#0| (Tclass._System.array _System.array$arg@@1) $h@@3) ($IsAlloc |c#0| (Tclass._System.array? _System.array$arg@@1) $h@@3)))
 :qid |assertbpl.1967:15|
 :skolemid |368|
 :pattern ( ($IsAlloc |c#0| (Tclass._System.array _System.array$arg@@1) $h@@3))
)))
(assert (forall ((arg0@@50 T@U) ) (! (= (type (Tclass._System.___hPartialFunc0 arg0@@50)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc0|
 :pattern ( (Tclass._System.___hPartialFunc0 arg0@@50))
)))
(assert (forall ((|#$R| T@U) (|f#0| T@U) ($h@@4 T@U) ) (!  (=> (and (and (= (type |#$R|) TyType) (= (type |f#0|) HandleTypeType)) (= (type $h@@4) (MapType0Type refType MapType1Type))) (= ($IsAlloc |f#0| (Tclass._System.___hPartialFunc0 |#$R|) $h@@4) ($IsAlloc |f#0| (Tclass._System.___hFunc0 |#$R|) $h@@4)))
 :qid |assertbpl.2497:15|
 :skolemid |445|
 :pattern ( ($IsAlloc |f#0| (Tclass._System.___hPartialFunc0 |#$R|) $h@@4))
)))
(assert (forall ((arg0@@51 T@U) ) (! (= (type (Tclass._System.___hTotalFunc0 arg0@@51)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc0|
 :pattern ( (Tclass._System.___hTotalFunc0 arg0@@51))
)))
(assert (forall ((|#$R@@0| T@U) (|f#0@@0| T@U) ($h@@5 T@U) ) (!  (=> (and (and (= (type |#$R@@0|) TyType) (= (type |f#0@@0|) HandleTypeType)) (= (type $h@@5) (MapType0Type refType MapType1Type))) (= ($IsAlloc |f#0@@0| (Tclass._System.___hTotalFunc0 |#$R@@0|) $h@@5) ($IsAlloc |f#0@@0| (Tclass._System.___hPartialFunc0 |#$R@@0|) $h@@5)))
 :qid |assertbpl.2533:15|
 :skolemid |450|
 :pattern ( ($IsAlloc |f#0@@0| (Tclass._System.___hTotalFunc0 |#$R@@0|) $h@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@2| Int) ) (!  (=> (or (|_module.__default.abs#canCall| |x#0@@2|) (not (= 0 $FunctionContextHeight))) (= (_module.__default.abs |x#0@@2|) (ite (< |x#0@@2| 0) (- 0 |x#0@@2|) |x#0@@2|)))
 :qid |assertbpl.2826:16|
 :skolemid |487|
 :pattern ( (_module.__default.abs |x#0@@2|))
))))
(assert  (and (forall ((arg0@@52 T@U) (arg1@@21 T@U) ) (! (= (type (|ORD#Minus| arg0@@52 arg1@@21)) BoxType)
 :qid |funType:ORD#Minus|
 :pattern ( (|ORD#Minus| arg0@@52 arg1@@21))
)) (forall ((arg0@@53 Int) ) (! (= (type (|ORD#FromNat| arg0@@53)) BoxType)
 :qid |funType:ORD#FromNat|
 :pattern ( (|ORD#FromNat| arg0@@53))
))))
(assert (forall ((o@@4 T@U) (m@@6 Int) (n Int) ) (!  (=> (= (type o@@4) BoxType) (=> (and (and (<= 0 m@@6) (<= 0 n)) (<= (+ m@@6 n) (|ORD#Offset| o@@4))) (= (|ORD#Minus| (|ORD#Minus| o@@4 (|ORD#FromNat| m@@6)) (|ORD#FromNat| n)) (|ORD#Minus| o@@4 (|ORD#FromNat| (+ m@@6 n))))))
 :qid |assertbpl.532:15|
 :skolemid |97|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@4 (|ORD#FromNat| m@@6)) (|ORD#FromNat| n)))
)))
(assert (forall ((arg0@@54 T@U) (arg1@@22 T@U) ) (! (= (type (Tclass._System.Tuple2 arg0@@54 arg1@@22)) TyType)
 :qid |funType:Tclass._System.Tuple2|
 :pattern ( (Tclass._System.Tuple2 arg0@@54 arg1@@22))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@1 T@U) ) (!  (=> (and (and (and (= (type |_System._tuple#2$T0|) TyType) (= (type |_System._tuple#2$T1|) TyType)) (= (type d@@1) DatatypeTypeType)) ($Is d@@1 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|))) (_System.Tuple2.___hMake2_q d@@1))
 :qid |assertbpl.2676:15|
 :skolemid |471|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1) ($Is d@@1 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert  (and (forall ((arg0@@55 T@U) ) (! (= (type (_System.Tuple2._0 arg0@@55)) BoxType)
 :qid |funType:_System.Tuple2._0|
 :pattern ( (_System.Tuple2._0 arg0@@55))
)) (forall ((arg0@@56 T@U) ) (! (= (type (_System.Tuple2._1 arg0@@56)) BoxType)
 :qid |funType:_System.Tuple2._1|
 :pattern ( (_System.Tuple2._1 arg0@@56))
))))
(assert (forall ((a@@7 T@U) (b@@5 T@U) ) (!  (=> (and (and (= (type a@@7) DatatypeTypeType) (= (type b@@5) DatatypeTypeType)) true) (= (|_System.Tuple2#Equal| a@@7 b@@5)  (and (= (_System.Tuple2._0 a@@7) (_System.Tuple2._0 b@@5)) (= (_System.Tuple2._1 a@@7) (_System.Tuple2._1 b@@5)))))
 :qid |assertbpl.2685:15|
 :skolemid |472|
 :pattern ( (|_System.Tuple2#Equal| a@@7 b@@5))
)))
(assert (forall ((x@@9 T@U) ) (! (let ((T@@10 (type x@@9)))
 (not (|Seq#Contains| (|Seq#Empty| T@@10) x@@9)))
 :qid |assertbpl.1270:18|
 :skolemid |238|
 :pattern ( (let ((T@@10 (type x@@9)))
(|Seq#Contains| (|Seq#Empty| T@@10) x@@9)))
)))
(assert  (and (forall ((arg0@@57 T@U) ) (! (= (type (DatatypeCtorId arg0@@57)) DtCtorIdType)
 :qid |funType:DatatypeCtorId|
 :pattern ( (DatatypeCtorId arg0@@57))
)) (= (type |#_System._tuple#0._#Make0|) DatatypeTypeType)))
(assert (= (DatatypeCtorId |#_System._tuple#0._#Make0|) |##_System._tuple#0._#Make0|))
(assert (forall ((arg0@@58 T@U) (arg1@@23 Int) ) (! (let ((T@@11 (SeqTypeInv0 (type arg0@@58))))
(= (type (|Seq#Drop| arg0@@58 arg1@@23)) (SeqType T@@11)))
 :qid |funType:Seq#Drop|
 :pattern ( (|Seq#Drop| arg0@@58 arg1@@23))
)))
(assert (forall ((s@@0 T@U) (v@@2 T@U) (n@@0 Int) ) (! (let ((T@@12 (type v@@2)))
 (=> (= (type s@@0) (SeqType T@@12)) (=> (and (<= 0 n@@0) (<= n@@0 (|Seq#Length| s@@0))) (= (|Seq#Drop| (|Seq#Build| s@@0 v@@2) n@@0) (|Seq#Build| (|Seq#Drop| s@@0 n@@0) v@@2)))))
 :qid |assertbpl.1400:18|
 :skolemid |266|
 :pattern ( (|Seq#Drop| (|Seq#Build| s@@0 v@@2) n@@0))
)))
(assert (forall ((arg0@@59 T@U) ) (! (= (type (TMultiSet arg0@@59)) TyType)
 :qid |funType:TMultiSet|
 :pattern ( (TMultiSet arg0@@59))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) ) (!  (=> (and (and (= (type v@@3) (MapType0Type BoxType intType)) (= (type t0@@2) TyType)) ($Is v@@3 (TMultiSet t0@@2))) ($IsGoodMultiSet v@@3))
 :qid |assertbpl.279:15|
 :skolemid |51|
 :pattern ( ($Is v@@3 (TMultiSet t0@@2)))
)))
(assert (forall (($o@@3 T@U) ) (!  (=> (= (type $o@@3) refType) (= ($Is $o@@3 Tclass._module.__default)  (or (= $o@@3 null) (= (dtype $o@@3) Tclass._module.__default))))
 :qid |assertbpl.2792:15|
 :skolemid |483|
 :pattern ( ($Is $o@@3 Tclass._module.__default))
)))
(assert (forall ((s@@1 T@U) ) (! (let ((T@@13 (SeqTypeInv0 (type s@@1))))
 (=> (= (type s@@1) (SeqType T@@13)) ($IsGoodMultiSet (|MultiSet#FromSeq| s@@1))))
 :qid |assertbpl.1143:18|
 :skolemid |214|
 :pattern ( (|MultiSet#FromSeq| s@@1))
)))
(assert  (and (forall ((arg0@@60 T@U) (arg1@@24 Int) ) (! (let ((T@@14 (SeqTypeInv0 (type arg0@@60))))
(= (type (|Seq#Index| arg0@@60 arg1@@24)) T@@14))
 :qid |funType:Seq#Index|
 :pattern ( (|Seq#Index| arg0@@60 arg1@@24))
)) (forall ((arg0@@61 T@U) (arg1@@25 Int) (arg2@@5 T@U) ) (! (let ((T@@15 (type arg2@@5)))
(= (type (|Seq#Update| arg0@@61 arg1@@25 arg2@@5)) (SeqType T@@15)))
 :qid |funType:Seq#Update|
 :pattern ( (|Seq#Update| arg0@@61 arg1@@25 arg2@@5))
))))
(assert (forall ((s@@2 T@U) (i Int) (v@@4 T@U) (n@@1 Int) ) (! (let ((T@@16 (type v@@4)))
 (=> (= (type s@@2) (SeqType T@@16)) (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length| s@@2))) (and (=> (= i n@@1) (= (|Seq#Index| (|Seq#Update| s@@2 i v@@4) n@@1) v@@4)) (=> (not (= i n@@1)) (= (|Seq#Index| (|Seq#Update| s@@2 i v@@4) n@@1) (|Seq#Index| s@@2 n@@1)))))))
 :qid |assertbpl.1255:18|
 :skolemid |235|
 :pattern ( (|Seq#Index| (|Seq#Update| s@@2 i v@@4) n@@1))
)))
(assert  (and (and (and (and (and (and (and (forall ((arg0@@62 T@T) (arg1@@26 T@T) ) (! (= (Ctor (MapType2Type arg0@@62 arg1@@26)) 22)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@63 T@T) (arg1@@27 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@63 arg1@@27)) arg0@@63)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@63 arg1@@27))
))) (forall ((arg0@@64 T@T) (arg1@@28 T@T) ) (! (= (MapType2TypeInv1 (MapType2Type arg0@@64 arg1@@28)) arg1@@28)
 :qid |typeInv:MapType2TypeInv1|
 :pattern ( (MapType2Type arg0@@64 arg1@@28))
))) (forall ((arg0@@65 T@U) (arg1@@29 T@U) (arg2@@6 T@U) ) (! (let ((aVar1@@2 (MapType2TypeInv1 (type arg0@@65))))
(= (type (MapType2Select arg0@@65 arg1@@29 arg2@@6)) aVar1@@2))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@65 arg1@@29 arg2@@6))
))) (forall ((arg0@@66 T@U) (arg1@@30 T@U) (arg2@@7 T@U) (arg3@@0 T@U) ) (! (let ((aVar1@@3 (type arg3@@0)))
(let ((aVar0@@0 (type arg1@@30)))
(= (type (MapType2Store arg0@@66 arg1@@30 arg2@@7 arg3@@0)) (MapType2Type aVar0@@0 aVar1@@3))))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@66 arg1@@30 arg2@@7 arg3@@0))
))) (forall ((m@@7 T@U) (x0@@5 T@U) (x1 T@U) (val@@5 T@U) ) (! (let ((aVar1@@4 (MapType2TypeInv1 (type m@@7))))
 (=> (= (type val@@5) aVar1@@4) (= (MapType2Select (MapType2Store m@@7 x0@@5 x1 val@@5) x0@@5 x1) val@@5)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (and (forall ((val@@6 T@U) (m@@8 T@U) (x0@@6 T@U) (x1@@0 T@U) (y0@@3 T@U) (y1 T@U) ) (!  (or (= x0@@6 y0@@3) (= (MapType2Select (MapType2Store m@@8 x0@@6 x1@@0 val@@6) y0@@3 y1) (MapType2Select m@@8 y0@@3 y1)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@7 T@U) (m@@9 T@U) (x0@@7 T@U) (x1@@1 T@U) (y0@@4 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType2Select (MapType2Store m@@9 x0@@7 x1@@1 val@@7) y0@@4 y1@@0) (MapType2Select m@@9 y0@@4 y1@@0)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((val@@8 T@U) (m@@10 T@U) (x0@@8 T@U) (x1@@2 T@U) (y0@@5 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@10 x0@@8 x1@@2 val@@8) y0@@5 y1@@1) (MapType2Select m@@10 y0@@5 y1@@1)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (forall ((arg0@@67 T@U) (arg1@@31 T@U) (arg2@@8 T@U) (arg3@@1 Bool) ) (! (= (type (|lambda#0| arg0@@67 arg1@@31 arg2@@8 arg3@@1)) (MapType2Type refType boolType))
 :qid |funType:lambda#0|
 :pattern ( (|lambda#0| arg0@@67 arg1@@31 arg2@@8 arg3@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@4 T@U) ($f T@U) ) (! (let ((alpha@@3 (FieldTypeInv0 (type $f))))
 (=> (and (and (and (and (= (type |l#0|) refType) (= (type |l#1|) (MapType0Type refType MapType1Type))) (= (type |l#2|) (FieldType boolType))) (= (type $o@@4) refType)) (= (type $f) (FieldType alpha@@3))) (= (U_2_bool (MapType2Select (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@4 $f))  (=> (and (not (= $o@@4 |l#0|)) (U_2_bool (MapType1Select (MapType0Select |l#1| $o@@4) |l#2|))) |l#3|))))
 :qid |assertbpl.174:1|
 :skolemid |491|
 :pattern ( (MapType2Select (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@4 $f))
)))
(assert (forall ((arg0@@68 T@U) (arg1@@32 T@U) ) (! (let ((T@@17 (MapType0TypeInv0 (type arg0@@68))))
(= (type (|Set#Union| arg0@@68 arg1@@32)) (MapType0Type T@@17 boolType)))
 :qid |funType:Set#Union|
 :pattern ( (|Set#Union| arg0@@68 arg1@@32))
)))
(assert (forall ((a@@8 T@U) (b@@6 T@U) ) (! (let ((T@@18 (MapType0TypeInv0 (type a@@8))))
 (=> (and (= (type a@@8) (MapType0Type T@@18 boolType)) (= (type b@@6) (MapType0Type T@@18 boolType))) (= (|Set#Union| (|Set#Union| a@@8 b@@6) b@@6) (|Set#Union| a@@8 b@@6))))
 :qid |assertbpl.833:18|
 :skolemid |140|
 :pattern ( (|Set#Union| (|Set#Union| a@@8 b@@6) b@@6))
)))
(assert (forall ((arg0@@69 T@U) (arg1@@33 T@U) ) (! (let ((T@@19 (MapType0TypeInv0 (type arg0@@69))))
(= (type (|Set#Intersection| arg0@@69 arg1@@33)) (MapType0Type T@@19 boolType)))
 :qid |funType:Set#Intersection|
 :pattern ( (|Set#Intersection| arg0@@69 arg1@@33))
)))
(assert (forall ((a@@9 T@U) (b@@7 T@U) ) (! (let ((T@@20 (MapType0TypeInv0 (type a@@9))))
 (=> (and (= (type a@@9) (MapType0Type T@@20 boolType)) (= (type b@@7) (MapType0Type T@@20 boolType))) (= (|Set#Intersection| (|Set#Intersection| a@@9 b@@7) b@@7) (|Set#Intersection| a@@9 b@@7))))
 :qid |assertbpl.841:18|
 :skolemid |142|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@9 b@@7) b@@7))
)))
(assert (forall ((arg0@@70 T@U) (arg1@@34 T@U) ) (! (let ((T@@21 (MapType0TypeInv0 (type arg0@@70))))
(= (type (|ISet#Union| arg0@@70 arg1@@34)) (MapType0Type T@@21 boolType)))
 :qid |funType:ISet#Union|
 :pattern ( (|ISet#Union| arg0@@70 arg1@@34))
)))
(assert (forall ((a@@10 T@U) (b@@8 T@U) ) (! (let ((T@@22 (MapType0TypeInv0 (type a@@10))))
 (=> (and (= (type a@@10) (MapType0Type T@@22 boolType)) (= (type b@@8) (MapType0Type T@@22 boolType))) (= (|ISet#Union| (|ISet#Union| a@@10 b@@8) b@@8) (|ISet#Union| a@@10 b@@8))))
 :qid |assertbpl.936:18|
 :skolemid |164|
 :pattern ( (|ISet#Union| (|ISet#Union| a@@10 b@@8) b@@8))
)))
(assert (forall ((arg0@@71 T@U) (arg1@@35 T@U) ) (! (let ((T@@23 (MapType0TypeInv0 (type arg0@@71))))
(= (type (|ISet#Intersection| arg0@@71 arg1@@35)) (MapType0Type T@@23 boolType)))
 :qid |funType:ISet#Intersection|
 :pattern ( (|ISet#Intersection| arg0@@71 arg1@@35))
)))
(assert (forall ((a@@11 T@U) (b@@9 T@U) ) (! (let ((T@@24 (MapType0TypeInv0 (type a@@11))))
 (=> (and (= (type a@@11) (MapType0Type T@@24 boolType)) (= (type b@@9) (MapType0Type T@@24 boolType))) (= (|ISet#Intersection| (|ISet#Intersection| a@@11 b@@9) b@@9) (|ISet#Intersection| a@@11 b@@9))))
 :qid |assertbpl.944:18|
 :skolemid |166|
 :pattern ( (|ISet#Intersection| (|ISet#Intersection| a@@11 b@@9) b@@9))
)))
(assert (forall ((a@@12 T@U) (b@@10 T@U) ) (! (let ((T@@25 (MapType0TypeInv0 (type a@@12))))
 (=> (and (= (type a@@12) (MapType0Type T@@25 intType)) (= (type b@@10) (MapType0Type T@@25 intType))) (= (|MultiSet#Intersection| (|MultiSet#Intersection| a@@12 b@@10) b@@10) (|MultiSet#Intersection| a@@12 b@@10))))
 :qid |assertbpl.1075:18|
 :skolemid |199|
 :pattern ( (|MultiSet#Intersection| (|MultiSet#Intersection| a@@12 b@@10) b@@10))
)))
(assert (forall ((f@@2 T@U) (t0@@3 T@U) (t1@@0 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and (and (and (and (= (type f@@2) HandleTypeType) (= (type t0@@3) TyType)) (= (type t1@@0) TyType)) (= (type u0) TyType)) (= (type u1) TyType)) (and (and ($Is f@@2 (Tclass._System.___hFunc1 t0@@3 t1@@0)) (forall ((bx T@U) ) (!  (=> (and (= (type bx) BoxType) ($IsBox bx u0)) ($IsBox bx t0@@3))
 :qid |assertbpl.2170:19|
 :skolemid |392|
 :pattern ( ($IsBox bx u0))
 :pattern ( ($IsBox bx t0@@3))
))) (forall ((bx@@0 T@U) ) (!  (=> (and (= (type bx@@0) BoxType) ($IsBox bx@@0 t1@@0)) ($IsBox bx@@0 u1))
 :qid |assertbpl.2173:19|
 :skolemid |393|
 :pattern ( ($IsBox bx@@0 t1@@0))
 :pattern ( ($IsBox bx@@0 u1))
)))) ($Is f@@2 (Tclass._System.___hFunc1 u0 u1)))
 :qid |assertbpl.2167:15|
 :skolemid |394|
 :pattern ( ($Is f@@2 (Tclass._System.___hFunc1 t0@@3 t1@@0)) ($Is f@@2 (Tclass._System.___hFunc1 u0 u1)))
)))
(assert  (and (forall ((arg0@@72 T@U) (arg1@@36 Int) ) (! (let ((T@@26 (SeqTypeInv0 (type arg0@@72))))
(= (type (|Seq#Take| arg0@@72 arg1@@36)) (SeqType T@@26)))
 :qid |funType:Seq#Take|
 :pattern ( (|Seq#Take| arg0@@72 arg1@@36))
)) (forall ((arg0@@73 T@U) (arg1@@37 T@U) ) (! (let ((T@@27 (SeqTypeInv0 (type arg0@@73))))
(= (type (|Seq#Append| arg0@@73 arg1@@37)) (SeqType T@@27)))
 :qid |funType:Seq#Append|
 :pattern ( (|Seq#Append| arg0@@73 arg1@@37))
))))
(assert (forall ((s@@3 T@U) (t@@3 T@U) (n@@2 Int) ) (! (let ((T@@28 (SeqTypeInv0 (type s@@3))))
 (=> (and (and (= (type s@@3) (SeqType T@@28)) (= (type t@@3) (SeqType T@@28))) (= n@@2 (|Seq#Length| s@@3))) (and (= (|Seq#Take| (|Seq#Append| s@@3 t@@3) n@@2) s@@3) (= (|Seq#Drop| (|Seq#Append| s@@3 t@@3) n@@2) t@@3))))
 :qid |assertbpl.1345:18|
 :skolemid |255|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@3 t@@3) n@@2))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@3 t@@3) n@@2))
)))
(assert (= (type Tclass._System.object) TyType))
(assert (forall ((|c#0@@0| T@U) ($h@@6 T@U) ) (!  (=> (and (= (type |c#0@@0|) refType) (= (type $h@@6) (MapType0Type refType MapType1Type))) (= ($IsAlloc |c#0@@0| Tclass._System.object $h@@6) ($IsAlloc |c#0@@0| Tclass._System.object? $h@@6)))
 :qid |assertbpl.1850:15|
 :skolemid |354|
 :pattern ( ($IsAlloc |c#0@@0| Tclass._System.object $h@@6))
)))
(assert (forall ((arg0@@74 T@U) (arg1@@38 T@U) (arg2@@9 T@U) ) (! (let ((V@@8 (type arg2@@9)))
(let ((U@@10 (type arg1@@38)))
(= (type (|Map#Build| arg0@@74 arg1@@38 arg2@@9)) (MapType U@@10 V@@8))))
 :qid |funType:Map#Build|
 :pattern ( (|Map#Build| arg0@@74 arg1@@38 arg2@@9))
)))
(assert (forall ((m@@11 T@U) (u T@U) (v@@5 T@U) ) (! (let ((V@@9 (type v@@5)))
(let ((U@@11 (type u)))
 (=> (and (= (type m@@11) (MapType U@@11 V@@9)) (U_2_bool (MapType0Select (|Map#Domain| m@@11) u))) (= (|Map#Card| (|Map#Build| m@@11 u v@@5)) (|Map#Card| m@@11)))))
 :qid |assertbpl.1532:20|
 :skolemid |294|
 :pattern ( (|Map#Card| (|Map#Build| m@@11 u v@@5)))
)))
(assert (forall ((arg0@@75 T@U) ) (! (let ((T@@29 (type arg0@@75)))
(= (type (|Set#Singleton| arg0@@75)) (MapType0Type T@@29 boolType)))
 :qid |funType:Set#Singleton|
 :pattern ( (|Set#Singleton| arg0@@75))
)))
(assert (forall ((r@@0 T@U) (o@@5 T@U) ) (! (let ((T@@30 (type r@@0)))
 (=> (= (type o@@5) T@@30) (= (U_2_bool (MapType0Select (|Set#Singleton| r@@0) o@@5)) (= r@@0 o@@5))))
 :qid |assertbpl.779:18|
 :skolemid |128|
 :pattern ( (MapType0Select (|Set#Singleton| r@@0) o@@5))
)))
(assert (= (type Tclass._System.Tuple0) TyType))
(assert (forall ((d@@2 T@U) ) (!  (=> (and (= (type d@@2) DatatypeTypeType) ($Is d@@2 Tclass._System.Tuple0)) (_System.Tuple0.___hMake0_q d@@2))
 :qid |assertbpl.2756:15|
 :skolemid |479|
 :pattern ( (_System.Tuple0.___hMake0_q d@@2) ($Is d@@2 Tclass._System.Tuple0))
)))
(assert (forall ((arg0@@76 Int) ) (! (= (type (IndexField arg0@@76)) (FieldType BoxType))
 :qid |funType:IndexField|
 :pattern ( (IndexField arg0@@76))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@7 T@U) ($o@@5 T@U) ($i0 Int) ) (!  (=> (and (and (= (type _System.array$arg@@2) TyType) (= (type $h@@7) (MapType0Type refType MapType1Type))) (= (type $o@@5) refType)) (=> (and (and (and (and (and ($IsGoodHeap $h@@7) (not (= $o@@5 null))) (= (dtype $o@@5) (Tclass._System.array? _System.array$arg@@2))) (<= 0 $i0)) (< $i0 (_System.array.Length $o@@5))) (U_2_bool (MapType1Select (MapType0Select $h@@7 $o@@5) alloc))) ($IsAllocBox (MapType1Select (MapType0Select $h@@7 $o@@5) (IndexField $i0)) _System.array$arg@@2 $h@@7)))
 :qid |assertbpl.1895:15|
 :skolemid |359|
 :pattern ( (MapType1Select (MapType0Select $h@@7 $o@@5) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((s@@4 T@U) (x@@10 T@U) ) (! (let ((T@@31 (type x@@10)))
 (=> (= (type s@@4) (SeqType T@@31)) (= (exists ((i@@0 Int) ) (!  (and (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@4))) (= x@@10 (|Seq#Index| s@@4 i@@0)))
 :qid |assertbpl.1169:11|
 :skolemid |219|
 :pattern ( (|Seq#Index| s@@4 i@@0))
)) (< 0 (U_2_int (MapType0Select (|MultiSet#FromSeq| s@@4) x@@10))))))
 :qid |assertbpl.1167:18|
 :skolemid |220|
 :pattern ( (MapType0Select (|MultiSet#FromSeq| s@@4) x@@10))
)))
(assert (forall ((arg0@@77 T@U) (arg1@@39 T@U) ) (! (= (type (|#_System._tuple#2._#Make2| arg0@@77 arg1@@39)) DatatypeTypeType)
 :qid |funType:#_System._tuple#2._#Make2|
 :pattern ( (|#_System._tuple#2._#Make2| arg0@@77 arg1@@39))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (!  (=> (and (and (and (= (type |_System._tuple#2$T0@@0|) TyType) (= (type |_System._tuple#2$T1@@0|) TyType)) (= (type |a#2#0#0|) BoxType)) (= (type |a#2#1#0|) BoxType)) (= ($Is (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|))))
 :qid |assertbpl.2596:15|
 :skolemid |459|
 :pattern ( ($Is (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((t0@@4 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@3 T@U) ) (!  (=> (and (and (and (= (type t0@@4) TyType) (= (type h0@@1) (MapType0Type refType MapType1Type))) (= (type h1@@1) (MapType0Type refType MapType1Type))) (= (type f@@3) HandleTypeType)) (=> (and (and (and (and ($HeapSucc h0@@1 h1@@1) ($IsGoodHeap h0@@1)) ($IsGoodHeap h1@@1)) ($Is f@@3 (Tclass._System.___hFunc0 t0@@4))) (forall ((o@@6 T@U) (fld@@1 T@U) ) (! (let ((a@@13 (FieldTypeInv0 (type fld@@1))))
 (=> (and (and (= (type o@@6) refType) (= (type fld@@1) (FieldType a@@13))) (and (not (= o@@6 null)) (U_2_bool (MapType0Select (Reads0 t0@@4 h0@@1 f@@3) ($Box o@@6))))) (= (MapType1Select (MapType0Select h0@@1 o@@6) fld@@1) (MapType1Select (MapType0Select h1@@1 o@@6) fld@@1))))
 :qid |assertbpl.2355:22|
 :skolemid |420|
 :no-pattern (type o@@6)
 :no-pattern (type fld@@1)
 :no-pattern (U_2_int o@@6)
 :no-pattern (U_2_bool o@@6)
 :no-pattern (U_2_int fld@@1)
 :no-pattern (U_2_bool fld@@1)
))) (= (Reads0 t0@@4 h0@@1 f@@3) (Reads0 t0@@4 h1@@1 f@@3))))
 :qid |assertbpl.2348:15|
 :skolemid |421|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads0 t0@@4 h1@@1 f@@3))
)))
(assert (forall ((t0@@5 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@4 T@U) ) (!  (=> (and (and (and (= (type t0@@5) TyType) (= (type h0@@2) (MapType0Type refType MapType1Type))) (= (type h1@@2) (MapType0Type refType MapType1Type))) (= (type f@@4) HandleTypeType)) (=> (and (and (and (and ($HeapSucc h0@@2 h1@@2) ($IsGoodHeap h0@@2)) ($IsGoodHeap h1@@2)) ($Is f@@4 (Tclass._System.___hFunc0 t0@@5))) (forall ((o@@7 T@U) (fld@@2 T@U) ) (! (let ((a@@14 (FieldTypeInv0 (type fld@@2))))
 (=> (and (and (= (type o@@7) refType) (= (type fld@@2) (FieldType a@@14))) (and (not (= o@@7 null)) (U_2_bool (MapType0Select (Reads0 t0@@5 h1@@2 f@@4) ($Box o@@7))))) (= (MapType1Select (MapType0Select h0@@2 o@@7) fld@@2) (MapType1Select (MapType0Select h1@@2 o@@7) fld@@2))))
 :qid |assertbpl.2367:22|
 :skolemid |422|
 :no-pattern (type o@@7)
 :no-pattern (type fld@@2)
 :no-pattern (U_2_int o@@7)
 :no-pattern (U_2_bool o@@7)
 :no-pattern (U_2_int fld@@2)
 :no-pattern (U_2_bool fld@@2)
))) (= (Reads0 t0@@5 h0@@2 f@@4) (Reads0 t0@@5 h1@@2 f@@4))))
 :qid |assertbpl.2360:15|
 :skolemid |423|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads0 t0@@5 h1@@2 f@@4))
)))
(assert (forall ((arg0@@78 T@U) (arg1@@40 T@U) (arg2@@10 T@U) ) (! (= (type (Apply0 arg0@@78 arg1@@40 arg2@@10)) BoxType)
 :qid |funType:Apply0|
 :pattern ( (Apply0 arg0@@78 arg1@@40 arg2@@10))
)))
(assert (forall ((t0@@6 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@5 T@U) ) (!  (=> (and (and (and (= (type t0@@6) TyType) (= (type h0@@3) (MapType0Type refType MapType1Type))) (= (type h1@@3) (MapType0Type refType MapType1Type))) (= (type f@@5) HandleTypeType)) (=> (and (and (and (and ($HeapSucc h0@@3 h1@@3) ($IsGoodHeap h0@@3)) ($IsGoodHeap h1@@3)) ($Is f@@5 (Tclass._System.___hFunc0 t0@@6))) (forall ((o@@8 T@U) (fld@@3 T@U) ) (! (let ((a@@15 (FieldTypeInv0 (type fld@@3))))
 (=> (and (and (= (type o@@8) refType) (= (type fld@@3) (FieldType a@@15))) (and (not (= o@@8 null)) (U_2_bool (MapType0Select (Reads0 t0@@6 h0@@3 f@@5) ($Box o@@8))))) (= (MapType1Select (MapType0Select h0@@3 o@@8) fld@@3) (MapType1Select (MapType0Select h1@@3 o@@8) fld@@3))))
 :qid |assertbpl.2403:22|
 :skolemid |428|
 :no-pattern (type o@@8)
 :no-pattern (type fld@@3)
 :no-pattern (U_2_int o@@8)
 :no-pattern (U_2_bool o@@8)
 :no-pattern (U_2_int fld@@3)
 :no-pattern (U_2_bool fld@@3)
))) (= (Apply0 t0@@6 h0@@3 f@@5) (Apply0 t0@@6 h1@@3 f@@5))))
 :qid |assertbpl.2396:15|
 :skolemid |429|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply0 t0@@6 h1@@3 f@@5))
)))
(assert (forall ((t0@@7 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@6 T@U) ) (!  (=> (and (and (and (= (type t0@@7) TyType) (= (type h0@@4) (MapType0Type refType MapType1Type))) (= (type h1@@4) (MapType0Type refType MapType1Type))) (= (type f@@6) HandleTypeType)) (=> (and (and (and (and ($HeapSucc h0@@4 h1@@4) ($IsGoodHeap h0@@4)) ($IsGoodHeap h1@@4)) ($Is f@@6 (Tclass._System.___hFunc0 t0@@7))) (forall ((o@@9 T@U) (fld@@4 T@U) ) (! (let ((a@@16 (FieldTypeInv0 (type fld@@4))))
 (=> (and (and (= (type o@@9) refType) (= (type fld@@4) (FieldType a@@16))) (and (not (= o@@9 null)) (U_2_bool (MapType0Select (Reads0 t0@@7 h1@@4 f@@6) ($Box o@@9))))) (= (MapType1Select (MapType0Select h0@@4 o@@9) fld@@4) (MapType1Select (MapType0Select h1@@4 o@@9) fld@@4))))
 :qid |assertbpl.2415:22|
 :skolemid |430|
 :no-pattern (type o@@9)
 :no-pattern (type fld@@4)
 :no-pattern (U_2_int o@@9)
 :no-pattern (U_2_bool o@@9)
 :no-pattern (U_2_int fld@@4)
 :no-pattern (U_2_bool fld@@4)
))) (= (Apply0 t0@@7 h0@@4 f@@6) (Apply0 t0@@7 h1@@4 f@@6))))
 :qid |assertbpl.2408:15|
 :skolemid |431|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply0 t0@@7 h1@@4 f@@6))
)))
(assert ($Is |#_System._tuple#0._#Make0| Tclass._System.Tuple0))
(assert (forall (($h@@8 T@U) ) (!  (=> (and (= (type $h@@8) (MapType0Type refType MapType1Type)) ($IsGoodHeap $h@@8)) ($IsAlloc |#_System._tuple#0._#Make0| Tclass._System.Tuple0 $h@@8))
 :qid |assertbpl.2739:15|
 :skolemid |477|
 :pattern ( ($IsAlloc |#_System._tuple#0._#Make0| Tclass._System.Tuple0 $h@@8))
)))
(assert (forall ((arg0@@79 T@U) (arg1@@41 T@U) (arg2@@11 T@U) ) (! (= (type (Handle0 arg0@@79 arg1@@41 arg2@@11)) HandleTypeType)
 :qid |funType:Handle0|
 :pattern ( (Handle0 arg0@@79 arg1@@41 arg2@@11))
)))
(assert (forall ((t0@@8 T@U) (heap@@0 T@U) (h@@1 T@U) (r@@1 T@U) (rd T@U) ) (!  (=> (and (and (and (and (= (type t0@@8) TyType) (= (type heap@@0) (MapType0Type refType MapType1Type))) (= (type h@@1) (MapType0Type (MapType0Type refType MapType1Type) BoxType))) (= (type r@@1) (MapType0Type (MapType0Type refType MapType1Type) boolType))) (= (type rd) (MapType0Type (MapType0Type refType MapType1Type) (MapType0Type BoxType boolType)))) (= (Apply0 t0@@8 heap@@0 (Handle0 h@@1 r@@1 rd)) (MapType0Select h@@1 heap@@0)))
 :qid |assertbpl.2325:15|
 :skolemid |417|
 :pattern ( (Apply0 t0@@8 heap@@0 (Handle0 h@@1 r@@1 rd)))
)))
(assert (forall ((a@@17 T@U) (b@@11 T@U) ) (! (let ((T@@32 (MapType0TypeInv0 (type a@@17))))
 (=> (and (= (type a@@17) (MapType0Type T@@32 boolType)) (= (type b@@11) (MapType0Type T@@32 boolType))) (= (+ (|Set#Card| (|Set#Union| a@@17 b@@11)) (|Set#Card| (|Set#Intersection| a@@17 b@@11))) (+ (|Set#Card| a@@17) (|Set#Card| b@@11)))))
 :qid |assertbpl.849:18|
 :skolemid |144|
 :pattern ( (|Set#Card| (|Set#Union| a@@17 b@@11)))
 :pattern ( (|Set#Card| (|Set#Intersection| a@@17 b@@11)))
)))
(assert (forall ((arg0@@80 T@U) (arg1@@42 T@U) ) (! (let ((V@@10 (MapTypeInv1 (type arg0@@80))))
(let ((U@@12 (MapTypeInv0 (type arg0@@80))))
(= (type (|Map#Subtract| arg0@@80 arg1@@42)) (MapType U@@12 V@@10))))
 :qid |funType:Map#Subtract|
 :pattern ( (|Map#Subtract| arg0@@80 arg1@@42))
)))
(assert (forall ((m@@12 T@U) (s@@5 T@U) (u@@0 T@U) ) (! (let ((V@@11 (MapTypeInv1 (type m@@12))))
(let ((U@@13 (type u@@0)))
 (=> (and (and (= (type m@@12) (MapType U@@13 V@@11)) (= (type s@@5) (MapType0Type U@@13 boolType))) (U_2_bool (MapType0Select (|Map#Domain| (|Map#Subtract| m@@12 s@@5)) u@@0))) (= (MapType0Select (|Map#Elements| (|Map#Subtract| m@@12 s@@5)) u@@0) (MapType0Select (|Map#Elements| m@@12) u@@0)))))
 :qid |assertbpl.1558:20|
 :skolemid |299|
 :pattern ( (MapType0Select (|Map#Elements| (|Map#Subtract| m@@12 s@@5)) u@@0))
)))
(assert (forall ((arg0@@81 T@U) (arg1@@43 T@U) ) (! (let ((V@@12 (IMapTypeInv1 (type arg0@@81))))
(let ((U@@14 (IMapTypeInv0 (type arg0@@81))))
(= (type (|IMap#Subtract| arg0@@81 arg1@@43)) (IMapType U@@14 V@@12))))
 :qid |funType:IMap#Subtract|
 :pattern ( (|IMap#Subtract| arg0@@81 arg1@@43))
)))
(assert (forall ((m@@13 T@U) (s@@6 T@U) (u@@1 T@U) ) (! (let ((V@@13 (IMapTypeInv1 (type m@@13))))
(let ((U@@15 (type u@@1)))
 (=> (and (and (= (type m@@13) (IMapType U@@15 V@@13)) (= (type s@@6) (MapType0Type U@@15 boolType))) (U_2_bool (MapType0Select (|IMap#Domain| (|IMap#Subtract| m@@13 s@@6)) u@@1))) (= (MapType0Select (|IMap#Elements| (|IMap#Subtract| m@@13 s@@6)) u@@1) (MapType0Select (|IMap#Elements| m@@13) u@@1)))))
 :qid |assertbpl.1699:20|
 :skolemid |331|
 :pattern ( (MapType0Select (|IMap#Elements| (|IMap#Subtract| m@@13 s@@6)) u@@1))
)))
(assert (forall ((arg0@@82 T@U) (arg1@@44 T@U) ) (! (= (type (|Seq#FromArray| arg0@@82 arg1@@44)) (SeqType BoxType))
 :qid |funType:Seq#FromArray|
 :pattern ( (|Seq#FromArray| arg0@@82 arg1@@44))
)))
(assert (forall ((h@@2 T@U) (a@@18 T@U) (n0 Int) (n1 Int) ) (!  (=> (and (= (type h@@2) (MapType0Type refType MapType1Type)) (= (type a@@18) refType)) (=> (and (and (= (+ n0 1) n1) (<= 0 n0)) (<= n1 (_System.array.Length a@@18))) (= (|Seq#Take| (|Seq#FromArray| h@@2 a@@18) n1) (|Seq#Build| (|Seq#Take| (|Seq#FromArray| h@@2 a@@18) n0) (MapType1Select (MapType0Select h@@2 a@@18) (IndexField n0))))))
 :qid |assertbpl.1394:15|
 :skolemid |265|
 :pattern ( (|Seq#Take| (|Seq#FromArray| h@@2 a@@18) n0) (|Seq#Take| (|Seq#FromArray| h@@2 a@@18) n1))
)))
(assert (forall ((s@@7 T@U) (i@@1 Int) (v@@6 T@U) (n@@3 Int) ) (! (let ((T@@33 (type v@@6)))
 (=> (= (type s@@7) (SeqType T@@33)) (=> (and (and (<= 0 n@@3) (<= n@@3 i@@1)) (< i@@1 (|Seq#Length| s@@7))) (= (|Seq#Drop| (|Seq#Update| s@@7 i@@1 v@@6) n@@3) (|Seq#Update| (|Seq#Drop| s@@7 n@@3) (- i@@1 n@@3) v@@6)))))
 :qid |assertbpl.1384:18|
 :skolemid |263|
 :pattern ( (|Seq#Drop| (|Seq#Update| s@@7 i@@1 v@@6) n@@3))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@3| Int) ) (!  (=> (or (|_module.__default.abs#canCall| (LitInt |x#0@@3|)) (not (= 0 $FunctionContextHeight))) (= (_module.__default.abs (LitInt |x#0@@3|)) (ite (< |x#0@@3| 0) (- 0 |x#0@@3|) |x#0@@3|)))
 :qid |assertbpl.2833:16|
 :weight 3
 :skolemid |488|
 :pattern ( (_module.__default.abs (LitInt |x#0@@3|)))
))))
(assert (forall ((a@@19 T@U) (b@@12 T@U) (o@@10 T@U) ) (! (let ((T@@34 (type o@@10)))
 (=> (and (= (type a@@19) (MapType0Type T@@34 intType)) (= (type b@@12) (MapType0Type T@@34 intType))) (= (U_2_int (MapType0Select (|MultiSet#Union| a@@19 b@@12) o@@10)) (+ (U_2_int (MapType0Select a@@19 o@@10)) (U_2_int (MapType0Select b@@12 o@@10))))))
 :qid |assertbpl.1061:18|
 :skolemid |196|
 :pattern ( (MapType0Select (|MultiSet#Union| a@@19 b@@12) o@@10))
)))
(assert (forall ((a@@20 T@U) (b@@13 T@U) ) (!  (=> (and (= (type a@@20) DatatypeTypeType) (= (type b@@13) DatatypeTypeType)) (= (|_System.Tuple2#Equal| a@@20 b@@13) (= a@@20 b@@13)))
 :qid |assertbpl.2693:15|
 :skolemid |473|
 :pattern ( (|_System.Tuple2#Equal| a@@20 b@@13))
)))
(assert (forall ((a@@21 T@U) (b@@14 T@U) ) (!  (=> (and (= (type a@@21) DatatypeTypeType) (= (type b@@14) DatatypeTypeType)) (= (|_System.Tuple0#Equal| a@@21 b@@14) (= a@@21 b@@14)))
 :qid |assertbpl.2769:15|
 :skolemid |481|
 :pattern ( (|_System.Tuple0#Equal| a@@21 b@@14))
)))
(assert (forall ((s@@8 T@U) (n@@4 Int) ) (! (let ((T@@35 (SeqTypeInv0 (type s@@8))))
 (=> (and (= (type s@@8) (SeqType T@@35)) (= n@@4 0)) (= (|Seq#Drop| s@@8 n@@4) s@@8)))
 :qid |assertbpl.1425:18|
 :skolemid |271|
 :pattern ( (|Seq#Drop| s@@8 n@@4))
)))
(assert (forall ((arg0@@83 T@U) ) (! (= (type (TSet arg0@@83)) TyType)
 :qid |funType:TSet|
 :pattern ( (TSet arg0@@83))
)))
(assert (forall ((v@@7 T@U) (t0@@9 T@U) ) (!  (=> (and (= (type v@@7) (MapType0Type BoxType boolType)) (= (type t0@@9) TyType)) (= ($Is v@@7 (TSet t0@@9)) (forall ((bx@@1 T@U) ) (!  (=> (and (= (type bx@@1) BoxType) (U_2_bool (MapType0Select v@@7 bx@@1))) ($IsBox bx@@1 t0@@9))
 :qid |assertbpl.268:33|
 :skolemid |45|
 :pattern ( (MapType0Select v@@7 bx@@1))
))))
 :qid |assertbpl.266:15|
 :skolemid |46|
 :pattern ( ($Is v@@7 (TSet t0@@9)))
)))
(assert (forall ((arg0@@84 T@U) ) (! (= (type (TISet arg0@@84)) TyType)
 :qid |funType:TISet|
 :pattern ( (TISet arg0@@84))
)))
(assert (forall ((v@@8 T@U) (t0@@10 T@U) ) (!  (=> (and (= (type v@@8) (MapType0Type BoxType boolType)) (= (type t0@@10) TyType)) (= ($Is v@@8 (TISet t0@@10)) (forall ((bx@@2 T@U) ) (!  (=> (and (= (type bx@@2) BoxType) (U_2_bool (MapType0Select v@@8 bx@@2))) ($IsBox bx@@2 t0@@10))
 :qid |assertbpl.272:34|
 :skolemid |47|
 :pattern ( (MapType0Select v@@8 bx@@2))
))))
 :qid |assertbpl.270:15|
 :skolemid |48|
 :pattern ( ($Is v@@8 (TISet t0@@10)))
)))
(assert (forall ((a@@22 Int) ) (!  (=> (<= 0 a@@22) (= (|Math#clip| a@@22) a@@22))
 :qid |assertbpl.996:15|
 :skolemid |180|
 :pattern ( (|Math#clip| a@@22))
)))
(assert (forall ((x@@11 Real) ) (! (= (q@Int x@@11) (to_int x@@11))
 :qid |assertbpl.654:15|
 :skolemid |112|
 :pattern ( (q@Int x@@11))
)))
(assert (forall ((x@@12 Int) ) (! (= (LitInt x@@12) x@@12)
 :qid |assertbpl.136:15|
 :skolemid |18|
 :pattern ( (LitInt x@@12))
)))
(assert (forall ((x@@13 Real) ) (! (= (LitReal x@@13) x@@13)
 :qid |assertbpl.142:15|
 :skolemid |20|
 :pattern ( (LitReal x@@13))
)))
(assert (forall ((arg0@@85 T@U) ) (! (let ((T@@36 (type arg0@@85)))
(= (type (Lit arg0@@85)) T@@36))
 :qid |funType:Lit|
 :pattern ( (Lit arg0@@85))
)))
(assert (forall ((x@@14 T@U) ) (! (= (Lit x@@14) x@@14)
 :qid |assertbpl.130:18|
 :skolemid |16|
 :pattern ( (Lit x@@14))
)))
(assert (forall ((arg0@@86 T@U) ) (! (= (type (TSeq arg0@@86)) TyType)
 :qid |funType:TSeq|
 :pattern ( (TSeq arg0@@86))
)))
(assert (forall ((s@@9 T@U) (bx@@3 T@U) (t@@4 T@U) ) (!  (=> (and (and (and (= (type s@@9) (SeqType BoxType)) (= (type bx@@3) BoxType)) (= (type t@@4) TyType)) (and ($Is s@@9 (TSeq t@@4)) ($IsBox bx@@3 t@@4))) ($Is (|Seq#Build| s@@9 bx@@3) (TSeq t@@4)))
 :qid |assertbpl.1214:15|
 :skolemid |228|
 :pattern ( ($Is (|Seq#Build| s@@9 bx@@3) (TSeq t@@4)))
)))
(assert  (and (= (Ctor charType) 23) (forall ((arg0@@87 Int) ) (! (= (type (|char#FromInt| arg0@@87)) charType)
 :qid |funType:char#FromInt|
 :pattern ( (|char#FromInt| arg0@@87))
))))
(assert (forall ((n@@5 Int) ) (!  (=> (and (<= 0 n@@5) (< n@@5 65536)) (= (|char#ToInt| (|char#FromInt| n@@5)) n@@5))
 :qid |assertbpl.146:15|
 :skolemid |21|
 :pattern ( (|char#FromInt| n@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@4| Int) ) (!  (=> (or (|_module.__default.abs#canCall| |x#0@@4|) (not (= 0 $FunctionContextHeight))) true)
 :qid |assertbpl.2813:16|
 :skolemid |485|
 :pattern ( (_module.__default.abs |x#0@@4|))
))))
(assert $$Language$Dafny)
(assert (forall ((s@@10 T@U) (n@@6 Int) (j Int) ) (! (let ((T@@37 (SeqTypeInv0 (type s@@10))))
 (=> (= (type s@@10) (SeqType T@@37)) (=> (and (and (<= 0 j) (< j n@@6)) (< j (|Seq#Length| s@@10))) (= (|Seq#Index| (|Seq#Take| s@@10 n@@6) j) (|Seq#Index| s@@10 j)))))
 :qid |assertbpl.1324:18|
 :weight 25
 :skolemid |251|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@10 n@@6) j))
 :pattern ( (|Seq#Index| s@@10 j) (|Seq#Take| s@@10 n@@6))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@9 T@U) ) (!  (=> (and (and (and (and (and (= (type |_System._tuple#2$T0@@1|) TyType) (= (type |_System._tuple#2$T1@@1|) TyType)) (= (type |a#2#0#0@@0|) BoxType)) (= (type |a#2#1#0@@0|) BoxType)) (= (type $h@@9) (MapType0Type refType MapType1Type))) ($IsGoodHeap $h@@9)) (= ($IsAlloc (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@9)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@9) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@9))))
 :qid |assertbpl.2604:15|
 :skolemid |460|
 :pattern ( ($IsAlloc (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@9))
)))
(assert (forall ((s@@11 T@U) (n@@7 Int) ) (! (let ((T@@38 (SeqTypeInv0 (type s@@11))))
 (=> (= (type s@@11) (SeqType T@@38)) (=> (and (<= 0 n@@7) (<= n@@7 (|Seq#Length| s@@11))) (= (|Seq#Length| (|Seq#Drop| s@@11 n@@7)) (- (|Seq#Length| s@@11) n@@7)))))
 :qid |assertbpl.1331:18|
 :skolemid |252|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@11 n@@7)))
)))
(assert (forall ((_System.array$arg@@3 T@U) ($h@@10 T@U) ($o@@6 T@U) ) (!  (=> (and (and (= (type _System.array$arg@@3) TyType) (= (type $h@@10) (MapType0Type refType MapType1Type))) (= (type $o@@6) refType)) (=> (and (and (and ($IsGoodHeap $h@@10) (not (= $o@@6 null))) (= (dtype $o@@6) (Tclass._System.array? _System.array$arg@@3))) (U_2_bool (MapType1Select (MapType0Select $h@@10 $o@@6) alloc))) ($IsAlloc (int_2_U (_System.array.Length $o@@6)) TInt $h@@10)))
 :qid |assertbpl.1926:15|
 :skolemid |363|
 :pattern ( (_System.array.Length $o@@6) (MapType1Select (MapType0Select $h@@10 $o@@6) alloc) (Tclass._System.array? _System.array$arg@@3))
)))
(assert (forall ((m@@14 T@U) (u@@2 T@U) (v@@9 T@U) ) (! (let ((V@@14 (type v@@9)))
(let ((U@@16 (type u@@2)))
 (=> (and (= (type m@@14) (MapType U@@16 V@@14)) (not (U_2_bool (MapType0Select (|Map#Domain| m@@14) u@@2)))) (= (|Map#Card| (|Map#Build| m@@14 u@@2 v@@9)) (+ (|Map#Card| m@@14) 1)))))
 :qid |assertbpl.1536:20|
 :skolemid |295|
 :pattern ( (|Map#Card| (|Map#Build| m@@14 u@@2 v@@9)))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (= (type d@@3) DatatypeTypeType) (= (_System.Tuple2.___hMake2_q d@@3) (= (DatatypeCtorId d@@3) |##_System._tuple#2._#Make2|)))
 :qid |assertbpl.2549:15|
 :skolemid |452|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (= (type d@@4) DatatypeTypeType) (= (_System.Tuple0.___hMake0_q d@@4) (= (DatatypeCtorId d@@4) |##_System._tuple#0._#Make0|)))
 :qid |assertbpl.2710:15|
 :skolemid |474|
 :pattern ( (_System.Tuple0.___hMake0_q d@@4))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (let ((T@@39 (SeqTypeInv0 (type s0))))
 (=> (and (= (type s0) (SeqType T@@39)) (= (type s1) (SeqType T@@39))) (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (|Seq#Length| s0))) (= (|Seq#Index| s0 j@@0) (|Seq#Index| s1 j@@0)))
 :qid |assertbpl.1303:19|
 :skolemid |245|
 :pattern ( (|Seq#Index| s0 j@@0))
 :pattern ( (|Seq#Index| s1 j@@0))
))))))
 :qid |assertbpl.1299:18|
 :skolemid |246|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((a@@23 T@U) (b@@15 T@U) (o@@11 T@U) ) (! (let ((T@@40 (type o@@11)))
 (=> (and (= (type a@@23) (MapType0Type T@@40 intType)) (= (type b@@15) (MapType0Type T@@40 intType))) (= (U_2_int (MapType0Select (|MultiSet#Difference| a@@23 b@@15) o@@11)) (|Math#clip| (- (U_2_int (MapType0Select a@@23 o@@11)) (U_2_int (MapType0Select b@@15 o@@11)))))))
 :qid |assertbpl.1087:18|
 :skolemid |201|
 :pattern ( (MapType0Select (|MultiSet#Difference| a@@23 b@@15) o@@11))
)))
(assert (forall ((s@@12 T@U) (i@@2 Int) ) (! (let ((T@@41 (SeqTypeInv0 (type s@@12))))
 (=> (= (type s@@12) (SeqType T@@41)) (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@12))) (< (|Seq#Rank| (|Seq#Take| s@@12 i@@2)) (|Seq#Rank| s@@12)))))
 :qid |assertbpl.1416:18|
 :skolemid |269|
 :pattern ( (|Seq#Rank| (|Seq#Take| s@@12 i@@2)))
)))
(assert (forall ((t0@@11 T@U) (heap@@1 T@U) (f@@7 T@U) ) (!  (=> (and (and (and (= (type t0@@11) TyType) (= (type heap@@1) (MapType0Type refType MapType1Type))) (= (type f@@7) HandleTypeType)) (and (and ($IsGoodHeap heap@@1) ($Is f@@7 (Tclass._System.___hFunc0 t0@@11))) (|Set#Equal| (Reads0 t0@@11 $OneHeap f@@7) (|Set#Empty| BoxType)))) (= (Requires0 t0@@11 $OneHeap f@@7) (Requires0 t0@@11 heap@@1 f@@7)))
 :qid |assertbpl.2427:15|
 :skolemid |433|
 :pattern ( (Requires0 t0@@11 $OneHeap f@@7) ($IsGoodHeap heap@@1))
 :pattern ( (Requires0 t0@@11 heap@@1 f@@7))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (and (= (type d@@5) DatatypeTypeType) (_System.Tuple2.___hMake2_q d@@5)) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (!  (and (and (= (type |a#1#0#0|) BoxType) (= (type |a#1#1#0|) BoxType)) (= d@@5 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|)))
 :qid |assertbpl.2558:18|
 :skolemid |453|
 :no-pattern (type |a#1#0#0|)
 :no-pattern (type |a#1#1#0|)
 :no-pattern (U_2_int |a#1#0#0|)
 :no-pattern (U_2_bool |a#1#0#0|)
 :no-pattern (U_2_int |a#1#1#0|)
 :no-pattern (U_2_bool |a#1#1#0|)
)))
 :qid |assertbpl.2555:15|
 :skolemid |454|
 :pattern ( (_System.Tuple2.___hMake2_q d@@5))
)))
(assert (forall ((T@@42 T@T) ) (! (= (|Seq#Length| (|Seq#Empty| T@@42)) 0)
 :skolemid |222|
 :pattern ( (|Seq#Empty| T@@42))
)))
(assert  (and (forall ((arg0@@88 T@U) ) (! (= (type (SetRef_to_SetBox arg0@@88)) (MapType0Type BoxType boolType))
 :qid |funType:SetRef_to_SetBox|
 :pattern ( (SetRef_to_SetBox arg0@@88))
)) (forall ((T@@43 T@T) (arg0@@89 T@U) ) (! (= (type ($Unbox T@@43 arg0@@89)) T@@43)
 :qid |funType:$Unbox|
 :pattern ( ($Unbox T@@43 arg0@@89))
))))
(assert (forall ((s@@13 T@U) (bx@@4 T@U) ) (!  (=> (and (= (type s@@13) (MapType0Type refType boolType)) (= (type bx@@4) BoxType)) (= (U_2_bool (MapType0Select (SetRef_to_SetBox s@@13) bx@@4)) (U_2_bool (MapType0Select s@@13 ($Unbox refType bx@@4)))))
 :qid |assertbpl.419:15|
 :skolemid |81|
 :pattern ( (MapType0Select (SetRef_to_SetBox s@@13) bx@@4))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (and (= (type d@@6) DatatypeTypeType) (_System.Tuple0.___hMake0_q d@@6)) (= d@@6 |#_System._tuple#0._#Make0|))
 :qid |assertbpl.2716:15|
 :skolemid |475|
 :pattern ( (_System.Tuple0.___hMake0_q d@@6))
)))
(assert (forall ((arg0@@90 T@U) (arg1@@45 Int) ) (! (= (type (MultiIndexField arg0@@90 arg1@@45)) (FieldType BoxType))
 :qid |funType:MultiIndexField|
 :pattern ( (MultiIndexField arg0@@90 arg1@@45))
)))
(assert (forall ((f@@8 T@U) (i@@3 Int) ) (!  (=> (= (type f@@8) (FieldType BoxType)) (= (FDim (MultiIndexField f@@8 i@@3)) (+ (FDim f@@8) 1)))
 :qid |assertbpl.596:15|
 :skolemid |104|
 :pattern ( (MultiIndexField f@@8 i@@3))
)))
(assert (forall ((arg0@@91 T@U) (arg1@@46 T@U) ) (! (let ((T@@44 (type arg1@@46)))
(= (type (|MultiSet#UnionOne| arg0@@91 arg1@@46)) (MapType0Type T@@44 intType)))
 :qid |funType:MultiSet#UnionOne|
 :pattern ( (|MultiSet#UnionOne| arg0@@91 arg1@@46))
)))
(assert (forall ((a@@24 T@U) (x@@15 T@U) ) (! (let ((T@@45 (type x@@15)))
 (=> (= (type a@@24) (MapType0Type T@@45 intType)) (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@24 x@@15)) (+ (|MultiSet#Card| a@@24) 1))))
 :qid |assertbpl.1055:18|
 :skolemid |195|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@24 x@@15)))
)))
(assert (forall ((s@@14 T@U) (i@@4 Int) ) (! (let ((T@@46 (SeqTypeInv0 (type s@@14))))
 (=> (= (type s@@14) (SeqType T@@46)) (=> (and (< 0 i@@4) (<= i@@4 (|Seq#Length| s@@14))) (< (|Seq#Rank| (|Seq#Drop| s@@14 i@@4)) (|Seq#Rank| s@@14)))))
 :qid |assertbpl.1412:18|
 :skolemid |268|
 :pattern ( (|Seq#Rank| (|Seq#Drop| s@@14 i@@4)))
)))
(assert  (and (= (Ctor LayerTypeType) 24) (forall ((arg0@@92 T@U) (arg1@@47 T@U) ) (! (let ((A (MapType0TypeInv1 (type arg0@@92))))
(= (type (AtLayer arg0@@92 arg1@@47)) A))
 :qid |funType:AtLayer|
 :pattern ( (AtLayer arg0@@92 arg1@@47))
))))
(assert (forall ((f@@9 T@U) (ly T@U) ) (! (let ((A@@0 (MapType0TypeInv1 (type f@@9))))
 (=> (and (= (type f@@9) (MapType0Type LayerTypeType A@@0)) (= (type ly) LayerTypeType)) (= (AtLayer f@@9 ly) (MapType0Select f@@9 ly))))
 :qid |assertbpl.572:18|
 :skolemid |100|
 :pattern ( (AtLayer f@@9 ly))
)))
(assert (forall ((|x#0@@5| T@U) ) (!  (=> (= (type |x#0@@5|) intType) (= ($Is |x#0@@5| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@5|))))
 :qid |assertbpl.1793:15|
 :skolemid |347|
 :pattern ( ($Is |x#0@@5| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((s@@15 T@U) (v@@10 T@U) ) (! (let ((T@@47 (type v@@10)))
 (=> (= (type s@@15) (SeqType T@@47)) (= (|Seq#Length| (|Seq#Build| s@@15 v@@10)) (+ 1 (|Seq#Length| s@@15)))))
 :qid |assertbpl.1205:18|
 :skolemid |226|
 :pattern ( (|Seq#Build| s@@15 v@@10))
)))
(assert (forall ((ch T@U) ) (!  (=> (= (type ch) charType) (and (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (<= 0 (|char#ToInt| ch))) (< (|char#ToInt| ch) 65536)))
 :qid |assertbpl.152:15|
 :skolemid |22|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((_System.array$arg@@4 T@U) (|c#0@@1| T@U) ) (!  (=> (and (= (type _System.array$arg@@4) TyType) (= (type |c#0@@1|) refType)) (= ($Is |c#0@@1| (Tclass._System.array _System.array$arg@@4))  (and ($Is |c#0@@1| (Tclass._System.array? _System.array$arg@@4)) (not (= |c#0@@1| null)))))
 :qid |assertbpl.1961:15|
 :skolemid |367|
 :pattern ( ($Is |c#0@@1| (Tclass._System.array _System.array$arg@@4)))
)))
(assert (forall ((v@@11 T@U) (t@@5 T@U) (h@@3 T@U) ) (!  (=> (and (= (type t@@5) TyType) (= (type h@@3) (MapType0Type refType MapType1Type))) (= ($IsAllocBox ($Box v@@11) t@@5 h@@3) ($IsAlloc v@@11 t@@5 h@@3)))
 :qid |assertbpl.250:18|
 :skolemid |38|
 :pattern ( ($IsAllocBox ($Box v@@11) t@@5 h@@3))
)))
(assert (forall ((h@@4 T@U) (k@@0 T@U) (bx@@5 T@U) (t@@6 T@U) ) (!  (=> (and (and (and (and (and (= (type h@@4) (MapType0Type refType MapType1Type)) (= (type k@@0) (MapType0Type refType MapType1Type))) (= (type bx@@5) BoxType)) (= (type t@@6) TyType)) ($HeapSucc h@@4 k@@0)) ($IsAllocBox bx@@5 t@@6 h@@4)) ($IsAllocBox bx@@5 t@@6 k@@0))
 :qid |assertbpl.640:15|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@4 k@@0) ($IsAllocBox bx@@5 t@@6 h@@4))
)))
(assert (forall ((h@@5 T@U) (k@@1 T@U) (v@@12 T@U) (t@@7 T@U) ) (!  (=> (and (and (and (and (= (type h@@5) (MapType0Type refType MapType1Type)) (= (type k@@1) (MapType0Type refType MapType1Type))) (= (type t@@7) TyType)) ($HeapSucc h@@5 k@@1)) ($IsAlloc v@@12 t@@7 h@@5)) ($IsAlloc v@@12 t@@7 k@@1))
 :qid |assertbpl.636:18|
 :skolemid |109|
 :pattern ( ($HeapSucc h@@5 k@@1) ($IsAlloc v@@12 t@@7 h@@5))
)))
(assert (forall ((d@@7 T@U) (|_System._tuple#2$T0@@2| T@U) ($h@@11 T@U) ) (!  (=> (and (and (and (= (type d@@7) DatatypeTypeType) (= (type |_System._tuple#2$T0@@2|) TyType)) (= (type $h@@11) (MapType0Type refType MapType1Type))) (and (and ($IsGoodHeap $h@@11) (_System.Tuple2.___hMake2_q d@@7)) (exists ((|_System._tuple#2$T1@@2| T@U) ) (!  (and (= (type |_System._tuple#2$T1@@2|) TyType) ($IsAlloc d@@7 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|) $h@@11))
 :qid |assertbpl.2625:19|
 :skolemid |461|
 :pattern ( ($IsAlloc d@@7 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|) $h@@11))
)))) ($IsAllocBox (_System.Tuple2._0 d@@7) |_System._tuple#2$T0@@2| $h@@11))
 :qid |assertbpl.2620:15|
 :skolemid |462|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@7) |_System._tuple#2$T0@@2| $h@@11))
)))
(assert (forall ((d@@8 T@U) (|_System._tuple#2$T1@@3| T@U) ($h@@12 T@U) ) (!  (=> (and (and (and (= (type d@@8) DatatypeTypeType) (= (type |_System._tuple#2$T1@@3|) TyType)) (= (type $h@@12) (MapType0Type refType MapType1Type))) (and (and ($IsGoodHeap $h@@12) (_System.Tuple2.___hMake2_q d@@8)) (exists ((|_System._tuple#2$T0@@3| T@U) ) (!  (and (= (type |_System._tuple#2$T0@@3|) TyType) ($IsAlloc d@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|) $h@@12))
 :qid |assertbpl.2636:19|
 :skolemid |463|
 :pattern ( ($IsAlloc d@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|) $h@@12))
)))) ($IsAllocBox (_System.Tuple2._1 d@@8) |_System._tuple#2$T1@@3| $h@@12))
 :qid |assertbpl.2631:15|
 :skolemid |464|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@8) |_System._tuple#2$T1@@3| $h@@12))
)))
(assert (forall ((s@@16 T@U) (n@@8 Int) (j@@1 Int) ) (! (let ((T@@48 (SeqTypeInv0 (type s@@16))))
 (=> (= (type s@@16) (SeqType T@@48)) (=> (and (and (<= 0 n@@8) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@16) n@@8))) (= (|Seq#Index| (|Seq#Drop| s@@16 n@@8) j@@1) (|Seq#Index| s@@16 (+ j@@1 n@@8))))))
 :qid |assertbpl.1335:18|
 :weight 25
 :skolemid |253|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@16 n@@8) j@@1))
)))
(assert (forall ((s@@17 T@U) ) (! (let ((T@@49 (MapType0TypeInv0 (type s@@17))))
 (=> (= (type s@@17) (MapType0Type T@@49 intType)) (and (= (= (|MultiSet#Card| s@@17) 0) (= s@@17 (|MultiSet#Empty| T@@49))) (=> (not (= (|MultiSet#Card| s@@17) 0)) (exists ((x@@16 T@U) ) (!  (and (= (type x@@16) T@@49) (< 0 (U_2_int (MapType0Select s@@17 x@@16))))
 :qid |assertbpl.1024:44|
 :skolemid |187|
 :no-pattern (type x@@16)
 :no-pattern (U_2_int x@@16)
 :no-pattern (U_2_bool x@@16)
))))))
 :qid |assertbpl.1021:18|
 :skolemid |188|
 :pattern ( (|MultiSet#Card| s@@17))
)))
(assert (forall ((arg0@@93 T@U) ) (! (= (type (TagFamily arg0@@93)) TyTagFamilyType)
 :qid |funType:TagFamily|
 :pattern ( (TagFamily arg0@@93))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (=> (= (type _System.array$arg@@5) TyType) (and (= (Tag (Tclass._System.array? _System.array$arg@@5)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@5)) tytagFamily$array)))
 :qid |assertbpl.1862:15|
 :skolemid |355|
 :pattern ( (Tclass._System.array? _System.array$arg@@5))
)))
(assert (forall ((_System.array$arg@@6 T@U) ) (!  (=> (= (type _System.array$arg@@6) TyType) (and (= (Tag (Tclass._System.array _System.array$arg@@6)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@6)) tytagFamily$array)))
 :qid |assertbpl.1940:15|
 :skolemid |364|
 :pattern ( (Tclass._System.array _System.array$arg@@6))
)))
(assert (forall ((|#$R@@1| T@U) ) (!  (=> (= (type |#$R@@1|) TyType) (and (= (Tag (Tclass._System.___hFunc0 |#$R@@1|)) Tagclass._System.___hFunc0) (= (TagFamily (Tclass._System.___hFunc0 |#$R@@1|)) |tytagFamily$_#Func0|)))
 :qid |assertbpl.2298:15|
 :skolemid |414|
 :pattern ( (Tclass._System.___hFunc0 |#$R@@1|))
)))
(assert (forall ((|#$R@@2| T@U) ) (!  (=> (= (type |#$R@@2|) TyType) (and (= (Tag (Tclass._System.___hPartialFunc0 |#$R@@2|)) Tagclass._System.___hPartialFunc0) (= (TagFamily (Tclass._System.___hPartialFunc0 |#$R@@2|)) |tytagFamily$_#PartialFunc0|)))
 :qid |assertbpl.2470:15|
 :skolemid |441|
 :pattern ( (Tclass._System.___hPartialFunc0 |#$R@@2|))
)))
(assert (forall ((|#$R@@3| T@U) ) (!  (=> (= (type |#$R@@3|) TyType) (and (= (Tag (Tclass._System.___hTotalFunc0 |#$R@@3|)) Tagclass._System.___hTotalFunc0) (= (TagFamily (Tclass._System.___hTotalFunc0 |#$R@@3|)) |tytagFamily$_#TotalFunc0|)))
 :qid |assertbpl.2507:15|
 :skolemid |446|
 :pattern ( (Tclass._System.___hTotalFunc0 |#$R@@3|))
)))
(assert (forall ((a@@25 T@U) (b@@16 T@U) (y@@1 T@U) ) (! (let ((T@@50 (type y@@1)))
 (=> (and (and (= (type a@@25) (MapType0Type T@@50 intType)) (= (type b@@16) (MapType0Type T@@50 intType))) (<= (U_2_int (MapType0Select a@@25 y@@1)) (U_2_int (MapType0Select b@@16 y@@1)))) (= (U_2_int (MapType0Select (|MultiSet#Difference| a@@25 b@@16) y@@1)) 0)))
 :qid |assertbpl.1091:18|
 :skolemid |202|
 :pattern ( (|MultiSet#Difference| a@@25 b@@16) (MapType0Select b@@16 y@@1) (MapType0Select a@@25 y@@1))
)))
(assert (forall ((U@@17 T@T) (V@@15 T@T) ) (! (= (type (|Map#Empty| U@@17 V@@15)) (MapType U@@17 V@@15))
 :qid |funType:Map#Empty|
 :pattern ( (|Map#Empty| U@@17 V@@15))
)))
(assert (forall ((u@@3 T@U) (V@@16 T@T) ) (! (let ((U@@18 (type u@@3)))
 (not (U_2_bool (MapType0Select (|Map#Domain| (|Map#Empty| U@@18 V@@16)) u@@3))))
 :qid |assertbpl.1503:20|
 :skolemid |288|
 :pattern ( (let ((U@@18 (type u@@3)))
(MapType0Select (|Map#Domain| (|Map#Empty| U@@18 V@@16)) u@@3)))
)))
(assert (forall ((U@@19 T@T) (V@@17 T@T) ) (! (= (type (|IMap#Empty| U@@19 V@@17)) (IMapType U@@19 V@@17))
 :qid |funType:IMap#Empty|
 :pattern ( (|IMap#Empty| U@@19 V@@17))
)))
(assert (forall ((u@@4 T@U) (V@@18 T@T) ) (! (let ((U@@20 (type u@@4)))
 (not (U_2_bool (MapType0Select (|IMap#Domain| (|IMap#Empty| U@@20 V@@18)) u@@4))))
 :qid |assertbpl.1635:20|
 :skolemid |318|
 :pattern ( (let ((U@@20 (type u@@4)))
(MapType0Select (|IMap#Domain| (|IMap#Empty| U@@20 V@@18)) u@@4)))
)))
(assert (forall ((h@@6 T@U) (k@@2 T@U) ) (!  (=> (and (and (= (type h@@6) (MapType0Type refType MapType1Type)) (= (type k@@2) (MapType0Type refType MapType1Type))) ($HeapSuccGhost h@@6 k@@2)) (and ($HeapSucc h@@6 k@@2) (forall ((o@@12 T@U) (f@@10 T@U) ) (! (let ((alpha@@4 (FieldTypeInv0 (type f@@10))))
 (=> (and (and (= (type o@@12) refType) (= (type f@@10) (FieldType alpha@@4))) (not ($IsGhostField f@@10))) (= (MapType1Select (MapType0Select h@@6 o@@12) f@@10) (MapType1Select (MapType0Select k@@2 o@@12) f@@10))))
 :qid |assertbpl.630:26|
 :skolemid |107|
 :pattern ( (MapType1Select (MapType0Select k@@2 o@@12) f@@10))
))))
 :qid |assertbpl.626:15|
 :skolemid |108|
 :pattern ( ($HeapSuccGhost h@@6 k@@2))
)))
(assert (forall ((o@@13 T@U) (p@@0 T@U) ) (!  (=> (and (and (= (type o@@13) BoxType) (= (type p@@0) BoxType)) (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@13)))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@13 p@@0)) (|ORD#IsNat| o@@13)) (= (|ORD#Offset| (|ORD#Minus| o@@13 p@@0)) (- (|ORD#Offset| o@@13) (|ORD#Offset| p@@0)))))
 :qid |assertbpl.514:15|
 :skolemid |94|
 :pattern ( (|ORD#Minus| o@@13 p@@0))
)))
(assert (forall ((a@@26 T@U) (b@@17 T@U) ) (! (let ((T@@51 (MapType0TypeInv0 (type a@@26))))
 (=> (and (= (type a@@26) (MapType0Type T@@51 boolType)) (= (type b@@17) (MapType0Type T@@51 boolType))) (= (|Set#Equal| a@@26 b@@17) (forall ((o@@14 T@U) ) (!  (=> (= (type o@@14) T@@51) (= (U_2_bool (MapType0Select a@@26 o@@14)) (U_2_bool (MapType0Select b@@17 o@@14))))
 :qid |assertbpl.882:32|
 :skolemid |150|
 :pattern ( (MapType0Select a@@26 o@@14))
 :pattern ( (MapType0Select b@@17 o@@14))
)))))
 :qid |assertbpl.880:18|
 :skolemid |151|
 :pattern ( (|Set#Equal| a@@26 b@@17))
)))
(assert (forall ((a@@27 T@U) (b@@18 T@U) ) (! (let ((T@@52 (MapType0TypeInv0 (type a@@27))))
 (=> (and (= (type a@@27) (MapType0Type T@@52 boolType)) (= (type b@@18) (MapType0Type T@@52 boolType))) (= (|ISet#Equal| a@@27 b@@18) (forall ((o@@15 T@U) ) (!  (=> (= (type o@@15) T@@52) (= (U_2_bool (MapType0Select a@@27 o@@15)) (U_2_bool (MapType0Select b@@18 o@@15))))
 :qid |assertbpl.972:33|
 :skolemid |172|
 :pattern ( (MapType0Select a@@27 o@@15))
 :pattern ( (MapType0Select b@@18 o@@15))
)))))
 :qid |assertbpl.970:18|
 :skolemid |173|
 :pattern ( (|ISet#Equal| a@@27 b@@18))
)))
(assert (forall ((a@@28 T@U) (b@@19 T@U) ) (! (let ((T@@53 (MapType0TypeInv0 (type a@@28))))
 (=> (and (= (type a@@28) (MapType0Type T@@53 intType)) (= (type b@@19) (MapType0Type T@@53 intType))) (= (|MultiSet#Card| (|MultiSet#Union| a@@28 b@@19)) (+ (|MultiSet#Card| a@@28) (|MultiSet#Card| b@@19)))))
 :qid |assertbpl.1065:18|
 :skolemid |197|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@28 b@@19)))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (let ((T@@54 (SeqTypeInv0 (type s0@@0))))
 (=> (and (= (type s0@@0) (SeqType T@@54)) (= (type s1@@0) (SeqType T@@54))) (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))))
 :qid |assertbpl.1233:18|
 :skolemid |231|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((n@@9 Int) ) (!  (=> (<= 0 n@@9) (and (|ORD#IsNat| (|ORD#FromNat| n@@9)) (= (|ORD#Offset| (|ORD#FromNat| n@@9)) n@@9)))
 :qid |assertbpl.461:15|
 :skolemid |85|
 :pattern ( (|ORD#FromNat| n@@9))
)))
(assert (forall ((arg0@@94 T@U) (arg1@@48 T@U) ) (! (= (type (Tclass._System.___hPartialFunc1 arg0@@94 arg1@@48)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc1|
 :pattern ( (Tclass._System.___hPartialFunc1 arg0@@94 arg1@@48))
)))
(assert (forall ((|#$T0| T@U) (|#$R@@4| T@U) (|f#0@@1| T@U) ($h@@13 T@U) ) (!  (=> (and (and (and (= (type |#$T0|) TyType) (= (type |#$R@@4|) TyType)) (= (type |f#0@@1|) HandleTypeType)) (= (type $h@@13) (MapType0Type refType MapType1Type))) (= ($IsAlloc |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0| |#$R@@4|) $h@@13) ($IsAlloc |f#0@@1| (Tclass._System.___hFunc1 |#$T0| |#$R@@4|) $h@@13)))
 :qid |assertbpl.2242:15|
 :skolemid |406|
 :pattern ( ($IsAlloc |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0| |#$R@@4|) $h@@13))
)))
(assert (forall ((arg0@@95 T@U) (arg1@@49 T@U) ) (! (= (type (Tclass._System.___hTotalFunc1 arg0@@95 arg1@@49)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc1|
 :pattern ( (Tclass._System.___hTotalFunc1 arg0@@95 arg1@@49))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@5| T@U) (|f#0@@2| T@U) ($h@@14 T@U) ) (!  (=> (and (and (and (= (type |#$T0@@0|) TyType) (= (type |#$R@@5|) TyType)) (= (type |f#0@@2|) HandleTypeType)) (= (type $h@@14) (MapType0Type refType MapType1Type))) (= ($IsAlloc |f#0@@2| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@5|) $h@@14) ($IsAlloc |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@5|) $h@@14)))
 :qid |assertbpl.2288:15|
 :skolemid |413|
 :pattern ( ($IsAlloc |f#0@@2| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@5|) $h@@14))
)))
(assert (forall ((ms T@U) ) (! (let ((T@@55 (MapType0TypeInv0 (type ms))))
 (=> (= (type ms) (MapType0Type T@@55 intType)) (= ($IsGoodMultiSet ms) (forall ((bx@@6 T@U) ) (!  (=> (= (type bx@@6) T@@55) (and (<= 0 (U_2_int (MapType0Select ms bx@@6))) (<= (U_2_int (MapType0Select ms bx@@6)) (|MultiSet#Card| ms))))
 :qid |assertbpl.1007:19|
 :skolemid |182|
 :pattern ( (MapType0Select ms bx@@6))
)))))
 :qid |assertbpl.1004:18|
 :skolemid |183|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((arg0@@96 T@U) (arg1@@50 T@U) ) (! (= (type (|ORD#Plus| arg0@@96 arg1@@50)) BoxType)
 :qid |funType:ORD#Plus|
 :pattern ( (|ORD#Plus| arg0@@96 arg1@@50))
)))
(assert (forall ((o@@16 T@U) (p@@1 T@U) ) (!  (=> (and (= (type o@@16) BoxType) (= (type p@@1) BoxType)) (and (or (= o@@16 (|ORD#Plus| o@@16 p@@1)) (|ORD#Less| o@@16 (|ORD#Plus| o@@16 p@@1))) (or (= p@@1 (|ORD#Plus| o@@16 p@@1)) (|ORD#Less| p@@1 (|ORD#Plus| o@@16 p@@1)))))
 :qid |assertbpl.502:15|
 :skolemid |92|
 :pattern ( (|ORD#Plus| o@@16 p@@1))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((arg0@@97 T@T) (arg1@@51 T@T) (arg2@@12 T@T) ) (! (= (Ctor (MapType3Type arg0@@97 arg1@@51 arg2@@12)) 25)
 :qid |ctor:MapType3Type|
)) (forall ((arg0@@98 T@T) (arg1@@52 T@T) (arg2@@13 T@T) ) (! (= (MapType3TypeInv0 (MapType3Type arg0@@98 arg1@@52 arg2@@13)) arg0@@98)
 :qid |typeInv:MapType3TypeInv0|
 :pattern ( (MapType3Type arg0@@98 arg1@@52 arg2@@13))
))) (forall ((arg0@@99 T@T) (arg1@@53 T@T) (arg2@@14 T@T) ) (! (= (MapType3TypeInv1 (MapType3Type arg0@@99 arg1@@53 arg2@@14)) arg1@@53)
 :qid |typeInv:MapType3TypeInv1|
 :pattern ( (MapType3Type arg0@@99 arg1@@53 arg2@@14))
))) (forall ((arg0@@100 T@T) (arg1@@54 T@T) (arg2@@15 T@T) ) (! (= (MapType3TypeInv2 (MapType3Type arg0@@100 arg1@@54 arg2@@15)) arg2@@15)
 :qid |typeInv:MapType3TypeInv2|
 :pattern ( (MapType3Type arg0@@100 arg1@@54 arg2@@15))
))) (forall ((arg0@@101 T@U) (arg1@@55 T@U) (arg2@@16 T@U) ) (! (let ((aVar2 (MapType3TypeInv2 (type arg0@@101))))
(= (type (MapType3Select arg0@@101 arg1@@55 arg2@@16)) aVar2))
 :qid |funType:MapType3Select|
 :pattern ( (MapType3Select arg0@@101 arg1@@55 arg2@@16))
))) (forall ((arg0@@102 T@U) (arg1@@56 T@U) (arg2@@17 T@U) (arg3@@2 T@U) ) (! (let ((aVar2@@0 (type arg3@@2)))
(let ((aVar1@@5 (type arg2@@17)))
(let ((aVar0@@1 (type arg1@@56)))
(= (type (MapType3Store arg0@@102 arg1@@56 arg2@@17 arg3@@2)) (MapType3Type aVar0@@1 aVar1@@5 aVar2@@0)))))
 :qid |funType:MapType3Store|
 :pattern ( (MapType3Store arg0@@102 arg1@@56 arg2@@17 arg3@@2))
))) (forall ((m@@15 T@U) (x0@@9 T@U) (x1@@3 T@U) (val@@9 T@U) ) (! (let ((aVar2@@1 (MapType3TypeInv2 (type m@@15))))
 (=> (= (type val@@9) aVar2@@1) (= (MapType3Select (MapType3Store m@@15 x0@@9 x1@@3 val@@9) x0@@9 x1@@3) val@@9)))
 :qid |mapAx0:MapType3Select|
 :weight 0
))) (and (and (forall ((val@@10 T@U) (m@@16 T@U) (x0@@10 T@U) (x1@@4 T@U) (y0@@6 T@U) (y1@@2 T@U) ) (!  (or (= x0@@10 y0@@6) (= (MapType3Select (MapType3Store m@@16 x0@@10 x1@@4 val@@10) y0@@6 y1@@2) (MapType3Select m@@16 y0@@6 y1@@2)))
 :qid |mapAx1:MapType3Select:0|
 :weight 0
)) (forall ((val@@11 T@U) (m@@17 T@U) (x0@@11 T@U) (x1@@5 T@U) (y0@@7 T@U) (y1@@3 T@U) ) (!  (or (= x1@@5 y1@@3) (= (MapType3Select (MapType3Store m@@17 x0@@11 x1@@5 val@@11) y0@@7 y1@@3) (MapType3Select m@@17 y0@@7 y1@@3)))
 :qid |mapAx1:MapType3Select:1|
 :weight 0
))) (forall ((val@@12 T@U) (m@@18 T@U) (x0@@12 T@U) (x1@@6 T@U) (y0@@8 T@U) (y1@@4 T@U) ) (!  (or true (= (MapType3Select (MapType3Store m@@18 x0@@12 x1@@6 val@@12) y0@@8 y1@@4) (MapType3Select m@@18 y0@@8 y1@@4)))
 :qid |mapAx2:MapType3Select|
 :weight 0
)))) (forall ((arg0@@103 T@U) (arg1@@57 T@U) (arg2@@18 T@U) (arg3@@3 T@U) (arg4@@0 T@U) ) (! (= (type (Apply1 arg0@@103 arg1@@57 arg2@@18 arg3@@3 arg4@@0)) BoxType)
 :qid |funType:Apply1|
 :pattern ( (Apply1 arg0@@103 arg1@@57 arg2@@18 arg3@@3 arg4@@0))
))) (forall ((arg0@@104 T@U) (arg1@@58 T@U) (arg2@@19 T@U) ) (! (= (type (Handle1 arg0@@104 arg1@@58 arg2@@19)) HandleTypeType)
 :qid |funType:Handle1|
 :pattern ( (Handle1 arg0@@104 arg1@@58 arg2@@19))
))))
(assert (forall ((t0@@12 T@U) (t1@@1 T@U) (heap@@2 T@U) (h@@7 T@U) (r@@2 T@U) (rd@@0 T@U) (bx0@@0 T@U) ) (!  (=> (and (and (and (and (and (and (= (type t0@@12) TyType) (= (type t1@@1) TyType)) (= (type heap@@2) (MapType0Type refType MapType1Type))) (= (type h@@7) (MapType3Type (MapType0Type refType MapType1Type) BoxType BoxType))) (= (type r@@2) (MapType3Type (MapType0Type refType MapType1Type) BoxType boolType))) (= (type rd@@0) (MapType3Type (MapType0Type refType MapType1Type) BoxType (MapType0Type BoxType boolType)))) (= (type bx0@@0) BoxType)) (= (Apply1 t0@@12 t1@@1 heap@@2 (Handle1 h@@7 r@@2 rd@@0) bx0@@0) (MapType3Select h@@7 heap@@2 bx0@@0)))
 :qid |assertbpl.2009:15|
 :skolemid |373|
 :pattern ( (Apply1 t0@@12 t1@@1 heap@@2 (Handle1 h@@7 r@@2 rd@@0) bx0@@0))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> (and (= (type bx@@7) BoxType) ($IsBox bx@@7 Tclass._System.nat)) (and (= ($Box ($Unbox intType bx@@7)) bx@@7) ($Is ($Unbox intType bx@@7) Tclass._System.nat)))
 :qid |assertbpl.1787:15|
 :skolemid |346|
 :pattern ( ($IsBox bx@@7 Tclass._System.nat))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> (and (= (type bx@@8) BoxType) ($IsBox bx@@8 Tclass._System.object?)) (and (= ($Box ($Unbox refType bx@@8)) bx@@8) ($Is ($Unbox refType bx@@8) Tclass._System.object?)))
 :qid |assertbpl.1811:15|
 :skolemid |349|
 :pattern ( ($IsBox bx@@8 Tclass._System.object?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> (and (= (type bx@@9) BoxType) ($IsBox bx@@9 Tclass._System.object)) (and (= ($Box ($Unbox refType bx@@9)) bx@@9) ($Is ($Unbox refType bx@@9) Tclass._System.object)))
 :qid |assertbpl.1838:15|
 :skolemid |352|
 :pattern ( ($IsBox bx@@9 Tclass._System.object))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> (and (= (type bx@@10) BoxType) ($IsBox bx@@10 Tclass._System.Tuple0)) (and (= ($Box ($Unbox DatatypeTypeType bx@@10)) bx@@10) ($Is ($Unbox DatatypeTypeType bx@@10) Tclass._System.Tuple0)))
 :qid |assertbpl.2729:15|
 :skolemid |476|
 :pattern ( ($IsBox bx@@10 Tclass._System.Tuple0))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> (and (= (type bx@@11) BoxType) ($IsBox bx@@11 Tclass._module.__default)) (and (= ($Box ($Unbox refType bx@@11)) bx@@11) ($Is ($Unbox refType bx@@11) Tclass._module.__default)))
 :qid |assertbpl.2786:15|
 :skolemid |482|
 :pattern ( ($IsBox bx@@11 Tclass._module.__default))
)))
(assert (forall ((_System.array$arg@@7 T@U) ($o@@7 T@U) ) (!  (=> (and (= (type _System.array$arg@@7) TyType) (= (type $o@@7) refType)) (= ($Is $o@@7 (Tclass._System.array? _System.array$arg@@7))  (or (= $o@@7 null) (= (dtype $o@@7) (Tclass._System.array? _System.array$arg@@7)))))
 :qid |assertbpl.1908:15|
 :skolemid |360|
 :pattern ( ($Is $o@@7 (Tclass._System.array? _System.array$arg@@7)))
)))
(assert (forall ((a@@29 T@U) (x@@17 T@U) ) (! (let ((T@@56 (type x@@17)))
 (=> (= (type a@@29) (MapType0Type T@@56 intType)) (= (U_2_int (MapType0Select (|MultiSet#UnionOne| a@@29 x@@17) x@@17)) (+ (U_2_int (MapType0Select a@@29 x@@17)) 1))))
 :qid |assertbpl.1043:18|
 :skolemid |192|
 :pattern ( (|MultiSet#UnionOne| a@@29 x@@17))
)))
(assert (forall ((|c#0@@2| T@U) ) (!  (=> (= (type |c#0@@2|) refType) (= ($Is |c#0@@2| Tclass._System.object)  (and ($Is |c#0@@2| Tclass._System.object?) (not (= |c#0@@2| null)))))
 :qid |assertbpl.1844:15|
 :skolemid |353|
 :pattern ( ($Is |c#0@@2| Tclass._System.object))
)))
(assert (forall ((s@@18 T@U) (i@@5 Int) (v@@13 T@U) ) (! (let ((T@@57 (type v@@13)))
 (=> (= (type s@@18) (SeqType T@@57)) (and (=> (= i@@5 (|Seq#Length| s@@18)) (= (|Seq#Index| (|Seq#Build| s@@18 v@@13) i@@5) v@@13)) (=> (not (= i@@5 (|Seq#Length| s@@18))) (= (|Seq#Index| (|Seq#Build| s@@18 v@@13) i@@5) (|Seq#Index| s@@18 i@@5))))))
 :qid |assertbpl.1209:18|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@18 v@@13) i@@5))
)))
(assert (forall ((arg0@@105 T@U) (arg1@@59 T@U) ) (! (= (type (|char#Minus| arg0@@105 arg1@@59)) charType)
 :qid |funType:char#Minus|
 :pattern ( (|char#Minus| arg0@@105 arg1@@59))
)))
(assert (forall ((a@@30 T@U) (b@@20 T@U) ) (!  (=> (and (= (type a@@30) charType) (= (type b@@20) charType)) (= (|char#Minus| a@@30 b@@20) (|char#FromInt| (- (|char#ToInt| a@@30) (|char#ToInt| b@@20)))))
 :qid |assertbpl.166:15|
 :skolemid |24|
 :pattern ( (|char#Minus| a@@30 b@@20))
)))
(assert (forall ((arg0@@106 T@U) (arg1@@60 T@U) ) (! (= (type (|char#Plus| arg0@@106 arg1@@60)) charType)
 :qid |funType:char#Plus|
 :pattern ( (|char#Plus| arg0@@106 arg1@@60))
)))
(assert (forall ((a@@31 T@U) (b@@21 T@U) ) (!  (=> (and (= (type a@@31) charType) (= (type b@@21) charType)) (= (|char#Plus| a@@31 b@@21) (|char#FromInt| (+ (|char#ToInt| a@@31) (|char#ToInt| b@@21)))))
 :qid |assertbpl.160:15|
 :skolemid |23|
 :pattern ( (|char#Plus| a@@31 b@@21))
)))
(assert (forall ((a@@32 T@U) (x@@18 T@U) (y@@2 T@U) ) (! (let ((T@@58 (type x@@18)))
 (=> (and (and (= (type a@@32) (MapType0Type T@@58 intType)) (= (type y@@2) T@@58)) (< 0 (U_2_int (MapType0Select a@@32 y@@2)))) (< 0 (U_2_int (MapType0Select (|MultiSet#UnionOne| a@@32 x@@18) y@@2)))))
 :qid |assertbpl.1047:18|
 :skolemid |193|
 :pattern ( (|MultiSet#UnionOne| a@@32 x@@18) (MapType0Select a@@32 y@@2))
)))
(assert (forall ((m@@19 T@U) ) (! (let ((V@@19 (MapTypeInv1 (type m@@19))))
(let ((U@@21 (MapTypeInv0 (type m@@19))))
 (=> (= (type m@@19) (MapType U@@21 V@@19)) (or (= m@@19 (|Map#Empty| U@@21 V@@19)) (exists ((k@@3 T@U) ) (!  (and (= (type k@@3) U@@21) (U_2_bool (MapType0Select (|Map#Domain| m@@19) k@@3)))
 :qid |assertbpl.1454:31|
 :skolemid |276|
 :no-pattern (type k@@3)
 :no-pattern (U_2_int k@@3)
 :no-pattern (U_2_bool k@@3)
))))))
 :qid |assertbpl.1452:20|
 :skolemid |277|
 :pattern ( (|Map#Domain| m@@19))
)))
(assert (forall ((arg0@@107 T@U) ) (! (let ((V@@20 (MapTypeInv1 (type arg0@@107))))
(= (type (|Map#Values| arg0@@107)) (MapType0Type V@@20 boolType)))
 :qid |funType:Map#Values|
 :pattern ( (|Map#Values| arg0@@107))
)))
(assert (forall ((m@@20 T@U) ) (! (let ((V@@21 (MapTypeInv1 (type m@@20))))
(let ((U@@22 (MapTypeInv0 (type m@@20))))
 (=> (= (type m@@20) (MapType U@@22 V@@21)) (or (= m@@20 (|Map#Empty| U@@22 V@@21)) (exists ((v@@14 T@U) ) (!  (and (= (type v@@14) V@@21) (U_2_bool (MapType0Select (|Map#Values| m@@20) v@@14)))
 :qid |assertbpl.1458:31|
 :skolemid |278|
 :no-pattern (type v@@14)
 :no-pattern (U_2_int v@@14)
 :no-pattern (U_2_bool v@@14)
))))))
 :qid |assertbpl.1456:20|
 :skolemid |279|
 :pattern ( (|Map#Values| m@@20))
)))
(assert (forall ((m@@21 T@U) ) (! (let ((V@@22 (IMapTypeInv1 (type m@@21))))
(let ((U@@23 (IMapTypeInv0 (type m@@21))))
 (=> (= (type m@@21) (IMapType U@@23 V@@22)) (or (= m@@21 (|IMap#Empty| U@@23 V@@22)) (exists ((k@@4 T@U) ) (!  (and (= (type k@@4) U@@23) (U_2_bool (MapType0Select (|IMap#Domain| m@@21) k@@4)))
 :qid |assertbpl.1592:32|
 :skolemid |306|
 :no-pattern (type k@@4)
 :no-pattern (U_2_int k@@4)
 :no-pattern (U_2_bool k@@4)
))))))
 :qid |assertbpl.1590:20|
 :skolemid |307|
 :pattern ( (|IMap#Domain| m@@21))
)))
(assert (forall ((arg0@@108 T@U) ) (! (let ((V@@23 (IMapTypeInv1 (type arg0@@108))))
(= (type (|IMap#Values| arg0@@108)) (MapType0Type V@@23 boolType)))
 :qid |funType:IMap#Values|
 :pattern ( (|IMap#Values| arg0@@108))
)))
(assert (forall ((m@@22 T@U) ) (! (let ((V@@24 (IMapTypeInv1 (type m@@22))))
(let ((U@@24 (IMapTypeInv0 (type m@@22))))
 (=> (= (type m@@22) (IMapType U@@24 V@@24)) (or (= m@@22 (|IMap#Empty| U@@24 V@@24)) (exists ((v@@15 T@U) ) (!  (and (= (type v@@15) V@@24) (U_2_bool (MapType0Select (|IMap#Values| m@@22) v@@15)))
 :qid |assertbpl.1596:32|
 :skolemid |308|
 :no-pattern (type v@@15)
 :no-pattern (U_2_int v@@15)
 :no-pattern (U_2_bool v@@15)
))))))
 :qid |assertbpl.1594:20|
 :skolemid |309|
 :pattern ( (|IMap#Values| m@@22))
)))
(assert (forall ((a@@33 T@U) (x@@19 T@U) (o@@17 T@U) ) (! (let ((T@@59 (type x@@19)))
 (=> (and (= (type a@@33) (MapType0Type T@@59 intType)) (= (type o@@17) T@@59)) (= (< 0 (U_2_int (MapType0Select (|MultiSet#UnionOne| a@@33 x@@19) o@@17)))  (or (= o@@17 x@@19) (< 0 (U_2_int (MapType0Select a@@33 o@@17)))))))
 :qid |assertbpl.1039:18|
 :skolemid |191|
 :pattern ( (MapType0Select (|MultiSet#UnionOne| a@@33 x@@19) o@@17))
)))
(assert (forall ((h@@8 T@U) (a@@34 T@U) ) (!  (=> (and (= (type h@@8) (MapType0Type refType MapType1Type)) (= (type a@@34) refType)) (forall ((i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length| (|Seq#FromArray| h@@8 a@@34)))) (= (|Seq#Index| (|Seq#FromArray| h@@8 a@@34) i@@6) (MapType1Select (MapType0Select h@@8 a@@34) (IndexField i@@6))))
 :qid |assertbpl.1358:11|
 :skolemid |257|
 :pattern ( (MapType1Select (MapType0Select h@@8 a@@34) (IndexField i@@6)))
 :pattern ( (|Seq#Index| (|Seq#FromArray| h@@8 a@@34) i@@6))
)))
 :qid |assertbpl.1356:15|
 :skolemid |258|
 :pattern ( (|Seq#FromArray| h@@8 a@@34))
)))
(assert (forall ((v@@16 T@U) (t0@@13 T@U) ) (!  (=> (and (= (type v@@16) (MapType0Type BoxType intType)) (= (type t0@@13) TyType)) (= ($Is v@@16 (TMultiSet t0@@13)) (forall ((bx@@12 T@U) ) (!  (=> (and (= (type bx@@12) BoxType) (< 0 (U_2_int (MapType0Select v@@16 bx@@12)))) ($IsBox bx@@12 t0@@13))
 :qid |assertbpl.277:19|
 :skolemid |49|
 :pattern ( (MapType0Select v@@16 bx@@12))
))))
 :qid |assertbpl.274:15|
 :skolemid |50|
 :pattern ( ($Is v@@16 (TMultiSet t0@@13)))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (x@@20 T@U) ) (! (let ((T@@60 (type x@@20)))
 (=> (and (= (type s0@@1) (SeqType T@@60)) (= (type s1@@1) (SeqType T@@60))) (= (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@20)  (or (|Seq#Contains| s0@@1 x@@20) (|Seq#Contains| s1@@1 x@@20)))))
 :qid |assertbpl.1274:18|
 :skolemid |239|
 :pattern ( (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@20))
)))
(assert (forall ((s@@19 T@U) (n@@10 Int) (x@@21 T@U) ) (! (let ((T@@61 (type x@@21)))
 (=> (= (type s@@19) (SeqType T@@61)) (= (|Seq#Contains| (|Seq#Take| s@@19 n@@10) x@@21) (exists ((i@@7 Int) ) (!  (and (and (and (<= 0 i@@7) (< i@@7 n@@10)) (< i@@7 (|Seq#Length| s@@19))) (= (|Seq#Index| s@@19 i@@7) x@@21))
 :qid |assertbpl.1286:19|
 :skolemid |241|
 :pattern ( (|Seq#Index| s@@19 i@@7))
)))))
 :qid |assertbpl.1283:18|
 :skolemid |242|
 :pattern ( (|Seq#Contains| (|Seq#Take| s@@19 n@@10) x@@21))
)))
(assert (forall ((arg0@@109 T@U) (arg1@@61 T@U) ) (! (let ((T@@62 (MapType0TypeInv0 (type arg0@@109))))
(= (type (|Set#Difference| arg0@@109 arg1@@61)) (MapType0Type T@@62 boolType)))
 :qid |funType:Set#Difference|
 :pattern ( (|Set#Difference| arg0@@109 arg1@@61))
)))
(assert (forall ((a@@35 T@U) (b@@22 T@U) ) (! (let ((T@@63 (MapType0TypeInv0 (type a@@35))))
 (=> (and (and (= (type a@@35) (MapType0Type T@@63 boolType)) (= (type b@@22) (MapType0Type T@@63 boolType))) (|Set#Disjoint| a@@35 b@@22)) (and (= (|Set#Difference| (|Set#Union| a@@35 b@@22) a@@35) b@@22) (= (|Set#Difference| (|Set#Union| a@@35 b@@22) b@@22) a@@35))))
 :qid |assertbpl.821:18|
 :skolemid |138|
 :pattern ( (|Set#Union| a@@35 b@@22))
)))
(assert (forall ((arg0@@110 T@U) (arg1@@62 T@U) ) (! (let ((T@@64 (MapType0TypeInv0 (type arg0@@110))))
(= (type (|ISet#Difference| arg0@@110 arg1@@62)) (MapType0Type T@@64 boolType)))
 :qid |funType:ISet#Difference|
 :pattern ( (|ISet#Difference| arg0@@110 arg1@@62))
)))
(assert (forall ((a@@36 T@U) (b@@23 T@U) ) (! (let ((T@@65 (MapType0TypeInv0 (type a@@36))))
 (=> (and (and (= (type a@@36) (MapType0Type T@@65 boolType)) (= (type b@@23) (MapType0Type T@@65 boolType))) (|ISet#Disjoint| a@@36 b@@23)) (and (= (|ISet#Difference| (|ISet#Union| a@@36 b@@23) a@@36) b@@23) (= (|ISet#Difference| (|ISet#Union| a@@36 b@@23) b@@23) a@@36))))
 :qid |assertbpl.924:18|
 :skolemid |162|
 :pattern ( (|ISet#Union| a@@36 b@@23))
)))
(assert (forall ((f@@11 T@U) (t0@@14 T@U) (t1@@2 T@U) (h@@9 T@U) ) (!  (=> (and (and (and (and (= (type f@@11) HandleTypeType) (= (type t0@@14) TyType)) (= (type t1@@2) TyType)) (= (type h@@9) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap h@@9) ($IsAlloc f@@11 (Tclass._System.___hFunc1 t0@@14 t1@@2) h@@9))) (forall ((bx0@@1 T@U) ) (!  (=> (= (type bx0@@1) BoxType) (=> (and ($IsAllocBox bx0@@1 t0@@14 h@@9) (Requires1 t0@@14 t1@@2 h@@9 f@@11 bx0@@1)) ($IsAllocBox (Apply1 t0@@14 t1@@2 h@@9 f@@11 bx0@@1) t1@@2 h@@9)))
 :qid |assertbpl.2192:18|
 :skolemid |398|
 :pattern ( (Apply1 t0@@14 t1@@2 h@@9 f@@11 bx0@@1))
)))
 :qid |assertbpl.2189:15|
 :skolemid |399|
 :pattern ( ($IsAlloc f@@11 (Tclass._System.___hFunc1 t0@@14 t1@@2) h@@9))
)))
(assert (forall ((a@@37 T@U) (b@@24 T@U) ) (! (let ((T@@66 (MapType0TypeInv0 (type a@@37))))
 (=> (and (= (type a@@37) (MapType0Type T@@66 intType)) (= (type b@@24) (MapType0Type T@@66 intType))) (= (|MultiSet#Equal| a@@37 b@@24) (forall ((o@@18 T@U) ) (!  (=> (= (type o@@18) T@@66) (= (U_2_int (MapType0Select a@@37 o@@18)) (U_2_int (MapType0Select b@@24 o@@18))))
 :qid |assertbpl.1114:37|
 :skolemid |206|
 :pattern ( (MapType0Select a@@37 o@@18))
 :pattern ( (MapType0Select b@@24 o@@18))
)))))
 :qid |assertbpl.1112:18|
 :skolemid |207|
 :pattern ( (|MultiSet#Equal| a@@37 b@@24))
)))
(assert (forall ((a@@38 T@U) (b@@25 T@U) ) (! (let ((T@@67 (MapType0TypeInv0 (type a@@38))))
 (=> (and (= (type a@@38) (MapType0Type T@@67 intType)) (= (type b@@25) (MapType0Type T@@67 intType))) (= (|MultiSet#Subset| a@@38 b@@25) (forall ((o@@19 T@U) ) (!  (=> (= (type o@@19) T@@67) (<= (U_2_int (MapType0Select a@@38 o@@19)) (U_2_int (MapType0Select b@@25 o@@19))))
 :qid |assertbpl.1108:38|
 :skolemid |204|
 :pattern ( (MapType0Select a@@38 o@@19))
 :pattern ( (MapType0Select b@@25 o@@19))
)))))
 :qid |assertbpl.1106:18|
 :skolemid |205|
 :pattern ( (|MultiSet#Subset| a@@38 b@@25))
)))
(assert (forall ((m@@23 T@U) ) (! (let ((V@@25 (MapTypeInv1 (type m@@23))))
(let ((U@@25 (MapTypeInv0 (type m@@23))))
 (=> (= (type m@@23) (MapType U@@25 V@@25)) (= (= (|Map#Card| m@@23) 0) (= m@@23 (|Map#Empty| U@@25 V@@25))))))
 :qid |assertbpl.1448:20|
 :skolemid |275|
 :pattern ( (|Map#Card| m@@23))
)))
(assert (forall ((a@@39 T@U) (b@@26 T@U) ) (!  (=> (and (and (= (type a@@39) DatatypeTypeType) (= (type b@@26) DatatypeTypeType)) true) (= (|_System.Tuple0#Equal| a@@39 b@@26) true))
 :qid |assertbpl.2764:15|
 :skolemid |480|
 :pattern ( (|_System.Tuple0#Equal| a@@39 b@@26))
)))
(assert (forall ((s@@20 T@U) (x@@22 T@U) ) (! (let ((T@@68 (type x@@22)))
 (=> (= (type s@@20) (SeqType T@@68)) (= (|Seq#Contains| s@@20 x@@22) (exists ((i@@8 Int) ) (!  (and (and (<= 0 i@@8) (< i@@8 (|Seq#Length| s@@20))) (= (|Seq#Index| s@@20 i@@8) x@@22))
 :qid |assertbpl.1266:19|
 :skolemid |236|
 :pattern ( (|Seq#Index| s@@20 i@@8))
)))))
 :qid |assertbpl.1263:18|
 :skolemid |237|
 :pattern ( (|Seq#Contains| s@@20 x@@22))
)))
(assert (forall ((f@@12 T@U) (t0@@15 T@U) (t1@@3 T@U) (h@@10 T@U) ) (!  (=> (and (and (and (and (= (type f@@12) HandleTypeType) (= (type t0@@15) TyType)) (= (type t1@@3) TyType)) (= (type h@@10) (MapType0Type refType MapType1Type))) ($IsGoodHeap h@@10)) (= ($IsAlloc f@@12 (Tclass._System.___hFunc1 t0@@15 t1@@3) h@@10) (forall ((bx0@@2 T@U) ) (!  (=> (= (type bx0@@2) BoxType) (=> (and (and ($IsBox bx0@@2 t0@@15) ($IsAllocBox bx0@@2 t0@@15 h@@10)) (Requires1 t0@@15 t1@@3 h@@10 f@@12 bx0@@2)) (forall ((r@@3 T@U) ) (!  (=> (= (type r@@3) refType) (=> (and (not (= r@@3 null)) (U_2_bool (MapType0Select (Reads1 t0@@15 t1@@3 h@@10 f@@12 bx0@@2) ($Box r@@3)))) (U_2_bool (MapType1Select (MapType0Select h@@10 r@@3) alloc))))
 :qid |assertbpl.2185:24|
 :skolemid |395|
 :pattern ( (MapType0Select (Reads1 t0@@15 t1@@3 h@@10 f@@12 bx0@@2) ($Box r@@3)))
))))
 :qid |assertbpl.2182:21|
 :skolemid |396|
 :pattern ( (Apply1 t0@@15 t1@@3 h@@10 f@@12 bx0@@2))
 :pattern ( (Reads1 t0@@15 t1@@3 h@@10 f@@12 bx0@@2))
))))
 :qid |assertbpl.2178:15|
 :skolemid |397|
 :pattern ( ($IsAlloc f@@12 (Tclass._System.___hFunc1 t0@@15 t1@@3) h@@10))
)))
(assert (forall ((s@@21 T@U) (i@@9 Int) (v@@17 T@U) (n@@11 Int) ) (! (let ((T@@69 (type v@@17)))
 (=> (= (type s@@21) (SeqType T@@69)) (=> (and (and (<= 0 i@@9) (< i@@9 n@@11)) (<= n@@11 (|Seq#Length| s@@21))) (= (|Seq#Drop| (|Seq#Update| s@@21 i@@9 v@@17) n@@11) (|Seq#Drop| s@@21 n@@11)))))
 :qid |assertbpl.1389:18|
 :skolemid |264|
 :pattern ( (|Seq#Drop| (|Seq#Update| s@@21 i@@9 v@@17) n@@11))
)))
(assert (forall ((a@@40 T@U) (b@@27 T@U) (o@@20 T@U) ) (! (let ((T@@70 (type o@@20)))
 (=> (and (= (type a@@40) (MapType0Type T@@70 boolType)) (= (type b@@27) (MapType0Type T@@70 boolType))) (= (U_2_bool (MapType0Select (|Set#Intersection| a@@40 b@@27) o@@20))  (and (U_2_bool (MapType0Select a@@40 o@@20)) (U_2_bool (MapType0Select b@@27 o@@20))))))
 :qid |assertbpl.829:18|
 :skolemid |139|
 :pattern ( (MapType0Select (|Set#Intersection| a@@40 b@@27) o@@20))
)))
(assert (forall ((a@@41 T@U) (b@@28 T@U) (o@@21 T@U) ) (! (let ((T@@71 (type o@@21)))
 (=> (and (= (type a@@41) (MapType0Type T@@71 boolType)) (= (type b@@28) (MapType0Type T@@71 boolType))) (= (U_2_bool (MapType0Select (|ISet#Intersection| a@@41 b@@28) o@@21))  (and (U_2_bool (MapType0Select a@@41 o@@21)) (U_2_bool (MapType0Select b@@28 o@@21))))))
 :qid |assertbpl.932:18|
 :skolemid |163|
 :pattern ( (MapType0Select (|ISet#Intersection| a@@41 b@@28) o@@21))
)))
(assert (forall ((o@@22 T@U) (p@@2 T@U) ) (!  (=> (and (= (type o@@22) BoxType) (= (type p@@2) BoxType)) (or (or (|ORD#Less| o@@22 p@@2) (= o@@22 p@@2)) (|ORD#Less| p@@2 o@@22)))
 :qid |assertbpl.479:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@22 p@@2) (|ORD#Less| p@@2 o@@22))
)))
(assert (forall ((|x#0@@6| Int) ) (! (= (|_module.__default.abs#requires| |x#0@@6|) true)
 :qid |assertbpl.2820:15|
 :skolemid |486|
 :pattern ( (|_module.__default.abs#requires| |x#0@@6|))
)))
(assert (forall ((a@@42 T@U) (b@@29 T@U) (o@@23 T@U) ) (! (let ((T@@72 (type o@@23)))
 (=> (and (= (type a@@42) (MapType0Type T@@72 boolType)) (= (type b@@29) (MapType0Type T@@72 boolType))) (= (U_2_bool (MapType0Select (|Set#Difference| a@@42 b@@29) o@@23))  (and (U_2_bool (MapType0Select a@@42 o@@23)) (not (U_2_bool (MapType0Select b@@29 o@@23)))))))
 :qid |assertbpl.856:18|
 :skolemid |145|
 :pattern ( (MapType0Select (|Set#Difference| a@@42 b@@29) o@@23))
)))
(assert (forall ((a@@43 T@U) (b@@30 T@U) (o@@24 T@U) ) (! (let ((T@@73 (type o@@24)))
 (=> (and (= (type a@@43) (MapType0Type T@@73 boolType)) (= (type b@@30) (MapType0Type T@@73 boolType))) (= (U_2_bool (MapType0Select (|ISet#Difference| a@@43 b@@30) o@@24))  (and (U_2_bool (MapType0Select a@@43 o@@24)) (not (U_2_bool (MapType0Select b@@30 o@@24)))))))
 :qid |assertbpl.954:18|
 :skolemid |168|
 :pattern ( (MapType0Select (|ISet#Difference| a@@43 b@@30) o@@24))
)))
(assert (forall ((v@@18 T@U) (t0@@16 T@U) (h@@11 T@U) ) (!  (=> (and (and (= (type v@@18) (MapType0Type BoxType boolType)) (= (type t0@@16) TyType)) (= (type h@@11) (MapType0Type refType MapType1Type))) (= ($IsAlloc v@@18 (TSet t0@@16) h@@11) (forall ((bx@@13 T@U) ) (!  (=> (and (= (type bx@@13) BoxType) (U_2_bool (MapType0Select v@@18 bx@@13))) ($IsAllocBox bx@@13 t0@@16 h@@11))
 :qid |assertbpl.339:19|
 :skolemid |66|
 :pattern ( (MapType0Select v@@18 bx@@13))
))))
 :qid |assertbpl.336:15|
 :skolemid |67|
 :pattern ( ($IsAlloc v@@18 (TSet t0@@16) h@@11))
)))
(assert (forall ((v@@19 T@U) (t0@@17 T@U) (h@@12 T@U) ) (!  (=> (and (and (= (type v@@19) (MapType0Type BoxType boolType)) (= (type t0@@17) TyType)) (= (type h@@12) (MapType0Type refType MapType1Type))) (= ($IsAlloc v@@19 (TISet t0@@17) h@@12) (forall ((bx@@14 T@U) ) (!  (=> (and (= (type bx@@14) BoxType) (U_2_bool (MapType0Select v@@19 bx@@14))) ($IsAllocBox bx@@14 t0@@17 h@@12))
 :qid |assertbpl.344:19|
 :skolemid |68|
 :pattern ( (MapType0Select v@@19 bx@@14))
))))
 :qid |assertbpl.341:15|
 :skolemid |69|
 :pattern ( ($IsAlloc v@@19 (TISet t0@@17) h@@12))
)))
(assert (forall ((t0@@18 T@U) (t1@@4 T@U) (h0@@5 T@U) (h1@@5 T@U) (f@@13 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and (and (and (and (= (type t0@@18) TyType) (= (type t1@@4) TyType)) (= (type h0@@5) (MapType0Type refType MapType1Type))) (= (type h1@@5) (MapType0Type refType MapType1Type))) (= (type f@@13) HandleTypeType)) (= (type bx0@@3) BoxType)) (and (and (and (and (and ($HeapSucc h0@@5 h1@@5) ($IsGoodHeap h0@@5)) ($IsGoodHeap h1@@5)) ($IsBox bx0@@3 t0@@18)) ($Is f@@13 (Tclass._System.___hFunc1 t0@@18 t1@@4))) (forall ((o@@25 T@U) (fld@@5 T@U) ) (! (let ((a@@44 (FieldTypeInv0 (type fld@@5))))
 (=> (and (and (= (type o@@25) refType) (= (type fld@@5) (FieldType a@@44))) (and (not (= o@@25 null)) (U_2_bool (MapType0Select (Reads1 t0@@18 t1@@4 h0@@5 f@@13 bx0@@3) ($Box o@@25))))) (= (MapType1Select (MapType0Select h0@@5 o@@25) fld@@5) (MapType1Select (MapType0Select h1@@5 o@@25) fld@@5))))
 :qid |assertbpl.2090:22|
 :skolemid |380|
 :no-pattern (type o@@25)
 :no-pattern (type fld@@5)
 :no-pattern (U_2_int o@@25)
 :no-pattern (U_2_bool o@@25)
 :no-pattern (U_2_int fld@@5)
 :no-pattern (U_2_bool fld@@5)
)))) (= (Requires1 t0@@18 t1@@4 h0@@5 f@@13 bx0@@3) (Requires1 t0@@18 t1@@4 h1@@5 f@@13 bx0@@3)))
 :qid |assertbpl.2081:15|
 :skolemid |381|
 :pattern ( ($HeapSucc h0@@5 h1@@5) (Requires1 t0@@18 t1@@4 h1@@5 f@@13 bx0@@3))
)))
(assert (forall ((t0@@19 T@U) (t1@@5 T@U) (h0@@6 T@U) (h1@@6 T@U) (f@@14 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and (and (and (and (= (type t0@@19) TyType) (= (type t1@@5) TyType)) (= (type h0@@6) (MapType0Type refType MapType1Type))) (= (type h1@@6) (MapType0Type refType MapType1Type))) (= (type f@@14) HandleTypeType)) (= (type bx0@@4) BoxType)) (and (and (and (and (and ($HeapSucc h0@@6 h1@@6) ($IsGoodHeap h0@@6)) ($IsGoodHeap h1@@6)) ($IsBox bx0@@4 t0@@19)) ($Is f@@14 (Tclass._System.___hFunc1 t0@@19 t1@@5))) (forall ((o@@26 T@U) (fld@@6 T@U) ) (! (let ((a@@45 (FieldTypeInv0 (type fld@@6))))
 (=> (and (and (= (type o@@26) refType) (= (type fld@@6) (FieldType a@@45))) (and (not (= o@@26 null)) (U_2_bool (MapType0Select (Reads1 t0@@19 t1@@5 h1@@6 f@@14 bx0@@4) ($Box o@@26))))) (= (MapType1Select (MapType0Select h0@@6 o@@26) fld@@6) (MapType1Select (MapType0Select h1@@6 o@@26) fld@@6))))
 :qid |assertbpl.2105:22|
 :skolemid |382|
 :no-pattern (type o@@26)
 :no-pattern (type fld@@6)
 :no-pattern (U_2_int o@@26)
 :no-pattern (U_2_bool o@@26)
 :no-pattern (U_2_int fld@@6)
 :no-pattern (U_2_bool fld@@6)
)))) (= (Requires1 t0@@19 t1@@5 h0@@6 f@@14 bx0@@4) (Requires1 t0@@19 t1@@5 h1@@6 f@@14 bx0@@4)))
 :qid |assertbpl.2096:15|
 :skolemid |383|
 :pattern ( ($HeapSucc h0@@6 h1@@6) (Requires1 t0@@19 t1@@5 h1@@6 f@@14 bx0@@4))
)))
(assert (forall ((o@@27 T@U) ) (! (let ((T@@74 (type o@@27)))
(= (U_2_int (MapType0Select (|MultiSet#Empty| T@@74) o@@27)) 0))
 :qid |assertbpl.1019:18|
 :skolemid |186|
 :pattern ( (let ((T@@74 (type o@@27)))
(MapType0Select (|MultiSet#Empty| T@@74) o@@27)))
)))
(assert (forall ((t0@@20 T@U) (heap@@3 T@U) (f@@15 T@U) ) (!  (=> (and (and (and (= (type t0@@20) TyType) (= (type heap@@3) (MapType0Type refType MapType1Type))) (= (type f@@15) HandleTypeType)) (and ($IsGoodHeap heap@@3) ($Is f@@15 (Tclass._System.___hFunc0 t0@@20)))) (= (|Set#Equal| (Reads0 t0@@20 $OneHeap f@@15) (|Set#Empty| BoxType)) (|Set#Equal| (Reads0 t0@@20 heap@@3 f@@15) (|Set#Empty| BoxType))))
 :qid |assertbpl.2420:15|
 :skolemid |432|
 :pattern ( (Reads0 t0@@20 $OneHeap f@@15) ($IsGoodHeap heap@@3))
 :pattern ( (Reads0 t0@@20 heap@@3 f@@15))
)))
(assert (forall ((arg0@@111 T@U) ) (! (= (type (|Map#Items| arg0@@111)) (MapType0Type BoxType boolType))
 :qid |funType:Map#Items|
 :pattern ( (|Map#Items| arg0@@111))
)))
(assert (forall ((m@@24 T@U) (item T@U) ) (!  (=> (and (= (type m@@24) (MapType BoxType BoxType)) (= (type item) BoxType)) (= (U_2_bool (MapType0Select (|Map#Items| m@@24) item))  (and (U_2_bool (MapType0Select (|Map#Domain| m@@24) (_System.Tuple2._0 ($Unbox DatatypeTypeType item)))) (= (MapType0Select (|Map#Elements| m@@24) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item))))))
 :qid |assertbpl.1494:15|
 :skolemid |287|
 :pattern ( (MapType0Select (|Map#Items| m@@24) item))
)))
(assert (forall ((arg0@@112 T@U) ) (! (= (type (|IMap#Items| arg0@@112)) (MapType0Type BoxType boolType))
 :qid |funType:IMap#Items|
 :pattern ( (|IMap#Items| arg0@@112))
)))
(assert (forall ((m@@25 T@U) (item@@0 T@U) ) (!  (=> (and (= (type m@@25) (IMapType BoxType BoxType)) (= (type item@@0) BoxType)) (= (U_2_bool (MapType0Select (|IMap#Items| m@@25) item@@0))  (and (U_2_bool (MapType0Select (|IMap#Domain| m@@25) (_System.Tuple2._0 ($Unbox DatatypeTypeType item@@0)))) (= (MapType0Select (|IMap#Elements| m@@25) (_System.Tuple2._0 ($Unbox DatatypeTypeType item@@0))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item@@0))))))
 :qid |assertbpl.1626:15|
 :skolemid |317|
 :pattern ( (MapType0Select (|IMap#Items| m@@25) item@@0))
)))
(assert (forall ((m@@26 T@U) (v@@20 T@U) ) (! (let ((V@@26 (type v@@20)))
(let ((U@@26 (MapTypeInv0 (type m@@26))))
 (=> (= (type m@@26) (MapType U@@26 V@@26)) (= (U_2_bool (MapType0Select (|Map#Values| m@@26) v@@20)) (exists ((u@@5 T@U) ) (!  (and (= (type u@@5) U@@26) (and (U_2_bool (MapType0Select (|Map#Domain| m@@26) u@@5)) (= v@@20 (MapType0Select (|Map#Elements| m@@26) u@@5))))
 :qid |assertbpl.1482:17|
 :skolemid |285|
 :pattern ( (MapType0Select (|Map#Domain| m@@26) u@@5))
 :pattern ( (MapType0Select (|Map#Elements| m@@26) u@@5))
))))))
 :qid |assertbpl.1479:20|
 :skolemid |286|
 :pattern ( (MapType0Select (|Map#Values| m@@26) v@@20))
)))
(assert (forall ((m@@27 T@U) (v@@21 T@U) ) (! (let ((V@@27 (type v@@21)))
(let ((U@@27 (IMapTypeInv0 (type m@@27))))
 (=> (= (type m@@27) (IMapType U@@27 V@@27)) (= (U_2_bool (MapType0Select (|IMap#Values| m@@27) v@@21)) (exists ((u@@6 T@U) ) (!  (and (= (type u@@6) U@@27) (and (U_2_bool (MapType0Select (|IMap#Domain| m@@27) u@@6)) (= v@@21 (MapType0Select (|IMap#Elements| m@@27) u@@6))))
 :qid |assertbpl.1620:17|
 :skolemid |315|
 :pattern ( (MapType0Select (|IMap#Domain| m@@27) u@@6))
 :pattern ( (MapType0Select (|IMap#Elements| m@@27) u@@6))
))))))
 :qid |assertbpl.1617:20|
 :skolemid |316|
 :pattern ( (MapType0Select (|IMap#Values| m@@27) v@@21))
)))
(assert (forall ((t0@@21 T@U) (t1@@6 T@U) (heap@@4 T@U) (h@@13 T@U) (r@@4 T@U) (rd@@1 T@U) (bx0@@5 T@U) (bx@@15 T@U) ) (!  (=> (and (and (and (and (and (and (and (= (type t0@@21) TyType) (= (type t1@@6) TyType)) (= (type heap@@4) (MapType0Type refType MapType1Type))) (= (type h@@13) (MapType3Type (MapType0Type refType MapType1Type) BoxType BoxType))) (= (type r@@4) (MapType3Type (MapType0Type refType MapType1Type) BoxType boolType))) (= (type rd@@1) (MapType3Type (MapType0Type refType MapType1Type) BoxType (MapType0Type BoxType boolType)))) (= (type bx0@@5) BoxType)) (= (type bx@@15) BoxType)) (= (U_2_bool (MapType0Select (Reads1 t0@@21 t1@@6 heap@@4 (Handle1 h@@13 r@@4 rd@@1) bx0@@5) bx@@15)) (U_2_bool (MapType0Select (MapType3Select rd@@1 heap@@4 bx0@@5) bx@@15))))
 :qid |assertbpl.2029:15|
 :skolemid |375|
 :pattern ( (MapType0Select (Reads1 t0@@21 t1@@6 heap@@4 (Handle1 h@@13 r@@4 rd@@1) bx0@@5) bx@@15))
)))
(assert (forall ((arg0@@113 T@U) (arg1@@63 T@U) ) (! (= (type (TMap arg0@@113 arg1@@63)) TyType)
 :qid |funType:TMap|
 :pattern ( (TMap arg0@@113 arg1@@63))
)))
(assert (forall ((v@@22 T@U) (t0@@22 T@U) (t1@@7 T@U) (h@@14 T@U) ) (!  (=> (and (and (and (= (type v@@22) (MapType BoxType BoxType)) (= (type t0@@22) TyType)) (= (type t1@@7) TyType)) (= (type h@@14) (MapType0Type refType MapType1Type))) (= ($IsAlloc v@@22 (TMap t0@@22 t1@@7) h@@14) (forall ((bx@@16 T@U) ) (!  (=> (and (= (type bx@@16) BoxType) (U_2_bool (MapType0Select (|Map#Domain| v@@22) bx@@16))) (and ($IsAllocBox (MapType0Select (|Map#Elements| v@@22) bx@@16) t1@@7 h@@14) ($IsAllocBox bx@@16 t0@@22 h@@14)))
 :qid |assertbpl.361:19|
 :skolemid |74|
 :pattern ( (MapType0Select (|Map#Elements| v@@22) bx@@16))
 :pattern ( (MapType0Select (|Map#Domain| v@@22) bx@@16))
))))
 :qid |assertbpl.358:15|
 :skolemid |75|
 :pattern ( ($IsAlloc v@@22 (TMap t0@@22 t1@@7) h@@14))
)))
(assert (forall ((arg0@@114 T@U) (arg1@@64 T@U) ) (! (= (type (TIMap arg0@@114 arg1@@64)) TyType)
 :qid |funType:TIMap|
 :pattern ( (TIMap arg0@@114 arg1@@64))
)))
(assert (forall ((v@@23 T@U) (t0@@23 T@U) (t1@@8 T@U) (h@@15 T@U) ) (!  (=> (and (and (and (= (type v@@23) (IMapType BoxType BoxType)) (= (type t0@@23) TyType)) (= (type t1@@8) TyType)) (= (type h@@15) (MapType0Type refType MapType1Type))) (= ($IsAlloc v@@23 (TIMap t0@@23 t1@@8) h@@15) (forall ((bx@@17 T@U) ) (!  (=> (and (= (type bx@@17) BoxType) (U_2_bool (MapType0Select (|IMap#Domain| v@@23) bx@@17))) (and ($IsAllocBox (MapType0Select (|IMap#Elements| v@@23) bx@@17) t1@@8 h@@15) ($IsAllocBox bx@@17 t0@@23 h@@15)))
 :qid |assertbpl.369:19|
 :skolemid |76|
 :pattern ( (MapType0Select (|IMap#Elements| v@@23) bx@@17))
 :pattern ( (MapType0Select (|IMap#Domain| v@@23) bx@@17))
))))
 :qid |assertbpl.366:15|
 :skolemid |77|
 :pattern ( ($IsAlloc v@@23 (TIMap t0@@23 t1@@8) h@@15))
)))
(assert (forall ((o@@28 T@U) (p@@3 T@U) ) (!  (=> (and (= (type o@@28) BoxType) (= (type p@@3) BoxType)) (and (=> (= o@@28 (|ORD#FromNat| 0)) (= (|ORD#Plus| o@@28 p@@3) p@@3)) (=> (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Plus| o@@28 p@@3) o@@28))))
 :qid |assertbpl.507:15|
 :skolemid |93|
 :pattern ( (|ORD#Plus| o@@28 p@@3))
)))
(assert (forall ((x@@23 Int) (y@@3 Int) ) (! (= (INTERNAL_div_boogie x@@23 y@@3) (div x@@23 y@@3))
 :qid |assertbpl.1724:15|
 :skolemid |335|
 :pattern ( (INTERNAL_div_boogie x@@23 y@@3))
)))
(assert (forall ((x@@24 Int) (y@@4 Int) ) (! (= (Div x@@24 y@@4) (div x@@24 y@@4))
 :qid |assertbpl.1764:15|
 :skolemid |342|
 :pattern ( (Div x@@24 y@@4))
)))
(assert (forall ((o@@29 T@U) (p@@4 T@U) ) (!  (=> (and (= (type o@@29) BoxType) (= (type p@@4) BoxType)) (= (|ORD#LessThanLimit| o@@29 p@@4) (|ORD#Less| o@@29 p@@4)))
 :qid |assertbpl.489:15|
 :skolemid |90|
 :pattern ( (|ORD#LessThanLimit| o@@29 p@@4))
)))
(assert (forall ((a@@46 T@U) (b@@31 T@U) ) (! (let ((T@@75 (MapType0TypeInv0 (type a@@46))))
 (=> (and (and (= (type a@@46) (MapType0Type T@@75 boolType)) (= (type b@@31) (MapType0Type T@@75 boolType))) (|Set#Equal| a@@46 b@@31)) (= a@@46 b@@31)))
 :qid |assertbpl.884:18|
 :skolemid |152|
 :pattern ( (|Set#Equal| a@@46 b@@31))
)))
(assert (forall ((a@@47 T@U) (b@@32 T@U) ) (! (let ((T@@76 (MapType0TypeInv0 (type a@@47))))
 (=> (and (and (= (type a@@47) (MapType0Type T@@76 boolType)) (= (type b@@32) (MapType0Type T@@76 boolType))) (|ISet#Equal| a@@47 b@@32)) (= a@@47 b@@32)))
 :qid |assertbpl.974:18|
 :skolemid |174|
 :pattern ( (|ISet#Equal| a@@47 b@@32))
)))
(assert (forall ((a@@48 T@U) (b@@33 T@U) ) (! (let ((T@@77 (MapType0TypeInv0 (type a@@48))))
 (=> (and (and (= (type a@@48) (MapType0Type T@@77 intType)) (= (type b@@33) (MapType0Type T@@77 intType))) (|MultiSet#Equal| a@@48 b@@33)) (= a@@48 b@@33)))
 :qid |assertbpl.1116:18|
 :skolemid |208|
 :pattern ( (|MultiSet#Equal| a@@48 b@@33))
)))
(assert (forall ((a@@49 T@U) (b@@34 T@U) ) (! (let ((T@@78 (SeqTypeInv0 (type a@@49))))
 (=> (and (and (= (type a@@49) (SeqType T@@78)) (= (type b@@34) (SeqType T@@78))) (|Seq#Equal| a@@49 b@@34)) (= a@@49 b@@34)))
 :qid |assertbpl.1307:18|
 :skolemid |247|
 :pattern ( (|Seq#Equal| a@@49 b@@34))
)))
(assert (forall ((m@@28 T@U) (|m'@@0| T@U) ) (! (let ((V@@28 (MapTypeInv1 (type m@@28))))
(let ((U@@28 (MapTypeInv0 (type m@@28))))
 (=> (and (and (= (type m@@28) (MapType U@@28 V@@28)) (= (type |m'@@0|) (MapType U@@28 V@@28))) (|Map#Equal| m@@28 |m'@@0|)) (= m@@28 |m'@@0|))))
 :qid |assertbpl.1571:20|
 :skolemid |303|
 :pattern ( (|Map#Equal| m@@28 |m'@@0|))
)))
(assert (forall ((m@@29 T@U) (|m'@@1| T@U) ) (! (let ((V@@29 (IMapTypeInv1 (type m@@29))))
(let ((U@@29 (IMapTypeInv0 (type m@@29))))
 (=> (and (and (= (type m@@29) (IMapType U@@29 V@@29)) (= (type |m'@@1|) (IMapType U@@29 V@@29))) (|IMap#Equal| m@@29 |m'@@1|)) (= m@@29 |m'@@1|))))
 :qid |assertbpl.1675:20|
 :skolemid |327|
 :pattern ( (|IMap#Equal| m@@29 |m'@@1|))
)))
(assert (forall ((arg0@@115 T@U) (arg1@@65 T@U) ) (! (let ((T@@79 (type arg1@@65)))
(= (type (|Set#UnionOne| arg0@@115 arg1@@65)) (MapType0Type T@@79 boolType)))
 :qid |funType:Set#UnionOne|
 :pattern ( (|Set#UnionOne| arg0@@115 arg1@@65))
)))
(assert (forall ((a@@50 T@U) (x@@25 T@U) (y@@5 T@U) ) (! (let ((T@@80 (type x@@25)))
 (=> (and (and (= (type a@@50) (MapType0Type T@@80 boolType)) (= (type y@@5) T@@80)) (U_2_bool (MapType0Select a@@50 y@@5))) (U_2_bool (MapType0Select (|Set#UnionOne| a@@50 x@@25) y@@5))))
 :qid |assertbpl.795:18|
 :skolemid |132|
 :pattern ( (|Set#UnionOne| a@@50 x@@25) (MapType0Select a@@50 y@@5))
)))
(assert (forall ((a@@51 T@U) (b@@35 T@U) (y@@6 T@U) ) (! (let ((T@@81 (type y@@6)))
 (=> (and (and (= (type a@@51) (MapType0Type T@@81 boolType)) (= (type b@@35) (MapType0Type T@@81 boolType))) (U_2_bool (MapType0Select a@@51 y@@6))) (U_2_bool (MapType0Select (|Set#Union| a@@51 b@@35) y@@6))))
 :qid |assertbpl.813:18|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@51 b@@35) (MapType0Select a@@51 y@@6))
)))
(assert (forall ((a@@52 T@U) (b@@36 T@U) (y@@7 T@U) ) (! (let ((T@@82 (type y@@7)))
 (=> (and (and (= (type a@@52) (MapType0Type T@@82 boolType)) (= (type b@@36) (MapType0Type T@@82 boolType))) (U_2_bool (MapType0Select b@@36 y@@7))) (U_2_bool (MapType0Select (|Set#Union| a@@52 b@@36) y@@7))))
 :qid |assertbpl.817:18|
 :skolemid |137|
 :pattern ( (|Set#Union| a@@52 b@@36) (MapType0Select b@@36 y@@7))
)))
(assert (forall ((arg0@@116 T@U) (arg1@@66 T@U) ) (! (let ((T@@83 (type arg1@@66)))
(= (type (|ISet#UnionOne| arg0@@116 arg1@@66)) (MapType0Type T@@83 boolType)))
 :qid |funType:ISet#UnionOne|
 :pattern ( (|ISet#UnionOne| arg0@@116 arg1@@66))
)))
(assert (forall ((a@@53 T@U) (x@@26 T@U) (y@@8 T@U) ) (! (let ((T@@84 (type x@@26)))
 (=> (and (and (= (type a@@53) (MapType0Type T@@84 boolType)) (= (type y@@8) T@@84)) (U_2_bool (MapType0Select a@@53 y@@8))) (U_2_bool (MapType0Select (|ISet#UnionOne| a@@53 x@@26) y@@8))))
 :qid |assertbpl.906:18|
 :skolemid |158|
 :pattern ( (|ISet#UnionOne| a@@53 x@@26) (MapType0Select a@@53 y@@8))
)))
(assert (forall ((a@@54 T@U) (b@@37 T@U) (y@@9 T@U) ) (! (let ((T@@85 (type y@@9)))
 (=> (and (and (= (type a@@54) (MapType0Type T@@85 boolType)) (= (type b@@37) (MapType0Type T@@85 boolType))) (U_2_bool (MapType0Select a@@54 y@@9))) (U_2_bool (MapType0Select (|ISet#Union| a@@54 b@@37) y@@9))))
 :qid |assertbpl.916:18|
 :skolemid |160|
 :pattern ( (|ISet#Union| a@@54 b@@37) (MapType0Select a@@54 y@@9))
)))
(assert (forall ((a@@55 T@U) (b@@38 T@U) (y@@10 T@U) ) (! (let ((T@@86 (type y@@10)))
 (=> (and (and (= (type a@@55) (MapType0Type T@@86 boolType)) (= (type b@@38) (MapType0Type T@@86 boolType))) (U_2_bool (MapType0Select b@@38 y@@10))) (U_2_bool (MapType0Select (|ISet#Union| a@@55 b@@38) y@@10))))
 :qid |assertbpl.920:18|
 :skolemid |161|
 :pattern ( (|ISet#Union| a@@55 b@@38) (MapType0Select b@@38 y@@10))
)))
(assert (forall ((x@@27 Int) ) (! (= (q@Real x@@27) (to_real x@@27))
 :qid |assertbpl.658:15|
 :skolemid |113|
 :pattern ( (q@Real x@@27))
)))
(assert (forall ((a@@56 T@U) (x@@28 T@U) (o@@30 T@U) ) (! (let ((T@@87 (type x@@28)))
 (=> (and (= (type a@@56) (MapType0Type T@@87 boolType)) (= (type o@@30) T@@87)) (= (U_2_bool (MapType0Select (|Set#UnionOne| a@@56 x@@28) o@@30))  (or (= o@@30 x@@28) (U_2_bool (MapType0Select a@@56 o@@30))))))
 :qid |assertbpl.789:18|
 :skolemid |130|
 :pattern ( (MapType0Select (|Set#UnionOne| a@@56 x@@28) o@@30))
)))
(assert (forall ((a@@57 T@U) (x@@29 T@U) (o@@31 T@U) ) (! (let ((T@@88 (type x@@29)))
 (=> (and (= (type a@@57) (MapType0Type T@@88 boolType)) (= (type o@@31) T@@88)) (= (U_2_bool (MapType0Select (|ISet#UnionOne| a@@57 x@@29) o@@31))  (or (= o@@31 x@@29) (U_2_bool (MapType0Select a@@57 o@@31))))))
 :qid |assertbpl.900:18|
 :skolemid |156|
 :pattern ( (MapType0Select (|ISet#UnionOne| a@@57 x@@29) o@@31))
)))
(assert (forall ((s@@22 T@U) (n@@12 Int) ) (! (let ((T@@89 (SeqTypeInv0 (type s@@22))))
 (=> (= (type s@@22) (SeqType T@@89)) (=> (and (<= 0 n@@12) (<= n@@12 (|Seq#Length| s@@22))) (= (|Seq#Length| (|Seq#Take| s@@22 n@@12)) n@@12))))
 :qid |assertbpl.1320:18|
 :skolemid |250|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@22 n@@12)))
)))
(assert (forall ((a@@58 T@U) (b@@39 T@U) (c T@U) ) (!  (=> (and (and (and (and (= (type a@@58) (MapType0Type refType MapType1Type)) (= (type b@@39) (MapType0Type refType MapType1Type))) (= (type c) (MapType0Type refType MapType1Type))) (not (= a@@58 c))) (and ($HeapSucc a@@58 b@@39) ($HeapSucc b@@39 c))) ($HeapSucc a@@58 c))
 :qid |assertbpl.695:15|
 :skolemid |116|
 :pattern ( ($HeapSucc a@@58 b@@39) ($HeapSucc b@@39 c))
)))
(assert (forall ((a@@59 T@U) (b@@40 T@U) (y@@11 T@U) ) (! (let ((T@@90 (type y@@11)))
 (=> (and (and (= (type a@@59) (MapType0Type T@@90 boolType)) (= (type b@@40) (MapType0Type T@@90 boolType))) (U_2_bool (MapType0Select b@@40 y@@11))) (not (U_2_bool (MapType0Select (|Set#Difference| a@@59 b@@40) y@@11)))))
 :qid |assertbpl.860:18|
 :skolemid |146|
 :pattern ( (|Set#Difference| a@@59 b@@40) (MapType0Select b@@40 y@@11))
)))
(assert (forall ((a@@60 T@U) (b@@41 T@U) (y@@12 T@U) ) (! (let ((T@@91 (type y@@12)))
 (=> (and (and (= (type a@@60) (MapType0Type T@@91 boolType)) (= (type b@@41) (MapType0Type T@@91 boolType))) (U_2_bool (MapType0Select b@@41 y@@12))) (not (U_2_bool (MapType0Select (|ISet#Difference| a@@60 b@@41) y@@12)))))
 :qid |assertbpl.958:18|
 :skolemid |169|
 :pattern ( (|ISet#Difference| a@@60 b@@41) (MapType0Select b@@41 y@@12))
)))
(assert (forall ((f@@16 T@U) (t0@@24 T@U) (t1@@9 T@U) ) (!  (=> (and (and (= (type f@@16) HandleTypeType) (= (type t0@@24) TyType)) (= (type t1@@9) TyType)) (= ($Is f@@16 (Tclass._System.___hFunc1 t0@@24 t1@@9)) (forall ((h@@16 T@U) (bx0@@6 T@U) ) (!  (=> (and (= (type h@@16) (MapType0Type refType MapType1Type)) (= (type bx0@@6) BoxType)) (=> (and (and ($IsGoodHeap h@@16) ($IsBox bx0@@6 t0@@24)) (Requires1 t0@@24 t1@@9 h@@16 f@@16 bx0@@6)) ($IsBox (Apply1 t0@@24 t1@@9 h@@16 f@@16 bx0@@6) t1@@9)))
 :qid |assertbpl.2162:19|
 :skolemid |390|
 :pattern ( (Apply1 t0@@24 t1@@9 h@@16 f@@16 bx0@@6))
))))
 :qid |assertbpl.2159:15|
 :skolemid |391|
 :pattern ( ($Is f@@16 (Tclass._System.___hFunc1 t0@@24 t1@@9)))
)))
(assert (forall ((T@@92 T@T) ) (! (= (type (|ISet#Empty| T@@92)) (MapType0Type T@@92 boolType))
 :qid |funType:ISet#Empty|
 :pattern ( (|ISet#Empty| T@@92))
)))
(assert (forall ((m@@30 T@U) ) (! (let ((V@@30 (IMapTypeInv1 (type m@@30))))
(let ((U@@30 (IMapTypeInv0 (type m@@30))))
 (=> (= (type m@@30) (IMapType U@@30 V@@30)) (= (= m@@30 (|IMap#Empty| U@@30 V@@30)) (= (|IMap#Domain| m@@30) (|ISet#Empty| U@@30))))))
 :qid |assertbpl.1603:20|
 :skolemid |312|
 :pattern ( (|IMap#Domain| m@@30))
)))
(assert (forall ((m@@31 T@U) ) (! (let ((V@@31 (IMapTypeInv1 (type m@@31))))
(let ((U@@31 (IMapTypeInv0 (type m@@31))))
 (=> (= (type m@@31) (IMapType U@@31 V@@31)) (= (= m@@31 (|IMap#Empty| U@@31 V@@31)) (= (|IMap#Values| m@@31) (|ISet#Empty| V@@31))))))
 :qid |assertbpl.1607:20|
 :skolemid |313|
 :pattern ( (|IMap#Values| m@@31))
)))
(assert (forall ((m@@32 T@U) ) (! (let ((V@@32 (IMapTypeInv1 (type m@@32))))
(let ((U@@32 (IMapTypeInv0 (type m@@32))))
 (=> (= (type m@@32) (IMapType U@@32 V@@32)) (= (= m@@32 (|IMap#Empty| U@@32 V@@32)) (= (|IMap#Items| m@@32) (|ISet#Empty| BoxType))))))
 :qid |assertbpl.1611:20|
 :skolemid |314|
 :pattern ( (|IMap#Items| m@@32))
)))
(assert (forall ((m@@33 T@U) ) (! (let ((V@@33 (MapTypeInv1 (type m@@33))))
(let ((U@@33 (MapTypeInv0 (type m@@33))))
 (=> (= (type m@@33) (MapType U@@33 V@@33)) (or (= m@@33 (|Map#Empty| U@@33 V@@33)) (exists ((k@@5 T@U) (v@@24 T@U) ) (!  (and (and (= (type k@@5) BoxType) (= (type v@@24) BoxType)) (U_2_bool (MapType0Select (|Map#Items| m@@33) ($Box (|#_System._tuple#2._#Make2| k@@5 v@@24)))))
 :qid |assertbpl.1463:17|
 :skolemid |280|
 :no-pattern (type k@@5)
 :no-pattern (type v@@24)
 :no-pattern (U_2_int k@@5)
 :no-pattern (U_2_bool k@@5)
 :no-pattern (U_2_int v@@24)
 :no-pattern (U_2_bool v@@24)
))))))
 :qid |assertbpl.1460:20|
 :skolemid |281|
 :pattern ( (|Map#Items| m@@33))
)))
(assert (forall ((m@@34 T@U) ) (! (let ((V@@34 (IMapTypeInv1 (type m@@34))))
(let ((U@@34 (IMapTypeInv0 (type m@@34))))
 (=> (= (type m@@34) (IMapType U@@34 V@@34)) (or (= m@@34 (|IMap#Empty| U@@34 V@@34)) (exists ((k@@6 T@U) (v@@25 T@U) ) (!  (and (and (= (type k@@6) BoxType) (= (type v@@25) BoxType)) (U_2_bool (MapType0Select (|IMap#Items| m@@34) ($Box (|#_System._tuple#2._#Make2| k@@6 v@@25)))))
 :qid |assertbpl.1601:17|
 :skolemid |310|
 :no-pattern (type k@@6)
 :no-pattern (type v@@25)
 :no-pattern (U_2_int k@@6)
 :no-pattern (U_2_bool k@@6)
 :no-pattern (U_2_int v@@25)
 :no-pattern (U_2_bool v@@25)
))))))
 :qid |assertbpl.1598:20|
 :skolemid |311|
 :pattern ( (|IMap#Items| m@@34))
)))
(assert  (and (forall ((alpha@@5 T@T) (arg0@@117 T@U) (arg1@@67 T@U) ) (! (= (type (FieldOfDecl alpha@@5 arg0@@117 arg1@@67)) (FieldType alpha@@5))
 :qid |funType:FieldOfDecl|
 :pattern ( (FieldOfDecl alpha@@5 arg0@@117 arg1@@67))
)) (forall ((arg0@@118 T@U) ) (! (= (type (DeclType arg0@@118)) ClassNameType)
 :qid |funType:DeclType|
 :pattern ( (DeclType arg0@@118))
))))
(assert (forall ((cl T@U) (nm T@U) (T@@93 T@T) ) (!  (=> (and (= (type cl) ClassNameType) (= (type nm) NameFamilyType)) (and (= (DeclType (FieldOfDecl T@@93 cl nm)) cl) (= (DeclName (FieldOfDecl T@@93 cl nm)) nm)))
 :qid |assertbpl.619:18|
 :skolemid |106|
 :pattern ( (FieldOfDecl T@@93 cl nm))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> (and (= (type bx@@18) BoxType) ($IsBox bx@@18 TInt)) (and (= ($Box ($Unbox intType bx@@18)) bx@@18) ($Is ($Unbox intType bx@@18) TInt)))
 :qid |assertbpl.190:15|
 :skolemid |26|
 :pattern ( ($IsBox bx@@18 TInt))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> (and (= (type bx@@19) BoxType) ($IsBox bx@@19 TReal)) (and (= ($Box ($Unbox realType bx@@19)) bx@@19) ($Is ($Unbox realType bx@@19) TReal)))
 :qid |assertbpl.194:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@19 TReal))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> (and (= (type bx@@20) BoxType) ($IsBox bx@@20 TBool)) (and (= ($Box ($Unbox boolType bx@@20)) bx@@20) ($Is ($Unbox boolType bx@@20) TBool)))
 :qid |assertbpl.199:15|
 :skolemid |28|
 :pattern ( ($IsBox bx@@20 TBool))
)))
(assert (forall ((bx@@21 T@U) ) (!  (=> (and (= (type bx@@21) BoxType) ($IsBox bx@@21 TChar)) (and (= ($Box ($Unbox charType bx@@21)) bx@@21) ($Is ($Unbox charType bx@@21) TChar)))
 :qid |assertbpl.204:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@21 TChar))
)))
(assert (forall ((a@@61 T@U) (b@@42 T@U) ) (! (let ((T@@94 (MapType0TypeInv0 (type a@@61))))
 (=> (and (= (type a@@61) (MapType0Type T@@94 boolType)) (= (type b@@42) (MapType0Type T@@94 boolType))) (and (= (+ (+ (|Set#Card| (|Set#Difference| a@@61 b@@42)) (|Set#Card| (|Set#Difference| b@@42 a@@61))) (|Set#Card| (|Set#Intersection| a@@61 b@@42))) (|Set#Card| (|Set#Union| a@@61 b@@42))) (= (|Set#Card| (|Set#Difference| a@@61 b@@42)) (- (|Set#Card| a@@61) (|Set#Card| (|Set#Intersection| a@@61 b@@42)))))))
 :qid |assertbpl.864:18|
 :skolemid |147|
 :pattern ( (|Set#Card| (|Set#Difference| a@@61 b@@42)))
)))
(assert (forall ((v@@26 T@U) (t@@8 T@U) ) (!  (=> (= (type t@@8) TyType) (= ($IsBox ($Box v@@26) t@@8) ($Is v@@26 t@@8)))
 :qid |assertbpl.246:18|
 :skolemid |37|
 :pattern ( ($IsBox ($Box v@@26) t@@8))
)))
(assert (forall ((t0@@25 T@U) (t1@@10 T@U) (h0@@7 T@U) (h1@@7 T@U) (f@@17 T@U) (bx0@@7 T@U) ) (!  (=> (and (and (and (and (and (and (= (type t0@@25) TyType) (= (type t1@@10) TyType)) (= (type h0@@7) (MapType0Type refType MapType1Type))) (= (type h1@@7) (MapType0Type refType MapType1Type))) (= (type f@@17) HandleTypeType)) (= (type bx0@@7) BoxType)) (and (and (and (and (and ($HeapSucc h0@@7 h1@@7) ($IsGoodHeap h0@@7)) ($IsGoodHeap h1@@7)) ($IsBox bx0@@7 t0@@25)) ($Is f@@17 (Tclass._System.___hFunc1 t0@@25 t1@@10))) (forall ((o@@32 T@U) (fld@@7 T@U) ) (! (let ((a@@62 (FieldTypeInv0 (type fld@@7))))
 (=> (and (and (= (type o@@32) refType) (= (type fld@@7) (FieldType a@@62))) (and (not (= o@@32 null)) (U_2_bool (MapType0Select (Reads1 t0@@25 t1@@10 h0@@7 f@@17 bx0@@7) ($Box o@@32))))) (= (MapType1Select (MapType0Select h0@@7 o@@32) fld@@7) (MapType1Select (MapType0Select h1@@7 o@@32) fld@@7))))
 :qid |assertbpl.2060:22|
 :skolemid |376|
 :no-pattern (type o@@32)
 :no-pattern (type fld@@7)
 :no-pattern (U_2_int o@@32)
 :no-pattern (U_2_bool o@@32)
 :no-pattern (U_2_int fld@@7)
 :no-pattern (U_2_bool fld@@7)
)))) (= (Reads1 t0@@25 t1@@10 h0@@7 f@@17 bx0@@7) (Reads1 t0@@25 t1@@10 h1@@7 f@@17 bx0@@7)))
 :qid |assertbpl.2051:15|
 :skolemid |377|
 :pattern ( ($HeapSucc h0@@7 h1@@7) (Reads1 t0@@25 t1@@10 h1@@7 f@@17 bx0@@7))
)))
(assert (forall ((t0@@26 T@U) (t1@@11 T@U) (h0@@8 T@U) (h1@@8 T@U) (f@@18 T@U) (bx0@@8 T@U) ) (!  (=> (and (and (and (and (and (and (= (type t0@@26) TyType) (= (type t1@@11) TyType)) (= (type h0@@8) (MapType0Type refType MapType1Type))) (= (type h1@@8) (MapType0Type refType MapType1Type))) (= (type f@@18) HandleTypeType)) (= (type bx0@@8) BoxType)) (and (and (and (and (and ($HeapSucc h0@@8 h1@@8) ($IsGoodHeap h0@@8)) ($IsGoodHeap h1@@8)) ($IsBox bx0@@8 t0@@26)) ($Is f@@18 (Tclass._System.___hFunc1 t0@@26 t1@@11))) (forall ((o@@33 T@U) (fld@@8 T@U) ) (! (let ((a@@63 (FieldTypeInv0 (type fld@@8))))
 (=> (and (and (= (type o@@33) refType) (= (type fld@@8) (FieldType a@@63))) (and (not (= o@@33 null)) (U_2_bool (MapType0Select (Reads1 t0@@26 t1@@11 h1@@8 f@@18 bx0@@8) ($Box o@@33))))) (= (MapType1Select (MapType0Select h0@@8 o@@33) fld@@8) (MapType1Select (MapType0Select h1@@8 o@@33) fld@@8))))
 :qid |assertbpl.2075:22|
 :skolemid |378|
 :no-pattern (type o@@33)
 :no-pattern (type fld@@8)
 :no-pattern (U_2_int o@@33)
 :no-pattern (U_2_bool o@@33)
 :no-pattern (U_2_int fld@@8)
 :no-pattern (U_2_bool fld@@8)
)))) (= (Reads1 t0@@26 t1@@11 h0@@8 f@@18 bx0@@8) (Reads1 t0@@26 t1@@11 h1@@8 f@@18 bx0@@8)))
 :qid |assertbpl.2066:15|
 :skolemid |379|
 :pattern ( ($HeapSucc h0@@8 h1@@8) (Reads1 t0@@26 t1@@11 h1@@8 f@@18 bx0@@8))
)))
(assert (forall ((t0@@27 T@U) (t1@@12 T@U) (h0@@9 T@U) (h1@@9 T@U) (f@@19 T@U) (bx0@@9 T@U) ) (!  (=> (and (and (and (and (and (and (= (type t0@@27) TyType) (= (type t1@@12) TyType)) (= (type h0@@9) (MapType0Type refType MapType1Type))) (= (type h1@@9) (MapType0Type refType MapType1Type))) (= (type f@@19) HandleTypeType)) (= (type bx0@@9) BoxType)) (and (and (and (and (and ($HeapSucc h0@@9 h1@@9) ($IsGoodHeap h0@@9)) ($IsGoodHeap h1@@9)) ($IsBox bx0@@9 t0@@27)) ($Is f@@19 (Tclass._System.___hFunc1 t0@@27 t1@@12))) (forall ((o@@34 T@U) (fld@@9 T@U) ) (! (let ((a@@64 (FieldTypeInv0 (type fld@@9))))
 (=> (and (and (= (type o@@34) refType) (= (type fld@@9) (FieldType a@@64))) (and (not (= o@@34 null)) (U_2_bool (MapType0Select (Reads1 t0@@27 t1@@12 h0@@9 f@@19 bx0@@9) ($Box o@@34))))) (= (MapType1Select (MapType0Select h0@@9 o@@34) fld@@9) (MapType1Select (MapType0Select h1@@9 o@@34) fld@@9))))
 :qid |assertbpl.2120:22|
 :skolemid |384|
 :no-pattern (type o@@34)
 :no-pattern (type fld@@9)
 :no-pattern (U_2_int o@@34)
 :no-pattern (U_2_bool o@@34)
 :no-pattern (U_2_int fld@@9)
 :no-pattern (U_2_bool fld@@9)
)))) (= (Apply1 t0@@27 t1@@12 h0@@9 f@@19 bx0@@9) (Apply1 t0@@27 t1@@12 h1@@9 f@@19 bx0@@9)))
 :qid |assertbpl.2111:15|
 :skolemid |385|
 :pattern ( ($HeapSucc h0@@9 h1@@9) (Apply1 t0@@27 t1@@12 h1@@9 f@@19 bx0@@9))
)))
(assert (forall ((t0@@28 T@U) (t1@@13 T@U) (h0@@10 T@U) (h1@@10 T@U) (f@@20 T@U) (bx0@@10 T@U) ) (!  (=> (and (and (and (and (and (and (= (type t0@@28) TyType) (= (type t1@@13) TyType)) (= (type h0@@10) (MapType0Type refType MapType1Type))) (= (type h1@@10) (MapType0Type refType MapType1Type))) (= (type f@@20) HandleTypeType)) (= (type bx0@@10) BoxType)) (and (and (and (and (and ($HeapSucc h0@@10 h1@@10) ($IsGoodHeap h0@@10)) ($IsGoodHeap h1@@10)) ($IsBox bx0@@10 t0@@28)) ($Is f@@20 (Tclass._System.___hFunc1 t0@@28 t1@@13))) (forall ((o@@35 T@U) (fld@@10 T@U) ) (! (let ((a@@65 (FieldTypeInv0 (type fld@@10))))
 (=> (and (and (= (type o@@35) refType) (= (type fld@@10) (FieldType a@@65))) (and (not (= o@@35 null)) (U_2_bool (MapType0Select (Reads1 t0@@28 t1@@13 h1@@10 f@@20 bx0@@10) ($Box o@@35))))) (= (MapType1Select (MapType0Select h0@@10 o@@35) fld@@10) (MapType1Select (MapType0Select h1@@10 o@@35) fld@@10))))
 :qid |assertbpl.2135:22|
 :skolemid |386|
 :no-pattern (type o@@35)
 :no-pattern (type fld@@10)
 :no-pattern (U_2_int o@@35)
 :no-pattern (U_2_bool o@@35)
 :no-pattern (U_2_int fld@@10)
 :no-pattern (U_2_bool fld@@10)
)))) (= (Apply1 t0@@28 t1@@13 h0@@10 f@@20 bx0@@10) (Apply1 t0@@28 t1@@13 h1@@10 f@@20 bx0@@10)))
 :qid |assertbpl.2126:15|
 :skolemid |387|
 :pattern ( ($HeapSucc h0@@10 h1@@10) (Apply1 t0@@28 t1@@13 h1@@10 f@@20 bx0@@10))
)))
(assert (forall ((t0@@29 T@U) (t1@@14 T@U) (heap@@5 T@U) (h@@17 T@U) (r@@5 T@U) (rd@@2 T@U) (bx0@@11 T@U) ) (!  (=> (and (and (and (and (and (and (and (= (type t0@@29) TyType) (= (type t1@@14) TyType)) (= (type heap@@5) (MapType0Type refType MapType1Type))) (= (type h@@17) (MapType3Type (MapType0Type refType MapType1Type) BoxType BoxType))) (= (type r@@5) (MapType3Type (MapType0Type refType MapType1Type) BoxType boolType))) (= (type rd@@2) (MapType3Type (MapType0Type refType MapType1Type) BoxType (MapType0Type BoxType boolType)))) (= (type bx0@@11) BoxType)) (U_2_bool (MapType3Select r@@5 heap@@5 bx0@@11))) (Requires1 t0@@29 t1@@14 heap@@5 (Handle1 h@@17 r@@5 rd@@2) bx0@@11))
 :qid |assertbpl.2019:15|
 :skolemid |374|
 :pattern ( (Requires1 t0@@29 t1@@14 heap@@5 (Handle1 h@@17 r@@5 rd@@2) bx0@@11))
)))
(assert (forall ((arg0@@119 T@U) ) (! (let ((T@@95 (MapType0TypeInv0 (type arg0@@119))))
(= (type (|MultiSet#FromSet| arg0@@119)) (MapType0Type T@@95 intType)))
 :qid |funType:MultiSet#FromSet|
 :pattern ( (|MultiSet#FromSet| arg0@@119))
)))
(assert (forall ((s@@23 T@U) (a@@66 T@U) ) (! (let ((T@@96 (type a@@66)))
 (=> (= (type s@@23) (MapType0Type T@@96 boolType)) (and (= (= (U_2_int (MapType0Select (|MultiSet#FromSet| s@@23) a@@66)) 0)  (not (U_2_bool (MapType0Select s@@23 a@@66)))) (= (= (U_2_int (MapType0Select (|MultiSet#FromSet| s@@23) a@@66)) 1) (U_2_bool (MapType0Select s@@23 a@@66))))))
 :qid |assertbpl.1129:18|
 :skolemid |211|
 :pattern ( (MapType0Select (|MultiSet#FromSet| s@@23) a@@66))
)))
(assert (forall ((arg0@@120 T@U) ) (! (let ((T@@97 (type arg0@@120)))
(= (type (|Seq#Singleton| arg0@@120)) (SeqType T@@97)))
 :qid |funType:Seq#Singleton|
 :pattern ( (|Seq#Singleton| arg0@@120))
)))
(assert (forall ((t@@9 T@U) ) (! (= (|Seq#Index| (|Seq#Singleton| t@@9) 0) t@@9)
 :qid |assertbpl.1239:18|
 :skolemid |232|
 :pattern ( (|Seq#Index| (|Seq#Singleton| t@@9) 0))
)))
(assert (forall ((s@@24 T@U) (i@@10 Int) (v@@27 T@U) (n@@13 Int) ) (! (let ((T@@98 (type v@@27)))
 (=> (= (type s@@24) (SeqType T@@98)) (=> (and (<= n@@13 i@@10) (< i@@10 (|Seq#Length| s@@24))) (= (|Seq#Take| (|Seq#Update| s@@24 i@@10 v@@27) n@@13) (|Seq#Take| s@@24 n@@13)))))
 :qid |assertbpl.1379:18|
 :skolemid |262|
 :pattern ( (|Seq#Take| (|Seq#Update| s@@24 i@@10 v@@27) n@@13))
)))
(assert (forall ((arg0@@121 T@U) ) (! (let ((T@@99 (type arg0@@121)))
(= (type (|MultiSet#Singleton| arg0@@121)) (MapType0Type T@@99 intType)))
 :qid |funType:MultiSet#Singleton|
 :pattern ( (|MultiSet#Singleton| arg0@@121))
)))
(assert (forall ((r@@6 T@U) (o@@36 T@U) ) (! (let ((T@@100 (type r@@6)))
 (=> (= (type o@@36) T@@100) (and (= (= (U_2_int (MapType0Select (|MultiSet#Singleton| r@@6) o@@36)) 1) (= r@@6 o@@36)) (= (= (U_2_int (MapType0Select (|MultiSet#Singleton| r@@6) o@@36)) 0) (not (= r@@6 o@@36))))))
 :qid |assertbpl.1028:18|
 :skolemid |189|
 :pattern ( (MapType0Select (|MultiSet#Singleton| r@@6) o@@36))
)))
(assert (forall ((o@@37 T@U) ) (!  (=> (= (type o@@37) BoxType) (<= 0 (|ORD#Offset| o@@37)))
 :qid |assertbpl.447:15|
 :skolemid |84|
 :pattern ( (|ORD#Offset| o@@37))
)))
(assert (forall ((o@@38 T@U) ) (!  (=> (= (type o@@38) refType) (<= 0 (_System.array.Length o@@38)))
 :qid |assertbpl.648:15|
 :skolemid |111|
 :no-pattern (type o@@38)
 :no-pattern (U_2_int o@@38)
 :no-pattern (U_2_bool o@@38)
)))
(assert (forall ((s@@25 T@U) ) (! (let ((T@@101 (MapType0TypeInv0 (type s@@25))))
 (=> (= (type s@@25) (MapType0Type T@@101 boolType)) (<= 0 (|Set#Card| s@@25))))
 :qid |assertbpl.764:18|
 :skolemid |123|
 :pattern ( (|Set#Card| s@@25))
)))
(assert (forall ((s@@26 T@U) ) (! (let ((T@@102 (MapType0TypeInv0 (type s@@26))))
 (=> (= (type s@@26) (MapType0Type T@@102 intType)) (<= 0 (|MultiSet#Card| s@@26))))
 :qid |assertbpl.1011:18|
 :skolemid |184|
 :pattern ( (|MultiSet#Card| s@@26))
)))
(assert (forall ((s@@27 T@U) ) (! (let ((T@@103 (SeqTypeInv0 (type s@@27))))
 (=> (= (type s@@27) (SeqType T@@103)) (<= 0 (|Seq#Length| s@@27))))
 :qid |assertbpl.1178:18|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@27))
)))
(assert (forall ((m@@35 T@U) ) (! (let ((V@@35 (MapTypeInv1 (type m@@35))))
(let ((U@@35 (MapTypeInv0 (type m@@35))))
 (=> (= (type m@@35) (MapType U@@35 V@@35)) (<= 0 (|Map#Card| m@@35)))))
 :qid |assertbpl.1446:20|
 :skolemid |274|
 :pattern ( (|Map#Card| m@@35))
)))
(assert (forall ((ty T@U) ) (!  (=> (and (= (type ty) TyType) ($AlwaysAllocated ty)) (forall ((h@@18 T@U) (v@@28 T@U) ) (!  (=> (and (and (= (type h@@18) (MapType0Type refType MapType1Type)) (= (type v@@28) BoxType)) ($IsBox v@@28 ty)) ($IsAllocBox v@@28 ty h@@18))
 :qid |assertbpl.379:18|
 :skolemid |78|
 :pattern ( ($IsAllocBox v@@28 ty h@@18))
)))
 :qid |assertbpl.376:15|
 :skolemid |79|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert (forall ((s@@28 T@U) (i@@11 Int) (j@@2 Int) ) (! (let ((T@@104 (SeqTypeInv0 (type s@@28))))
 (=> (= (type s@@28) (SeqType T@@104)) (=> (and (and (<= 0 i@@11) (< i@@11 j@@2)) (<= j@@2 (|Seq#Length| s@@28))) (< (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@28 i@@11) (|Seq#Drop| s@@28 j@@2))) (|Seq#Rank| s@@28)))))
 :qid |assertbpl.1420:18|
 :skolemid |270|
 :pattern ( (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@28 i@@11) (|Seq#Drop| s@@28 j@@2))))
)))
(assert (forall ((a@@67 T@U) (b@@43 T@U) (o@@39 T@U) ) (! (let ((T@@105 (type o@@39)))
 (=> (and (= (type a@@67) (MapType0Type T@@105 intType)) (= (type b@@43) (MapType0Type T@@105 intType))) (= (U_2_int (MapType0Select (|MultiSet#Intersection| a@@67 b@@43) o@@39)) (|Math#min| (U_2_int (MapType0Select a@@67 o@@39)) (U_2_int (MapType0Select b@@43 o@@39))))))
 :qid |assertbpl.1071:18|
 :skolemid |198|
 :pattern ( (MapType0Select (|MultiSet#Intersection| a@@67 b@@43) o@@39))
)))
(assert (forall ((arg0@@122 T@U) ) (! (= (type (Inv0_TMap arg0@@122)) TyType)
 :qid |funType:Inv0_TMap|
 :pattern ( (Inv0_TMap arg0@@122))
)))
(assert (forall ((t@@10 T@U) (u@@7 T@U) ) (!  (=> (and (= (type t@@10) TyType) (= (type u@@7) TyType)) (= (Inv0_TMap (TMap t@@10 u@@7)) t@@10))
 :qid |assertbpl.60:15|
 :skolemid |9|
 :pattern ( (TMap t@@10 u@@7))
)))
(assert (forall ((arg0@@123 T@U) ) (! (= (type (Inv1_TMap arg0@@123)) TyType)
 :qid |funType:Inv1_TMap|
 :pattern ( (Inv1_TMap arg0@@123))
)))
(assert (forall ((t@@11 T@U) (u@@8 T@U) ) (!  (=> (and (= (type t@@11) TyType) (= (type u@@8) TyType)) (= (Inv1_TMap (TMap t@@11 u@@8)) u@@8))
 :qid |assertbpl.62:15|
 :skolemid |10|
 :pattern ( (TMap t@@11 u@@8))
)))
(assert (forall ((t@@12 T@U) (u@@9 T@U) ) (!  (=> (and (= (type t@@12) TyType) (= (type u@@9) TyType)) (= (Tag (TMap t@@12 u@@9)) TagMap))
 :qid |assertbpl.64:15|
 :skolemid |11|
 :pattern ( (TMap t@@12 u@@9))
)))
(assert (forall ((arg0@@124 T@U) ) (! (= (type (Inv0_TIMap arg0@@124)) TyType)
 :qid |funType:Inv0_TIMap|
 :pattern ( (Inv0_TIMap arg0@@124))
)))
(assert (forall ((t@@13 T@U) (u@@10 T@U) ) (!  (=> (and (= (type t@@13) TyType) (= (type u@@10) TyType)) (= (Inv0_TIMap (TIMap t@@13 u@@10)) t@@13))
 :qid |assertbpl.68:15|
 :skolemid |12|
 :pattern ( (TIMap t@@13 u@@10))
)))
(assert (forall ((arg0@@125 T@U) ) (! (= (type (Inv1_TIMap arg0@@125)) TyType)
 :qid |funType:Inv1_TIMap|
 :pattern ( (Inv1_TIMap arg0@@125))
)))
(assert (forall ((t@@14 T@U) (u@@11 T@U) ) (!  (=> (and (= (type t@@14) TyType) (= (type u@@11) TyType)) (= (Inv1_TIMap (TIMap t@@14 u@@11)) u@@11))
 :qid |assertbpl.70:15|
 :skolemid |13|
 :pattern ( (TIMap t@@14 u@@11))
)))
(assert (forall ((t@@15 T@U) (u@@12 T@U) ) (!  (=> (and (= (type t@@15) TyType) (= (type u@@12) TyType)) (= (Tag (TIMap t@@15 u@@12)) TagIMap))
 :qid |assertbpl.72:15|
 :skolemid |14|
 :pattern ( (TIMap t@@15 u@@12))
)))
(assert (forall ((arg0@@126 T@U) ) (! (= (type (Tclass._System.___hFunc1_0 arg0@@126)) TyType)
 :qid |funType:Tclass._System.___hFunc1_0|
 :pattern ( (Tclass._System.___hFunc1_0 arg0@@126))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@6| T@U) ) (!  (=> (and (= (type |#$T0@@1|) TyType) (= (type |#$R@@6|) TyType)) (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@6|)) |#$T0@@1|))
 :qid |assertbpl.1985:15|
 :skolemid |370|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@6|))
)))
(assert (forall ((arg0@@127 T@U) ) (! (= (type (Tclass._System.___hFunc1_1 arg0@@127)) TyType)
 :qid |funType:Tclass._System.___hFunc1_1|
 :pattern ( (Tclass._System.___hFunc1_1 arg0@@127))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@7| T@U) ) (!  (=> (and (= (type |#$T0@@2|) TyType) (= (type |#$R@@7|) TyType)) (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@7|)) |#$R@@7|))
 :qid |assertbpl.1992:15|
 :skolemid |371|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@7|))
)))
(assert (forall ((arg0@@128 T@U) ) (! (= (type (Tclass._System.___hPartialFunc1_0 arg0@@128)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc1_0|
 :pattern ( (Tclass._System.___hPartialFunc1_0 arg0@@128))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@8| T@U) ) (!  (=> (and (= (type |#$T0@@3|) TyType) (= (type |#$R@@8|) TyType)) (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@8|)) |#$T0@@3|))
 :qid |assertbpl.2212:15|
 :skolemid |401|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@8|))
)))
(assert (forall ((arg0@@129 T@U) ) (! (= (type (Tclass._System.___hPartialFunc1_1 arg0@@129)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc1_1|
 :pattern ( (Tclass._System.___hPartialFunc1_1 arg0@@129))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@9| T@U) ) (!  (=> (and (= (type |#$T0@@4|) TyType) (= (type |#$R@@9|) TyType)) (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@9|)) |#$R@@9|))
 :qid |assertbpl.2220:15|
 :skolemid |402|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@9|))
)))
(assert (forall ((arg0@@130 T@U) ) (! (= (type (Tclass._System.___hTotalFunc1_0 arg0@@130)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc1_0|
 :pattern ( (Tclass._System.___hTotalFunc1_0 arg0@@130))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@10| T@U) ) (!  (=> (and (= (type |#$T0@@5|) TyType) (= (type |#$R@@10|) TyType)) (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@10|)) |#$T0@@5|))
 :qid |assertbpl.2260:15|
 :skolemid |408|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@10|))
)))
(assert (forall ((arg0@@131 T@U) ) (! (= (type (Tclass._System.___hTotalFunc1_1 arg0@@131)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc1_1|
 :pattern ( (Tclass._System.___hTotalFunc1_1 arg0@@131))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@11| T@U) ) (!  (=> (and (= (type |#$T0@@6|) TyType) (= (type |#$R@@11|) TyType)) (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@11|)) |#$R@@11|))
 :qid |assertbpl.2268:15|
 :skolemid |409|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@11|))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (!  (=> (and (= (type |a#0#0#0|) BoxType) (= (type |a#0#1#0|) BoxType)) (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|))
 :qid |assertbpl.2539:15|
 :skolemid |451|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((arg0@@132 T@U) ) (! (= (type (Tclass._System.Tuple2_0 arg0@@132)) TyType)
 :qid |funType:Tclass._System.Tuple2_0|
 :pattern ( (Tclass._System.Tuple2_0 arg0@@132))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) ) (!  (=> (and (= (type |_System._tuple#2$T0@@4|) TyType) (= (type |_System._tuple#2$T1@@4|) TyType)) (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) |_System._tuple#2$T0@@4|))
 :qid |assertbpl.2574:15|
 :skolemid |456|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))
)))
(assert (forall ((arg0@@133 T@U) ) (! (= (type (Tclass._System.Tuple2_1 arg0@@133)) TyType)
 :qid |funType:Tclass._System.Tuple2_1|
 :pattern ( (Tclass._System.Tuple2_1 arg0@@133))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (=> (and (= (type |_System._tuple#2$T0@@5|) TyType) (= (type |_System._tuple#2$T1@@5|) TyType)) (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |_System._tuple#2$T1@@5|))
 :qid |assertbpl.2582:15|
 :skolemid |457|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (!  (=> (and (= (type |a#4#0#0|) BoxType) (= (type |a#4#1#0|) BoxType)) (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|))
 :qid |assertbpl.2648:15|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (!  (=> (and (= (type |a#6#0#0|) BoxType) (= (type |a#6#1#0|) BoxType)) (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|))
 :qid |assertbpl.2658:15|
 :skolemid |468|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall (($o@@8 T@U) ) (!  (=> (= (type $o@@8) refType) ($Is $o@@8 Tclass._System.object?))
 :qid |assertbpl.1817:15|
 :skolemid |350|
 :pattern ( ($Is $o@@8 Tclass._System.object?))
)))
(assert (forall ((v@@29 T@U) (t0@@30 T@U) (h@@19 T@U) ) (!  (=> (and (and (= (type v@@29) (SeqType BoxType)) (= (type t0@@30) TyType)) (= (type h@@19) (MapType0Type refType MapType1Type))) (= ($IsAlloc v@@29 (TSeq t0@@30) h@@19) (forall ((i@@12 Int) ) (!  (=> (and (<= 0 i@@12) (< i@@12 (|Seq#Length| v@@29))) ($IsAllocBox (|Seq#Index| v@@29 i@@12) t0@@30 h@@19))
 :qid |assertbpl.354:19|
 :skolemid |72|
 :pattern ( (|Seq#Index| v@@29 i@@12))
))))
 :qid |assertbpl.351:15|
 :skolemid |73|
 :pattern ( ($IsAlloc v@@29 (TSeq t0@@30) h@@19))
)))
(assert (forall ((a@@68 T@U) (x@@30 T@U) ) (! (let ((T@@106 (type x@@30)))
 (=> (= (type a@@68) (MapType0Type T@@106 boolType)) (U_2_bool (MapType0Select (|Set#UnionOne| a@@68 x@@30) x@@30))))
 :qid |assertbpl.793:18|
 :skolemid |131|
 :pattern ( (|Set#UnionOne| a@@68 x@@30))
)))
(assert (forall ((a@@69 T@U) (x@@31 T@U) ) (! (let ((T@@107 (type x@@31)))
 (=> (= (type a@@69) (MapType0Type T@@107 boolType)) (U_2_bool (MapType0Select (|ISet#UnionOne| a@@69 x@@31) x@@31))))
 :qid |assertbpl.904:18|
 :skolemid |157|
 :pattern ( (|ISet#UnionOne| a@@69 x@@31))
)))
(assert (forall ((a@@70 T@U) (x@@32 T@U) ) (! (let ((T@@108 (type x@@32)))
 (=> (and (= (type a@@70) (MapType0Type T@@108 boolType)) (U_2_bool (MapType0Select a@@70 x@@32))) (= (|Set#Card| (|Set#UnionOne| a@@70 x@@32)) (|Set#Card| a@@70))))
 :qid |assertbpl.799:18|
 :skolemid |133|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@70 x@@32)))
)))
(assert (forall ((w Int) ) (! (= (Inv0_TBitvector (TBitvector w)) w)
 :qid |assertbpl.32:15|
 :skolemid |0|
 :pattern ( (TBitvector w))
)))
(assert (forall ((arg0@@134 T@U) ) (! (= (type (Inv0_TSet arg0@@134)) TyType)
 :qid |funType:Inv0_TSet|
 :pattern ( (Inv0_TSet arg0@@134))
)))
(assert (forall ((t@@16 T@U) ) (!  (=> (= (type t@@16) TyType) (= (Inv0_TSet (TSet t@@16)) t@@16))
 :qid |assertbpl.36:15|
 :skolemid |1|
 :pattern ( (TSet t@@16))
)))
(assert (forall ((t@@17 T@U) ) (!  (=> (= (type t@@17) TyType) (= (Tag (TSet t@@17)) TagSet))
 :qid |assertbpl.38:15|
 :skolemid |2|
 :pattern ( (TSet t@@17))
)))
(assert (forall ((arg0@@135 T@U) ) (! (= (type (Inv0_TISet arg0@@135)) TyType)
 :qid |funType:Inv0_TISet|
 :pattern ( (Inv0_TISet arg0@@135))
)))
(assert (forall ((t@@18 T@U) ) (!  (=> (= (type t@@18) TyType) (= (Inv0_TISet (TISet t@@18)) t@@18))
 :qid |assertbpl.42:15|
 :skolemid |3|
 :pattern ( (TISet t@@18))
)))
(assert (forall ((t@@19 T@U) ) (!  (=> (= (type t@@19) TyType) (= (Tag (TISet t@@19)) TagISet))
 :qid |assertbpl.44:15|
 :skolemid |4|
 :pattern ( (TISet t@@19))
)))
(assert (forall ((arg0@@136 T@U) ) (! (= (type (Inv0_TMultiSet arg0@@136)) TyType)
 :qid |funType:Inv0_TMultiSet|
 :pattern ( (Inv0_TMultiSet arg0@@136))
)))
(assert (forall ((t@@20 T@U) ) (!  (=> (= (type t@@20) TyType) (= (Inv0_TMultiSet (TMultiSet t@@20)) t@@20))
 :qid |assertbpl.48:15|
 :skolemid |5|
 :pattern ( (TMultiSet t@@20))
)))
(assert (forall ((t@@21 T@U) ) (!  (=> (= (type t@@21) TyType) (= (Tag (TMultiSet t@@21)) TagMultiSet))
 :qid |assertbpl.50:15|
 :skolemid |6|
 :pattern ( (TMultiSet t@@21))
)))
(assert (forall ((arg0@@137 T@U) ) (! (= (type (Inv0_TSeq arg0@@137)) TyType)
 :qid |funType:Inv0_TSeq|
 :pattern ( (Inv0_TSeq arg0@@137))
)))
(assert (forall ((t@@22 T@U) ) (!  (=> (= (type t@@22) TyType) (= (Inv0_TSeq (TSeq t@@22)) t@@22))
 :qid |assertbpl.54:15|
 :skolemid |7|
 :pattern ( (TSeq t@@22))
)))
(assert (forall ((t@@23 T@U) ) (!  (=> (= (type t@@23) TyType) (= (Tag (TSeq t@@23)) TagSeq))
 :qid |assertbpl.56:15|
 :skolemid |8|
 :pattern ( (TSeq t@@23))
)))
(assert (forall ((i@@13 Int) ) (! (= (FDim (IndexField i@@13)) 1)
 :qid |assertbpl.588:15|
 :skolemid |102|
 :pattern ( (IndexField i@@13))
)))
(assert (forall ((i@@14 Int) ) (! (= (IndexField_Inverse (IndexField i@@14)) i@@14)
 :qid |assertbpl.592:15|
 :skolemid |103|
 :pattern ( (IndexField i@@14))
)))
(assert (forall ((i@@15 Int) ) (! (= (q@Int (q@Real i@@15)) i@@15)
 :qid |assertbpl.660:15|
 :skolemid |114|
 :pattern ( (q@Int (q@Real i@@15)))
)))
(assert (forall ((arg0@@138 T@U) ) (! (= (type (Tclass._System.array?_0 arg0@@138)) TyType)
 :qid |funType:Tclass._System.array?_0|
 :pattern ( (Tclass._System.array?_0 arg0@@138))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (!  (=> (= (type _System.array$arg@@8) TyType) (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@8)) _System.array$arg@@8))
 :qid |assertbpl.1870:15|
 :skolemid |356|
 :pattern ( (Tclass._System.array? _System.array$arg@@8))
)))
(assert (forall ((arg0@@139 T@U) ) (! (= (type (Tclass._System.array_0 arg0@@139)) TyType)
 :qid |funType:Tclass._System.array_0|
 :pattern ( (Tclass._System.array_0 arg0@@139))
)))
(assert (forall ((_System.array$arg@@9 T@U) ) (!  (=> (= (type _System.array$arg@@9) TyType) (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@9)) _System.array$arg@@9))
 :qid |assertbpl.1948:15|
 :skolemid |365|
 :pattern ( (Tclass._System.array _System.array$arg@@9))
)))
(assert (forall ((arg0@@140 T@U) ) (! (= (type (Tclass._System.___hFunc0_0 arg0@@140)) TyType)
 :qid |funType:Tclass._System.___hFunc0_0|
 :pattern ( (Tclass._System.___hFunc0_0 arg0@@140))
)))
(assert (forall ((|#$R@@12| T@U) ) (!  (=> (= (type |#$R@@12|) TyType) (= (Tclass._System.___hFunc0_0 (Tclass._System.___hFunc0 |#$R@@12|)) |#$R@@12|))
 :qid |assertbpl.2306:15|
 :skolemid |415|
 :pattern ( (Tclass._System.___hFunc0 |#$R@@12|))
)))
(assert (forall ((arg0@@141 T@U) ) (! (= (type (Tclass._System.___hPartialFunc0_0 arg0@@141)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc0_0|
 :pattern ( (Tclass._System.___hPartialFunc0_0 arg0@@141))
)))
(assert (forall ((|#$R@@13| T@U) ) (!  (=> (= (type |#$R@@13|) TyType) (= (Tclass._System.___hPartialFunc0_0 (Tclass._System.___hPartialFunc0 |#$R@@13|)) |#$R@@13|))
 :qid |assertbpl.2478:15|
 :skolemid |442|
 :pattern ( (Tclass._System.___hPartialFunc0 |#$R@@13|))
)))
(assert (forall ((arg0@@142 T@U) ) (! (= (type (Tclass._System.___hTotalFunc0_0 arg0@@142)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc0_0|
 :pattern ( (Tclass._System.___hTotalFunc0_0 arg0@@142))
)))
(assert (forall ((|#$R@@14| T@U) ) (!  (=> (= (type |#$R@@14|) TyType) (= (Tclass._System.___hTotalFunc0_0 (Tclass._System.___hTotalFunc0 |#$R@@14|)) |#$R@@14|))
 :qid |assertbpl.2515:15|
 :skolemid |447|
 :pattern ( (Tclass._System.___hTotalFunc0 |#$R@@14|))
)))
(assert (forall ((x@@33 T@U) ) (! (let ((T@@109 (type x@@33)))
(= ($Unbox T@@109 ($Box x@@33)) x@@33))
 :qid |assertbpl.180:18|
 :skolemid |25|
 :pattern ( ($Box x@@33))
)))
(assert (forall ((r@@7 T@U) ) (! (= (|Set#Card| (|Set#Singleton| r@@7)) 1)
 :qid |assertbpl.783:18|
 :skolemid |129|
 :pattern ( (|Set#Card| (|Set#Singleton| r@@7)))
)))
(assert (forall ((t@@24 T@U) ) (! (= (|Seq#Length| (|Seq#Singleton| t@@24)) 1)
 :qid |assertbpl.1190:18|
 :skolemid |224|
 :pattern ( (|Seq#Length| (|Seq#Singleton| t@@24)))
)))
(assert (forall ((v@@30 T@U) (t0@@31 T@U) (t1@@15 T@U) ) (!  (=> (and (and (= (type v@@30) (MapType BoxType BoxType)) (= (type t0@@31) TyType)) (= (type t1@@15) TyType)) (= ($Is v@@30 (TMap t0@@31 t1@@15)) (forall ((bx@@22 T@U) ) (!  (=> (and (= (type bx@@22) BoxType) (U_2_bool (MapType0Select (|Map#Domain| v@@30) bx@@22))) (and ($IsBox (MapType0Select (|Map#Elements| v@@30) bx@@22) t1@@15) ($IsBox bx@@22 t0@@31)))
 :qid |assertbpl.293:19|
 :skolemid |54|
 :pattern ( (MapType0Select (|Map#Elements| v@@30) bx@@22))
 :pattern ( (MapType0Select (|Map#Domain| v@@30) bx@@22))
))))
 :qid |assertbpl.290:15|
 :skolemid |55|
 :pattern ( ($Is v@@30 (TMap t0@@31 t1@@15)))
)))
(assert (forall ((v@@31 T@U) (t0@@32 T@U) (t1@@16 T@U) ) (!  (=> (and (and (= (type v@@31) (IMapType BoxType BoxType)) (= (type t0@@32) TyType)) (= (type t1@@16) TyType)) (= ($Is v@@31 (TIMap t0@@32 t1@@16)) (forall ((bx@@23 T@U) ) (!  (=> (and (= (type bx@@23) BoxType) (U_2_bool (MapType0Select (|IMap#Domain| v@@31) bx@@23))) (and ($IsBox (MapType0Select (|IMap#Elements| v@@31) bx@@23) t1@@16) ($IsBox bx@@23 t0@@32)))
 :qid |assertbpl.307:19|
 :skolemid |57|
 :pattern ( (MapType0Select (|IMap#Elements| v@@31) bx@@23))
 :pattern ( (MapType0Select (|IMap#Domain| v@@31) bx@@23))
))))
 :qid |assertbpl.304:15|
 :skolemid |58|
 :pattern ( ($Is v@@31 (TIMap t0@@32 t1@@16)))
)))
(assert (forall ((o@@40 T@U) (p@@5 T@U) ) (!  (=> (and (= (type o@@40) BoxType) (= (type p@@5) BoxType)) (and (and (and (=> (|ORD#Less| o@@40 p@@5) (not (= o@@40 p@@5))) (=> (and (|ORD#IsNat| o@@40) (not (|ORD#IsNat| p@@5))) (|ORD#Less| o@@40 p@@5))) (=> (and (|ORD#IsNat| o@@40) (|ORD#IsNat| p@@5)) (= (|ORD#Less| o@@40 p@@5) (< (|ORD#Offset| o@@40) (|ORD#Offset| p@@5))))) (=> (and (|ORD#Less| o@@40 p@@5) (|ORD#IsNat| p@@5)) (|ORD#IsNat| o@@40))))
 :qid |assertbpl.471:15|
 :skolemid |87|
 :pattern ( (|ORD#Less| o@@40 p@@5))
)))
(assert (forall ((h@@20 T@U) (i@@16 Int) (v@@32 T@U) (a@@71 T@U) ) (!  (=> (and (and (and (= (type h@@20) (MapType0Type refType MapType1Type)) (= (type v@@32) BoxType)) (= (type a@@71) refType)) (and (<= 0 i@@16) (< i@@16 (_System.array.Length a@@71)))) (= (|Seq#FromArray| (MapType0Store h@@20 a@@71 (MapType1Store (MapType0Select h@@20 a@@71) (IndexField i@@16) v@@32)) a@@71) (|Seq#Update| (|Seq#FromArray| h@@20 a@@71) i@@16 v@@32)))
 :qid |assertbpl.1368:15|
 :skolemid |260|
 :pattern ( (|Seq#FromArray| (MapType0Store h@@20 a@@71 (MapType1Store (MapType0Select h@@20 a@@71) (IndexField i@@16) v@@32)) a@@71))
)))
(assert (forall ((r@@8 T@U) ) (! (U_2_bool (MapType0Select (|Set#Singleton| r@@8) r@@8))
 :qid |assertbpl.777:18|
 :skolemid |127|
 :pattern ( (|Set#Singleton| r@@8))
)))
(assert (forall ((x@@34 Int) (y@@13 Int) ) (! (= (INTERNAL_lt_boogie x@@34 y@@13) (< x@@34 y@@13))
 :qid |assertbpl.1736:15|
 :skolemid |337|
 :pattern ( (INTERNAL_lt_boogie x@@34 y@@13))
)))
(assert (forall ((x@@35 Int) (y@@14 Int) ) (! (= (INTERNAL_gt_boogie x@@35 y@@14) (> x@@35 y@@14))
 :qid |assertbpl.1748:15|
 :skolemid |339|
 :pattern ( (INTERNAL_gt_boogie x@@35 y@@14))
)))
(assert (forall ((arg0@@143 T@U) (arg1@@68 T@U) ) (! (let ((V@@36 (MapTypeInv1 (type arg0@@143))))
(let ((U@@36 (MapTypeInv0 (type arg0@@143))))
(= (type (|Map#Merge| arg0@@143 arg1@@68)) (MapType U@@36 V@@36))))
 :qid |funType:Map#Merge|
 :pattern ( (|Map#Merge| arg0@@143 arg1@@68))
)))
(assert (forall ((m@@36 T@U) (n@@14 T@U) (u@@13 T@U) ) (! (let ((V@@37 (MapTypeInv1 (type m@@36))))
(let ((U@@37 (type u@@13)))
 (=> (and (and (= (type m@@36) (MapType U@@37 V@@37)) (= (type n@@14) (MapType U@@37 V@@37))) (U_2_bool (MapType0Select (|Map#Domain| (|Map#Merge| m@@36 n@@14)) u@@13))) (and (=> (not (U_2_bool (MapType0Select (|Map#Domain| n@@14) u@@13))) (= (MapType0Select (|Map#Elements| (|Map#Merge| m@@36 n@@14)) u@@13) (MapType0Select (|Map#Elements| m@@36) u@@13))) (=> (U_2_bool (MapType0Select (|Map#Domain| n@@14) u@@13)) (= (MapType0Select (|Map#Elements| (|Map#Merge| m@@36 n@@14)) u@@13) (MapType0Select (|Map#Elements| n@@14) u@@13)))))))
 :qid |assertbpl.1546:20|
 :skolemid |297|
 :pattern ( (MapType0Select (|Map#Elements| (|Map#Merge| m@@36 n@@14)) u@@13))
)))
(assert (forall ((arg0@@144 T@U) (arg1@@69 T@U) ) (! (let ((V@@38 (IMapTypeInv1 (type arg0@@144))))
(let ((U@@38 (IMapTypeInv0 (type arg0@@144))))
(= (type (|IMap#Merge| arg0@@144 arg1@@69)) (IMapType U@@38 V@@38))))
 :qid |funType:IMap#Merge|
 :pattern ( (|IMap#Merge| arg0@@144 arg1@@69))
)))
(assert (forall ((m@@37 T@U) (n@@15 T@U) (u@@14 T@U) ) (! (let ((V@@39 (IMapTypeInv1 (type m@@37))))
(let ((U@@39 (type u@@14)))
 (=> (and (and (= (type m@@37) (IMapType U@@39 V@@39)) (= (type n@@15) (IMapType U@@39 V@@39))) (U_2_bool (MapType0Select (|IMap#Domain| (|IMap#Merge| m@@37 n@@15)) u@@14))) (and (=> (not (U_2_bool (MapType0Select (|IMap#Domain| n@@15) u@@14))) (= (MapType0Select (|IMap#Elements| (|IMap#Merge| m@@37 n@@15)) u@@14) (MapType0Select (|IMap#Elements| m@@37) u@@14))) (=> (U_2_bool (MapType0Select (|IMap#Domain| n@@15) u@@14)) (= (MapType0Select (|IMap#Elements| (|IMap#Merge| m@@37 n@@15)) u@@14) (MapType0Select (|IMap#Elements| n@@15) u@@14)))))))
 :qid |assertbpl.1685:20|
 :skolemid |329|
 :pattern ( (MapType0Select (|IMap#Elements| (|IMap#Merge| m@@37 n@@15)) u@@14))
)))
(assert (forall ((s@@29 T@U) (i@@17 Int) (v@@33 T@U) (x@@36 T@U) ) (! (let ((T@@110 (type v@@33)))
 (=> (and (and (= (type s@@29) (SeqType T@@110)) (= (type x@@36) T@@110)) (and (<= 0 i@@17) (< i@@17 (|Seq#Length| s@@29)))) (= (U_2_int (MapType0Select (|MultiSet#FromSeq| (|Seq#Update| s@@29 i@@17 v@@33)) x@@36)) (U_2_int (MapType0Select (|MultiSet#Union| (|MultiSet#Difference| (|MultiSet#FromSeq| s@@29) (|MultiSet#Singleton| (|Seq#Index| s@@29 i@@17))) (|MultiSet#Singleton| v@@33)) x@@36)))))
 :qid |assertbpl.1160:18|
 :skolemid |218|
 :pattern ( (MapType0Select (|MultiSet#FromSeq| (|Seq#Update| s@@29 i@@17 v@@33)) x@@36))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (!  (=> (and (= (type |a#5#0#0|) BoxType) (= (type |a#5#1#0|) BoxType)) (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))))
 :qid |assertbpl.2653:15|
 :skolemid |467|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (!  (=> (and (= (type |a#7#0#0|) BoxType) (= (type |a#7#1#0|) BoxType)) (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))))
 :qid |assertbpl.2663:15|
 :skolemid |469|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((a@@72 T@U) (b@@44 T@U) ) (! (let ((T@@111 (MapType0TypeInv0 (type a@@72))))
 (=> (and (= (type a@@72) (MapType0Type T@@111 boolType)) (= (type b@@44) (MapType0Type T@@111 boolType))) (= (|Set#Union| a@@72 (|Set#Union| a@@72 b@@44)) (|Set#Union| a@@72 b@@44))))
 :qid |assertbpl.837:18|
 :skolemid |141|
 :pattern ( (|Set#Union| a@@72 (|Set#Union| a@@72 b@@44)))
)))
(assert (forall ((a@@73 T@U) (b@@45 T@U) ) (! (let ((T@@112 (MapType0TypeInv0 (type a@@73))))
 (=> (and (= (type a@@73) (MapType0Type T@@112 boolType)) (= (type b@@45) (MapType0Type T@@112 boolType))) (= (|Set#Intersection| a@@73 (|Set#Intersection| a@@73 b@@45)) (|Set#Intersection| a@@73 b@@45))))
 :qid |assertbpl.845:18|
 :skolemid |143|
 :pattern ( (|Set#Intersection| a@@73 (|Set#Intersection| a@@73 b@@45)))
)))
(assert (forall ((a@@74 T@U) (b@@46 T@U) ) (! (let ((T@@113 (MapType0TypeInv0 (type a@@74))))
 (=> (and (= (type a@@74) (MapType0Type T@@113 boolType)) (= (type b@@46) (MapType0Type T@@113 boolType))) (= (|ISet#Union| a@@74 (|ISet#Union| a@@74 b@@46)) (|ISet#Union| a@@74 b@@46))))
 :qid |assertbpl.940:18|
 :skolemid |165|
 :pattern ( (|ISet#Union| a@@74 (|ISet#Union| a@@74 b@@46)))
)))
(assert (forall ((a@@75 T@U) (b@@47 T@U) ) (! (let ((T@@114 (MapType0TypeInv0 (type a@@75))))
 (=> (and (= (type a@@75) (MapType0Type T@@114 boolType)) (= (type b@@47) (MapType0Type T@@114 boolType))) (= (|ISet#Intersection| a@@75 (|ISet#Intersection| a@@75 b@@47)) (|ISet#Intersection| a@@75 b@@47))))
 :qid |assertbpl.948:18|
 :skolemid |167|
 :pattern ( (|ISet#Intersection| a@@75 (|ISet#Intersection| a@@75 b@@47)))
)))
(assert (forall ((a@@76 T@U) (b@@48 T@U) ) (! (let ((T@@115 (MapType0TypeInv0 (type a@@76))))
 (=> (and (= (type a@@76) (MapType0Type T@@115 intType)) (= (type b@@48) (MapType0Type T@@115 intType))) (= (|MultiSet#Intersection| a@@76 (|MultiSet#Intersection| a@@76 b@@48)) (|MultiSet#Intersection| a@@76 b@@48))))
 :qid |assertbpl.1080:18|
 :skolemid |200|
 :pattern ( (|MultiSet#Intersection| a@@76 (|MultiSet#Intersection| a@@76 b@@48)))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@15| T@U) (|f#0@@3| T@U) ) (!  (=> (and (and (= (type |#$T0@@7|) TyType) (= (type |#$R@@15|) TyType)) (= (type |f#0@@3|) HandleTypeType)) (= ($Is |f#0@@3| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@15|))  (and ($Is |f#0@@3| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@15|)) (forall ((|x0#0| T@U) ) (!  (=> (and (= (type |x0#0|) BoxType) ($IsBox |x0#0| |#$T0@@7|)) (Requires1 |#$T0@@7| |#$R@@15| $OneHeap |f#0@@3| |x0#0|))
 :qid |assertbpl.2284:19|
 :skolemid |411|
 :no-pattern (type |x0#0|)
 :no-pattern (U_2_int |x0#0|)
 :no-pattern (U_2_bool |x0#0|)
)))))
 :qid |assertbpl.2280:15|
 :skolemid |412|
 :pattern ( ($Is |f#0@@3| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@15|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@16| T@U) (|f#0@@4| T@U) ) (!  (=> (and (and (= (type |#$T0@@8|) TyType) (= (type |#$R@@16|) TyType)) (= (type |f#0@@4|) HandleTypeType)) (= ($Is |f#0@@4| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@16|))  (and ($Is |f#0@@4| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@16|)) (forall ((|x0#0@@0| T@U) ) (!  (=> (and (= (type |x0#0@@0|) BoxType) ($IsBox |x0#0@@0| |#$T0@@8|)) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@16| $OneHeap |f#0@@4| |x0#0@@0|) (|Set#Empty| BoxType)))
 :qid |assertbpl.2237:19|
 :skolemid |404|
 :no-pattern (type |x0#0@@0|)
 :no-pattern (U_2_int |x0#0@@0|)
 :no-pattern (U_2_bool |x0#0@@0|)
)))))
 :qid |assertbpl.2233:15|
 :skolemid |405|
 :pattern ( ($Is |f#0@@4| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@16|)))
)))
(assert (forall ((m@@38 T@U) (u@@15 T@U) (|u'| T@U) (v@@34 T@U) ) (! (let ((V@@40 (type v@@34)))
(let ((U@@40 (type u@@15)))
 (=> (and (= (type m@@38) (MapType U@@40 V@@40)) (= (type |u'|) U@@40)) (and (=> (= |u'| u@@15) (and (U_2_bool (MapType0Select (|Map#Domain| (|Map#Build| m@@38 u@@15 v@@34)) |u'|)) (= (MapType0Select (|Map#Elements| (|Map#Build| m@@38 u@@15 v@@34)) |u'|) v@@34))) (=> (not (= |u'| u@@15)) (and (= (U_2_bool (MapType0Select (|Map#Domain| (|Map#Build| m@@38 u@@15 v@@34)) |u'|)) (U_2_bool (MapType0Select (|Map#Domain| m@@38) |u'|))) (= (MapType0Select (|Map#Elements| (|Map#Build| m@@38 u@@15 v@@34)) |u'|) (MapType0Select (|Map#Elements| m@@38) |u'|))))))))
 :qid |assertbpl.1524:20|
 :skolemid |293|
 :pattern ( (MapType0Select (|Map#Domain| (|Map#Build| m@@38 u@@15 v@@34)) |u'|))
 :pattern ( (MapType0Select (|Map#Elements| (|Map#Build| m@@38 u@@15 v@@34)) |u'|))
)))
(assert (forall ((arg0@@145 T@U) (arg1@@70 T@U) (arg2@@20 T@U) ) (! (let ((V@@41 (type arg2@@20)))
(let ((U@@41 (type arg1@@70)))
(= (type (|IMap#Build| arg0@@145 arg1@@70 arg2@@20)) (IMapType U@@41 V@@41))))
 :qid |funType:IMap#Build|
 :pattern ( (|IMap#Build| arg0@@145 arg1@@70 arg2@@20))
)))
(assert (forall ((m@@39 T@U) (u@@16 T@U) (|u'@@0| T@U) (v@@35 T@U) ) (! (let ((V@@42 (type v@@35)))
(let ((U@@42 (type u@@16)))
 (=> (and (= (type m@@39) (IMapType U@@42 V@@42)) (= (type |u'@@0|) U@@42)) (and (=> (= |u'@@0| u@@16) (and (U_2_bool (MapType0Select (|IMap#Domain| (|IMap#Build| m@@39 u@@16 v@@35)) |u'@@0|)) (= (MapType0Select (|IMap#Elements| (|IMap#Build| m@@39 u@@16 v@@35)) |u'@@0|) v@@35))) (=> (not (= |u'@@0| u@@16)) (and (= (U_2_bool (MapType0Select (|IMap#Domain| (|IMap#Build| m@@39 u@@16 v@@35)) |u'@@0|)) (U_2_bool (MapType0Select (|IMap#Domain| m@@39) |u'@@0|))) (= (MapType0Select (|IMap#Elements| (|IMap#Build| m@@39 u@@16 v@@35)) |u'@@0|) (MapType0Select (|IMap#Elements| m@@39) |u'@@0|))))))))
 :qid |assertbpl.1656:20|
 :skolemid |323|
 :pattern ( (MapType0Select (|IMap#Domain| (|IMap#Build| m@@39 u@@16 v@@35)) |u'@@0|))
 :pattern ( (MapType0Select (|IMap#Elements| (|IMap#Build| m@@39 u@@16 v@@35)) |u'@@0|))
)))
(assert (forall ((arg0@@146 T@U) ) (! (= (type ($LS arg0@@146)) LayerTypeType)
 :qid |funType:$LS|
 :pattern ( ($LS arg0@@146))
)))
(assert (forall ((f@@21 T@U) (ly@@0 T@U) ) (! (let ((A@@1 (MapType0TypeInv1 (type f@@21))))
 (=> (and (= (type f@@21) (MapType0Type LayerTypeType A@@1)) (= (type ly@@0) LayerTypeType)) (= (AtLayer f@@21 ($LS ly@@0)) (AtLayer f@@21 ly@@0))))
 :qid |assertbpl.576:18|
 :skolemid |101|
 :pattern ( (AtLayer f@@21 ($LS ly@@0)))
)))
(assert (forall ((bx@@24 T@U) (s@@30 T@U) (t@@25 T@U) ) (!  (=> (and (and (and (= (type bx@@24) BoxType) (= (type s@@30) TyType)) (= (type t@@25) TyType)) ($IsBox bx@@24 (TMap s@@30 t@@25))) (and (= ($Box ($Unbox (MapType BoxType BoxType) bx@@24)) bx@@24) ($Is ($Unbox (MapType BoxType BoxType) bx@@24) (TMap s@@30 t@@25))))
 :qid |assertbpl.235:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@24 (TMap s@@30 t@@25)))
)))
(assert (forall ((bx@@25 T@U) (s@@31 T@U) (t@@26 T@U) ) (!  (=> (and (and (and (= (type bx@@25) BoxType) (= (type s@@31) TyType)) (= (type t@@26) TyType)) ($IsBox bx@@25 (TIMap s@@31 t@@26))) (and (= ($Box ($Unbox (IMapType BoxType BoxType) bx@@25)) bx@@25) ($Is ($Unbox (IMapType BoxType BoxType) bx@@25) (TIMap s@@31 t@@26))))
 :qid |assertbpl.240:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@25 (TIMap s@@31 t@@26)))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@17| T@U) (bx@@26 T@U) ) (!  (=> (and (and (and (= (type |#$T0@@9|) TyType) (= (type |#$R@@17|) TyType)) (= (type bx@@26) BoxType)) ($IsBox bx@@26 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@17|))) (and (= ($Box ($Unbox HandleTypeType bx@@26)) bx@@26) ($Is ($Unbox HandleTypeType bx@@26) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@17|))))
 :qid |assertbpl.1997:15|
 :skolemid |372|
 :pattern ( ($IsBox bx@@26 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@17|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@18| T@U) (bx@@27 T@U) ) (!  (=> (and (and (and (= (type |#$T0@@10|) TyType) (= (type |#$R@@18|) TyType)) (= (type bx@@27) BoxType)) ($IsBox bx@@27 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@18|))) (and (= ($Box ($Unbox HandleTypeType bx@@27)) bx@@27) ($Is ($Unbox HandleTypeType bx@@27) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@18|))))
 :qid |assertbpl.2226:15|
 :skolemid |403|
 :pattern ( ($IsBox bx@@27 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@18|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@19| T@U) (bx@@28 T@U) ) (!  (=> (and (and (and (= (type |#$T0@@11|) TyType) (= (type |#$R@@19|) TyType)) (= (type bx@@28) BoxType)) ($IsBox bx@@28 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@19|))) (and (= ($Box ($Unbox HandleTypeType bx@@28)) bx@@28) ($Is ($Unbox HandleTypeType bx@@28) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@19|))))
 :qid |assertbpl.2273:15|
 :skolemid |410|
 :pattern ( ($IsBox bx@@28 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@19|)))
)))
(assert (forall ((|_System._tuple#2$T0@@6| T@U) (|_System._tuple#2$T1@@6| T@U) (bx@@29 T@U) ) (!  (=> (and (and (and (= (type |_System._tuple#2$T0@@6|) TyType) (= (type |_System._tuple#2$T1@@6|) TyType)) (= (type bx@@29) BoxType)) ($IsBox bx@@29 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|))) (and (= ($Box ($Unbox DatatypeTypeType bx@@29)) bx@@29) ($Is ($Unbox DatatypeTypeType bx@@29) (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|))))
 :qid |assertbpl.2588:15|
 :skolemid |458|
 :pattern ( ($IsBox bx@@29 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|)))
)))
(assert (forall ((a@@77 T@U) (b@@49 T@U) ) (! (let ((T@@116 (MapType0TypeInv0 (type a@@77))))
 (=> (and (= (type a@@77) (MapType0Type T@@116 intType)) (= (type b@@49) (MapType0Type T@@116 intType))) (= (|MultiSet#Disjoint| a@@77 b@@49) (forall ((o@@41 T@U) ) (!  (=> (= (type o@@41) T@@116) (or (= (U_2_int (MapType0Select a@@77 o@@41)) 0) (= (U_2_int (MapType0Select b@@49 o@@41)) 0)))
 :qid |assertbpl.1125:19|
 :skolemid |209|
 :pattern ( (MapType0Select a@@77 o@@41))
 :pattern ( (MapType0Select b@@49 o@@41))
)))))
 :qid |assertbpl.1122:18|
 :skolemid |210|
 :pattern ( (|MultiSet#Disjoint| a@@77 b@@49))
)))
(assert (forall ((f@@22 T@U) (t0@@33 T@U) (h@@21 T@U) ) (!  (=> (and (and (and (= (type f@@22) HandleTypeType) (= (type t0@@33) TyType)) (= (type h@@21) (MapType0Type refType MapType1Type))) ($IsGoodHeap h@@21)) (= ($IsAlloc f@@22 (Tclass._System.___hFunc0 t0@@33) h@@21)  (=> (Requires0 t0@@33 h@@21 f@@22) (forall ((r@@9 T@U) ) (!  (=> (= (type r@@9) refType) (=> (and (not (= r@@9 null)) (U_2_bool (MapType0Select (Reads0 t0@@33 h@@21 f@@22) ($Box r@@9)))) (U_2_bool (MapType1Select (MapType0Select h@@21 r@@9) alloc))))
 :qid |assertbpl.2454:22|
 :skolemid |438|
 :pattern ( (MapType0Select (Reads0 t0@@33 h@@21 f@@22) ($Box r@@9)))
)))))
 :qid |assertbpl.2449:15|
 :skolemid |439|
 :pattern ( ($IsAlloc f@@22 (Tclass._System.___hFunc0 t0@@33) h@@21))
)))
(assert (forall ((o@@42 T@U) ) (! (let ((T@@117 (type o@@42)))
 (not (U_2_bool (MapType0Select (|Set#Empty| T@@117) o@@42))))
 :qid |assertbpl.768:18|
 :skolemid |124|
 :pattern ( (let ((T@@117 (type o@@42)))
(MapType0Select (|Set#Empty| T@@117) o@@42)))
)))
(assert (forall ((o@@43 T@U) ) (! (let ((T@@118 (type o@@43)))
 (not (U_2_bool (MapType0Select (|ISet#Empty| T@@118) o@@43))))
 :qid |assertbpl.896:18|
 :skolemid |155|
 :pattern ( (let ((T@@118 (type o@@43)))
(MapType0Select (|ISet#Empty| T@@118) o@@43)))
)))
(assert (forall ((t0@@34 T@U) (t1@@17 T@U) (heap@@6 T@U) (f@@23 T@U) (bx0@@12 T@U) ) (!  (=> (and (and (and (and (and (= (type t0@@34) TyType) (= (type t1@@17) TyType)) (= (type heap@@6) (MapType0Type refType MapType1Type))) (= (type f@@23) HandleTypeType)) (= (type bx0@@12) BoxType)) (and (and ($IsGoodHeap heap@@6) ($IsBox bx0@@12 t0@@34)) ($Is f@@23 (Tclass._System.___hFunc1 t0@@34 t1@@17)))) (= (|Set#Equal| (Reads1 t0@@34 t1@@17 $OneHeap f@@23 bx0@@12) (|Set#Empty| BoxType)) (|Set#Equal| (Reads1 t0@@34 t1@@17 heap@@6 f@@23 bx0@@12) (|Set#Empty| BoxType))))
 :qid |assertbpl.2141:15|
 :skolemid |388|
 :pattern ( (Reads1 t0@@34 t1@@17 $OneHeap f@@23 bx0@@12) ($IsGoodHeap heap@@6))
 :pattern ( (Reads1 t0@@34 t1@@17 heap@@6 f@@23 bx0@@12))
)))
(assert (forall ((h0@@11 T@U) (h1@@11 T@U) (a@@78 T@U) ) (!  (=> (and (and (= (type h0@@11) (MapType0Type refType MapType1Type)) (= (type h1@@11) (MapType0Type refType MapType1Type))) (= (type a@@78) refType)) (=> (and (and (and ($IsGoodHeap h0@@11) ($IsGoodHeap h1@@11)) ($HeapSucc h0@@11 h1@@11)) (= (MapType0Select h0@@11 a@@78) (MapType0Select h1@@11 a@@78))) (= (|Seq#FromArray| h0@@11 a@@78) (|Seq#FromArray| h1@@11 a@@78))))
 :qid |assertbpl.1363:15|
 :skolemid |259|
 :pattern ( (|Seq#FromArray| h1@@11 a@@78) ($HeapSucc h0@@11 h1@@11))
)))
(assert (forall ((s@@32 T@U) (i@@18 Int) (v@@36 T@U) ) (! (let ((T@@119 (type v@@36)))
 (=> (= (type s@@32) (SeqType T@@119)) (=> (and (<= 0 i@@18) (< i@@18 (|Seq#Length| s@@32))) (= (|Seq#Length| (|Seq#Update| s@@32 i@@18 v@@36)) (|Seq#Length| s@@32)))))
 :qid |assertbpl.1251:18|
 :skolemid |234|
 :pattern ( (|Seq#Length| (|Seq#Update| s@@32 i@@18 v@@36)))
)))
(assert (forall ((x@@37 Int) (y@@15 Int) ) (! (= (INTERNAL_mod_boogie x@@37 y@@15) (mod x@@37 y@@15))
 :qid |assertbpl.1730:15|
 :skolemid |336|
 :pattern ( (INTERNAL_mod_boogie x@@37 y@@15))
)))
(assert (forall ((x@@38 Int) (y@@16 Int) ) (! (= (Mod x@@38 y@@16) (mod x@@38 y@@16))
 :qid |assertbpl.1768:15|
 :skolemid |343|
 :pattern ( (Mod x@@38 y@@16))
)))
(assert (forall ((a@@79 T@U) (b@@50 T@U) (t0@@35 T@U) (t1@@18 T@U) ) (!  (=> (and (and (and (and (= (type a@@79) (MapType0Type BoxType boolType)) (= (type b@@50) (MapType0Type BoxType BoxType))) (= (type t0@@35) TyType)) (= (type t1@@18) TyType)) (forall ((bx@@30 T@U) ) (!  (=> (and (= (type bx@@30) BoxType) (U_2_bool (MapType0Select a@@79 bx@@30))) (and ($IsBox bx@@30 t0@@35) ($IsBox (MapType0Select b@@50 bx@@30) t1@@18)))
 :qid |assertbpl.1519:11|
 :skolemid |291|
 :no-pattern (type bx@@30)
 :no-pattern (U_2_int bx@@30)
 :no-pattern (U_2_bool bx@@30)
))) ($Is (|Map#Glue| a@@79 b@@50 (TMap t0@@35 t1@@18)) (TMap t0@@35 t1@@18)))
 :qid |assertbpl.1517:15|
 :skolemid |292|
 :pattern ( (|Map#Glue| a@@79 b@@50 (TMap t0@@35 t1@@18)))
)))
(assert (forall ((a@@80 T@U) (b@@51 T@U) (t0@@36 T@U) (t1@@19 T@U) ) (!  (=> (and (and (and (and (= (type a@@80) (MapType0Type BoxType boolType)) (= (type b@@51) (MapType0Type BoxType BoxType))) (= (type t0@@36) TyType)) (= (type t1@@19) TyType)) (forall ((bx@@31 T@U) ) (!  (=> (and (= (type bx@@31) BoxType) (U_2_bool (MapType0Select a@@80 bx@@31))) (and ($IsBox bx@@31 t0@@36) ($IsBox (MapType0Select b@@51 bx@@31) t1@@19)))
 :qid |assertbpl.1651:11|
 :skolemid |321|
 :no-pattern (type bx@@31)
 :no-pattern (U_2_int bx@@31)
 :no-pattern (U_2_bool bx@@31)
))) ($Is (|Map#Glue| a@@80 b@@51 (TIMap t0@@36 t1@@19)) (TIMap t0@@36 t1@@19)))
 :qid |assertbpl.1649:15|
 :skolemid |322|
 :pattern ( (|IMap#Glue| a@@80 b@@51 (TIMap t0@@36 t1@@19)))
)))
(assert (forall ((|#$R@@20| T@U) (|f#0@@5| T@U) ) (!  (=> (and (= (type |#$R@@20|) TyType) (= (type |f#0@@5|) HandleTypeType)) (= ($Is |f#0@@5| (Tclass._System.___hTotalFunc0 |#$R@@20|))  (and ($Is |f#0@@5| (Tclass._System.___hPartialFunc0 |#$R@@20|)) (Requires0 |#$R@@20| $OneHeap |f#0@@5|))))
 :qid |assertbpl.2527:15|
 :skolemid |449|
 :pattern ( ($Is |f#0@@5| (Tclass._System.___hTotalFunc0 |#$R@@20|)))
)))
(assert (forall ((h@@22 T@U) (a@@81 T@U) ) (!  (=> (and (= (type h@@22) (MapType0Type refType MapType1Type)) (= (type a@@81) refType)) (= (|Seq#Length| (|Seq#FromArray| h@@22 a@@81)) (_System.array.Length a@@81)))
 :qid |assertbpl.1352:15|
 :skolemid |256|
 :pattern ( (|Seq#Length| (|Seq#FromArray| h@@22 a@@81)))
)))
(assert  (and (and (forall ((arg0@@147 T@U) (arg1@@71 T@U) ) (! (= (type (TypeTuple arg0@@147 arg1@@71)) ClassNameType)
 :qid |funType:TypeTuple|
 :pattern ( (TypeTuple arg0@@147 arg1@@71))
)) (forall ((arg0@@148 T@U) ) (! (= (type (TypeTupleCar arg0@@148)) ClassNameType)
 :qid |funType:TypeTupleCar|
 :pattern ( (TypeTupleCar arg0@@148))
))) (forall ((arg0@@149 T@U) ) (! (= (type (TypeTupleCdr arg0@@149)) ClassNameType)
 :qid |funType:TypeTupleCdr|
 :pattern ( (TypeTupleCdr arg0@@149))
))))
(assert (forall ((a@@82 T@U) (b@@52 T@U) ) (!  (=> (and (= (type a@@82) ClassNameType) (= (type b@@52) ClassNameType)) (and (= (TypeTupleCar (TypeTuple a@@82 b@@52)) a@@82) (= (TypeTupleCdr (TypeTuple a@@82 b@@52)) b@@52)))
 :qid |assertbpl.411:15|
 :skolemid |80|
 :pattern ( (TypeTuple a@@82 b@@52))
)))
(assert (forall ((arg0@@150 T@U) ) (! (let ((T@@120 (FieldTypeInv0 (type arg0@@150))))
(= (type (MultiIndexField_Inverse0 arg0@@150)) (FieldType T@@120)))
 :qid |funType:MultiIndexField_Inverse0|
 :pattern ( (MultiIndexField_Inverse0 arg0@@150))
)))
(assert (forall ((f@@24 T@U) (i@@19 Int) ) (!  (=> (= (type f@@24) (FieldType BoxType)) (and (= (MultiIndexField_Inverse0 (MultiIndexField f@@24 i@@19)) f@@24) (= (MultiIndexField_Inverse1 (MultiIndexField f@@24 i@@19)) i@@19)))
 :qid |assertbpl.604:15|
 :skolemid |105|
 :pattern ( (MultiIndexField f@@24 i@@19))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@21| T@U) ) (!  (=> (and (= (type |#$T0@@12|) TyType) (= (type |#$R@@21|) TyType)) (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@21|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@21|)) |tytagFamily$_#Func1|)))
 :qid |assertbpl.1977:15|
 :skolemid |369|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@21|))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@22| T@U) ) (!  (=> (and (= (type |#$T0@@13|) TyType) (= (type |#$R@@22|) TyType)) (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@22|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@22|)) |tytagFamily$_#PartialFunc1|)))
 :qid |assertbpl.2202:15|
 :skolemid |400|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@22|))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@23| T@U) ) (!  (=> (and (= (type |#$T0@@14|) TyType) (= (type |#$R@@23|) TyType)) (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@23|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@23|)) |tytagFamily$_#TotalFunc1|)))
 :qid |assertbpl.2252:15|
 :skolemid |407|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@23|))
)))
(assert (forall ((|_System._tuple#2$T0@@7| T@U) (|_System._tuple#2$T1@@7| T@U) ) (!  (=> (and (= (type |_System._tuple#2$T0@@7|) TyType) (= (type |_System._tuple#2$T1@@7|) TyType)) (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|)) |tytagFamily$_tuple#2|)))
 :qid |assertbpl.2564:15|
 :skolemid |455|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|))
)))
(assert  (and (forall ((arg0@@151 T@U) ) (! (let ((T@@121 (SeqTypeInv0 (type arg0@@151))))
(= (type (|Seq#Build_inv0| arg0@@151)) (SeqType T@@121)))
 :qid |funType:Seq#Build_inv0|
 :pattern ( (|Seq#Build_inv0| arg0@@151))
)) (forall ((arg0@@152 T@U) ) (! (let ((T@@122 (SeqTypeInv0 (type arg0@@152))))
(= (type (|Seq#Build_inv1| arg0@@152)) T@@122))
 :qid |funType:Seq#Build_inv1|
 :pattern ( (|Seq#Build_inv1| arg0@@152))
))))
(assert (forall ((s@@33 T@U) (val@@13 T@U) ) (! (let ((T@@123 (type val@@13)))
 (=> (= (type s@@33) (SeqType T@@123)) (and (= (|Seq#Build_inv0| (|Seq#Build| s@@33 val@@13)) s@@33) (= (|Seq#Build_inv1| (|Seq#Build| s@@33 val@@13)) val@@13))))
 :qid |assertbpl.1200:18|
 :skolemid |225|
 :pattern ( (|Seq#Build| s@@33 val@@13))
)))
(assert (forall ((m@@40 T@U) (|m'@@2| T@U) ) (! (let ((V@@43 (MapTypeInv1 (type m@@40))))
(let ((U@@43 (MapTypeInv0 (type m@@40))))
 (=> (and (= (type m@@40) (MapType U@@43 V@@43)) (= (type |m'@@2|) (MapType U@@43 V@@43))) (= (|Map#Equal| m@@40 |m'@@2|)  (and (forall ((u@@17 T@U) ) (!  (=> (= (type u@@17) U@@43) (= (U_2_bool (MapType0Select (|Map#Domain| m@@40) u@@17)) (U_2_bool (MapType0Select (|Map#Domain| |m'@@2|) u@@17))))
 :qid |assertbpl.1568:19|
 :skolemid |300|
 :no-pattern (type u@@17)
 :no-pattern (U_2_int u@@17)
 :no-pattern (U_2_bool u@@17)
)) (forall ((u@@18 T@U) ) (!  (=> (and (= (type u@@18) U@@43) (U_2_bool (MapType0Select (|Map#Domain| m@@40) u@@18))) (= (MapType0Select (|Map#Elements| m@@40) u@@18) (MapType0Select (|Map#Elements| |m'@@2|) u@@18)))
 :qid |assertbpl.1569:19|
 :skolemid |301|
 :no-pattern (type u@@18)
 :no-pattern (U_2_int u@@18)
 :no-pattern (U_2_bool u@@18)
)))))))
 :qid |assertbpl.1565:20|
 :skolemid |302|
 :pattern ( (|Map#Equal| m@@40 |m'@@2|))
)))
(assert (forall ((m@@41 T@U) (|m'@@3| T@U) ) (! (let ((V@@44 (IMapTypeInv1 (type m@@41))))
(let ((U@@44 (IMapTypeInv0 (type m@@41))))
 (=> (and (= (type m@@41) (IMapType U@@44 V@@44)) (= (type |m'@@3|) (IMapType U@@44 V@@44))) (= (|IMap#Equal| m@@41 |m'@@3|)  (and (forall ((u@@19 T@U) ) (!  (=> (= (type u@@19) U@@44) (= (U_2_bool (MapType0Select (|IMap#Domain| m@@41) u@@19)) (U_2_bool (MapType0Select (|IMap#Domain| |m'@@3|) u@@19))))
 :qid |assertbpl.1671:19|
 :skolemid |324|
 :no-pattern (type u@@19)
 :no-pattern (U_2_int u@@19)
 :no-pattern (U_2_bool u@@19)
)) (forall ((u@@20 T@U) ) (!  (=> (and (= (type u@@20) U@@44) (U_2_bool (MapType0Select (|IMap#Domain| m@@41) u@@20))) (= (MapType0Select (|IMap#Elements| m@@41) u@@20) (MapType0Select (|IMap#Elements| |m'@@3|) u@@20)))
 :qid |assertbpl.1672:19|
 :skolemid |325|
 :no-pattern (type u@@20)
 :no-pattern (U_2_int u@@20)
 :no-pattern (U_2_bool u@@20)
)))))))
 :qid |assertbpl.1668:20|
 :skolemid |326|
 :pattern ( (|IMap#Equal| m@@41 |m'@@3|))
)))
(assert (forall ((o@@44 T@U) (m@@42 Int) (n@@16 Int) ) (!  (=> (= (type o@@44) BoxType) (=> (and (<= 0 m@@42) (<= 0 n@@16)) (= (|ORD#Plus| (|ORD#Plus| o@@44 (|ORD#FromNat| m@@42)) (|ORD#FromNat| n@@16)) (|ORD#Plus| o@@44 (|ORD#FromNat| (+ m@@42 n@@16))))))
 :qid |assertbpl.526:15|
 :skolemid |96|
 :pattern ( (|ORD#Plus| (|ORD#Plus| o@@44 (|ORD#FromNat| m@@42)) (|ORD#FromNat| n@@16)))
)))
(assert (forall ((x@@39 Int) (y@@17 Int) ) (! (= (INTERNAL_le_boogie x@@39 y@@17) (<= x@@39 y@@17))
 :qid |assertbpl.1742:15|
 :skolemid |338|
 :pattern ( (INTERNAL_le_boogie x@@39 y@@17))
)))
(assert (forall ((x@@40 Int) (y@@18 Int) ) (! (= (INTERNAL_ge_boogie x@@40 y@@18) (>= x@@40 y@@18))
 :qid |assertbpl.1754:15|
 :skolemid |340|
 :pattern ( (INTERNAL_ge_boogie x@@40 y@@18))
)))
(assert (forall ((x@@41 Int) (y@@19 Int) ) (! (= (INTERNAL_sub_boogie x@@41 y@@19) (- x@@41 y@@19))
 :qid |assertbpl.1712:15|
 :skolemid |333|
 :pattern ( (INTERNAL_sub_boogie x@@41 y@@19))
)))
(assert (forall ((x@@42 Int) (y@@20 Int) ) (! (= (Sub x@@42 y@@20) (- x@@42 y@@20))
 :qid |assertbpl.1776:15|
 :skolemid |345|
 :pattern ( (Sub x@@42 y@@20))
)))
(assert (forall ((x@@43 Int) (y@@21 Int) ) (! (= (INTERNAL_add_boogie x@@43 y@@21) (+ x@@43 y@@21))
 :qid |assertbpl.1706:15|
 :skolemid |332|
 :pattern ( (INTERNAL_add_boogie x@@43 y@@21))
)))
(assert (forall ((x@@44 Int) (y@@22 Int) ) (! (= (Add x@@44 y@@22) (+ x@@44 y@@22))
 :qid |assertbpl.1772:15|
 :skolemid |344|
 :pattern ( (Add x@@44 y@@22))
)))
(assert (forall ((x@@45 Int) (y@@23 Int) ) (! (= (INTERNAL_mul_boogie x@@45 y@@23) (* x@@45 y@@23))
 :qid |assertbpl.1718:15|
 :skolemid |334|
 :pattern ( (INTERNAL_mul_boogie x@@45 y@@23))
)))
(assert (forall ((x@@46 Int) (y@@24 Int) ) (! (= (Mul x@@46 y@@24) (* x@@46 y@@24))
 :qid |assertbpl.1760:15|
 :skolemid |341|
 :pattern ( (Mul x@@46 y@@24))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (= (type d@@9) DatatypeTypeType) (= (BoxRank ($Box d@@9)) (DtRank d@@9)))
 :qid |assertbpl.439:15|
 :skolemid |83|
 :pattern ( (BoxRank ($Box d@@9)))
)))
(assert (forall ((r@@10 T@U) ) (! (let ((T@@124 (type r@@10)))
(= (|MultiSet#Singleton| r@@10) (|MultiSet#UnionOne| (|MultiSet#Empty| T@@124) r@@10)))
 :qid |assertbpl.1033:18|
 :skolemid |190|
 :pattern ( (|MultiSet#Singleton| r@@10))
)))
(assert (forall ((s@@34 T@U) ) (! (let ((T@@125 (MapType0TypeInv0 (type s@@34))))
 (=> (= (type s@@34) (MapType0Type T@@125 boolType)) (= (|MultiSet#Card| (|MultiSet#FromSet| s@@34)) (|Set#Card| s@@34))))
 :qid |assertbpl.1134:18|
 :skolemid |212|
 :pattern ( (|MultiSet#Card| (|MultiSet#FromSet| s@@34)))
)))
(assert (forall ((s@@35 T@U) ) (! (let ((T@@126 (SeqTypeInv0 (type s@@35))))
 (=> (= (type s@@35) (SeqType T@@126)) (= (|MultiSet#Card| (|MultiSet#FromSeq| s@@35)) (|Seq#Length| s@@35))))
 :qid |assertbpl.1147:18|
 :skolemid |215|
 :pattern ( (|MultiSet#Card| (|MultiSet#FromSeq| s@@35)))
)))
(assert (forall ((m@@43 T@U) ) (! (let ((V@@45 (MapTypeInv1 (type m@@43))))
(let ((U@@45 (MapTypeInv0 (type m@@43))))
 (=> (= (type m@@43) (MapType U@@45 V@@45)) (= (|Set#Card| (|Map#Domain| m@@43)) (|Map#Card| m@@43)))))
 :qid |assertbpl.1465:20|
 :skolemid |282|
 :pattern ( (|Set#Card| (|Map#Domain| m@@43)))
)))
(assert (forall ((m@@44 T@U) ) (! (let ((V@@46 (MapTypeInv1 (type m@@44))))
(let ((U@@46 (MapTypeInv0 (type m@@44))))
 (=> (= (type m@@44) (MapType U@@46 V@@46)) (= (|Set#Card| (|Map#Items| m@@44)) (|Map#Card| m@@44)))))
 :qid |assertbpl.1473:20|
 :skolemid |284|
 :pattern ( (|Set#Card| (|Map#Items| m@@44)))
)))
(assert (forall ((m@@45 T@U) ) (! (let ((V@@47 (MapTypeInv1 (type m@@45))))
(let ((U@@47 (MapTypeInv0 (type m@@45))))
 (=> (= (type m@@45) (MapType U@@47 V@@47)) (<= (|Set#Card| (|Map#Values| m@@45)) (|Map#Card| m@@45)))))
 :qid |assertbpl.1469:20|
 :skolemid |283|
 :pattern ( (|Set#Card| (|Map#Values| m@@45)))
)))
(assert (forall ((s@@36 T@U) (n@@17 Int) (x@@47 T@U) ) (! (let ((T@@127 (type x@@47)))
 (=> (= (type s@@36) (SeqType T@@127)) (= (|Seq#Contains| (|Seq#Drop| s@@36 n@@17) x@@47) (exists ((i@@20 Int) ) (!  (and (and (and (<= 0 n@@17) (<= n@@17 i@@20)) (< i@@20 (|Seq#Length| s@@36))) (= (|Seq#Index| s@@36 i@@20) x@@47))
 :qid |assertbpl.1293:19|
 :skolemid |243|
 :pattern ( (|Seq#Index| s@@36 i@@20))
)))))
 :qid |assertbpl.1290:18|
 :skolemid |244|
 :pattern ( (|Seq#Contains| (|Seq#Drop| s@@36 n@@17) x@@47))
)))
(assert (forall ((a@@83 Int) (b@@53 Int) ) (! (= (<= a@@83 b@@53) (= (|Math#min| a@@83 b@@53) a@@83))
 :qid |assertbpl.986:15|
 :skolemid |177|
 :pattern ( (|Math#min| a@@83 b@@53))
)))
(assert (forall ((a@@84 Int) (b@@54 Int) ) (! (= (<= b@@54 a@@84) (= (|Math#min| a@@84 b@@54) b@@54))
 :qid |assertbpl.988:15|
 :skolemid |178|
 :pattern ( (|Math#min| a@@84 b@@54))
)))
(assert (forall ((f@@25 T@U) (t0@@37 T@U) ) (!  (=> (and (= (type f@@25) HandleTypeType) (= (type t0@@37) TyType)) (= ($Is f@@25 (Tclass._System.___hFunc0 t0@@37)) (forall ((h@@23 T@U) ) (!  (=> (= (type h@@23) (MapType0Type refType MapType1Type)) (=> (and ($IsGoodHeap h@@23) (Requires0 t0@@37 h@@23 f@@25)) ($IsBox (Apply0 t0@@37 h@@23 f@@25) t0@@37)))
 :qid |assertbpl.2437:19|
 :skolemid |434|
 :pattern ( (Apply0 t0@@37 h@@23 f@@25))
))))
 :qid |assertbpl.2434:15|
 :skolemid |435|
 :pattern ( ($Is f@@25 (Tclass._System.___hFunc0 t0@@37)))
)))
(assert (forall ((o@@45 T@U) (m@@46 Int) (n@@18 Int) ) (!  (=> (= (type o@@45) BoxType) (=> (and (and (<= 0 m@@46) (<= 0 n@@18)) (<= n@@18 (+ (|ORD#Offset| o@@45) m@@46))) (and (=> (<= 0 (- m@@46 n@@18)) (= (|ORD#Minus| (|ORD#Plus| o@@45 (|ORD#FromNat| m@@46)) (|ORD#FromNat| n@@18)) (|ORD#Plus| o@@45 (|ORD#FromNat| (- m@@46 n@@18))))) (=> (<= (- m@@46 n@@18) 0) (= (|ORD#Minus| (|ORD#Plus| o@@45 (|ORD#FromNat| m@@46)) (|ORD#FromNat| n@@18)) (|ORD#Minus| o@@45 (|ORD#FromNat| (- n@@18 m@@46))))))))
 :qid |assertbpl.538:15|
 :skolemid |98|
 :pattern ( (|ORD#Minus| (|ORD#Plus| o@@45 (|ORD#FromNat| m@@46)) (|ORD#FromNat| n@@18)))
)))
(assert (forall ((o@@46 T@U) (m@@47 Int) (n@@19 Int) ) (!  (=> (= (type o@@46) BoxType) (=> (and (and (<= 0 m@@47) (<= 0 n@@19)) (<= n@@19 (+ (|ORD#Offset| o@@46) m@@47))) (and (=> (<= 0 (- m@@47 n@@19)) (= (|ORD#Plus| (|ORD#Minus| o@@46 (|ORD#FromNat| m@@47)) (|ORD#FromNat| n@@19)) (|ORD#Minus| o@@46 (|ORD#FromNat| (- m@@47 n@@19))))) (=> (<= (- m@@47 n@@19) 0) (= (|ORD#Plus| (|ORD#Minus| o@@46 (|ORD#FromNat| m@@47)) (|ORD#FromNat| n@@19)) (|ORD#Plus| o@@46 (|ORD#FromNat| (- n@@19 m@@47))))))))
 :qid |assertbpl.548:15|
 :skolemid |99|
 :pattern ( (|ORD#Plus| (|ORD#Minus| o@@46 (|ORD#FromNat| m@@47)) (|ORD#FromNat| n@@19)))
)))
(assert (forall ((bx@@32 T@U) ) (!  (=> (and (= (type bx@@32) BoxType) ($IsBox bx@@32 (TBitvector 0))) (and (= ($Box ($Unbox intType bx@@32)) bx@@32) ($Is ($Unbox (MapType0Type BoxType boolType) bx@@32) (TBitvector 0))))
 :qid |assertbpl.209:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@32 (TBitvector 0)))
)))
(assert (forall ((bx@@33 T@U) (t@@27 T@U) ) (!  (=> (and (and (= (type bx@@33) BoxType) (= (type t@@27) TyType)) ($IsBox bx@@33 (TSet t@@27))) (and (= ($Box ($Unbox (MapType0Type BoxType boolType) bx@@33)) bx@@33) ($Is ($Unbox (MapType0Type BoxType boolType) bx@@33) (TSet t@@27))))
 :qid |assertbpl.214:15|
 :skolemid |31|
 :pattern ( ($IsBox bx@@33 (TSet t@@27)))
)))
(assert (forall ((bx@@34 T@U) (t@@28 T@U) ) (!  (=> (and (and (= (type bx@@34) BoxType) (= (type t@@28) TyType)) ($IsBox bx@@34 (TISet t@@28))) (and (= ($Box ($Unbox (MapType0Type BoxType boolType) bx@@34)) bx@@34) ($Is ($Unbox (MapType0Type BoxType boolType) bx@@34) (TISet t@@28))))
 :qid |assertbpl.219:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@34 (TISet t@@28)))
)))
(assert (forall ((bx@@35 T@U) (t@@29 T@U) ) (!  (=> (and (and (= (type bx@@35) BoxType) (= (type t@@29) TyType)) ($IsBox bx@@35 (TMultiSet t@@29))) (and (= ($Box ($Unbox (MapType0Type BoxType intType) bx@@35)) bx@@35) ($Is ($Unbox (MapType0Type BoxType intType) bx@@35) (TMultiSet t@@29))))
 :qid |assertbpl.224:15|
 :skolemid |33|
 :pattern ( ($IsBox bx@@35 (TMultiSet t@@29)))
)))
(assert (forall ((bx@@36 T@U) (t@@30 T@U) ) (!  (=> (and (and (= (type bx@@36) BoxType) (= (type t@@30) TyType)) ($IsBox bx@@36 (TSeq t@@30))) (and (= ($Box ($Unbox (SeqType BoxType) bx@@36)) bx@@36) ($Is ($Unbox (SeqType BoxType) bx@@36) (TSeq t@@30))))
 :qid |assertbpl.230:15|
 :skolemid |34|
 :pattern ( ($IsBox bx@@36 (TSeq t@@30)))
)))
(assert (forall ((_System.array$arg@@10 T@U) (bx@@37 T@U) ) (!  (=> (and (and (= (type _System.array$arg@@10) TyType) (= (type bx@@37) BoxType)) ($IsBox bx@@37 (Tclass._System.array? _System.array$arg@@10))) (and (= ($Box ($Unbox refType bx@@37)) bx@@37) ($Is ($Unbox refType bx@@37) (Tclass._System.array? _System.array$arg@@10))))
 :qid |assertbpl.1876:15|
 :skolemid |357|
 :pattern ( ($IsBox bx@@37 (Tclass._System.array? _System.array$arg@@10)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@38 T@U) ) (!  (=> (and (and (= (type _System.array$arg@@11) TyType) (= (type bx@@38) BoxType)) ($IsBox bx@@38 (Tclass._System.array _System.array$arg@@11))) (and (= ($Box ($Unbox refType bx@@38)) bx@@38) ($Is ($Unbox refType bx@@38) (Tclass._System.array _System.array$arg@@11))))
 :qid |assertbpl.1954:15|
 :skolemid |366|
 :pattern ( ($IsBox bx@@38 (Tclass._System.array _System.array$arg@@11)))
)))
(assert (forall ((|#$R@@24| T@U) (bx@@39 T@U) ) (!  (=> (and (and (= (type |#$R@@24|) TyType) (= (type bx@@39) BoxType)) ($IsBox bx@@39 (Tclass._System.___hFunc0 |#$R@@24|))) (and (= ($Box ($Unbox HandleTypeType bx@@39)) bx@@39) ($Is ($Unbox HandleTypeType bx@@39) (Tclass._System.___hFunc0 |#$R@@24|))))
 :qid |assertbpl.2311:15|
 :skolemid |416|
 :pattern ( ($IsBox bx@@39 (Tclass._System.___hFunc0 |#$R@@24|)))
)))
(assert (forall ((|#$R@@25| T@U) (bx@@40 T@U) ) (!  (=> (and (and (= (type |#$R@@25|) TyType) (= (type bx@@40) BoxType)) ($IsBox bx@@40 (Tclass._System.___hPartialFunc0 |#$R@@25|))) (and (= ($Box ($Unbox HandleTypeType bx@@40)) bx@@40) ($Is ($Unbox HandleTypeType bx@@40) (Tclass._System.___hPartialFunc0 |#$R@@25|))))
 :qid |assertbpl.2483:15|
 :skolemid |443|
 :pattern ( ($IsBox bx@@40 (Tclass._System.___hPartialFunc0 |#$R@@25|)))
)))
(assert (forall ((|#$R@@26| T@U) (bx@@41 T@U) ) (!  (=> (and (and (= (type |#$R@@26|) TyType) (= (type bx@@41) BoxType)) ($IsBox bx@@41 (Tclass._System.___hTotalFunc0 |#$R@@26|))) (and (= ($Box ($Unbox HandleTypeType bx@@41)) bx@@41) ($Is ($Unbox HandleTypeType bx@@41) (Tclass._System.___hTotalFunc0 |#$R@@26|))))
 :qid |assertbpl.2520:15|
 :skolemid |448|
 :pattern ( ($IsBox bx@@41 (Tclass._System.___hTotalFunc0 |#$R@@26|)))
)))
(assert (forall ((arg0@@153 T@U) (arg1@@72 T@U) (arg2@@21 Int) (arg3@@4 T@U) ) (! (= (type (|Seq#Create| arg0@@153 arg1@@72 arg2@@21 arg3@@4)) (SeqType BoxType))
 :qid |funType:Seq#Create|
 :pattern ( (|Seq#Create| arg0@@153 arg1@@72 arg2@@21 arg3@@4))
)))
(assert (forall ((ty@@0 T@U) (heap@@7 T@U) (len Int) (init T@U) (i@@21 Int) ) (!  (=> (and (and (and (= (type ty@@0) TyType) (= (type heap@@7) (MapType0Type refType MapType1Type))) (= (type init) HandleTypeType)) (and (and ($IsGoodHeap heap@@7) (<= 0 i@@21)) (< i@@21 len))) (= (|Seq#Index| (|Seq#Create| ty@@0 heap@@7 len init) i@@21) (Apply1 TInt (TSeq ty@@0) heap@@7 init ($Box (int_2_U i@@21)))))
 :qid |assertbpl.1225:15|
 :skolemid |230|
 :pattern ( (|Seq#Index| (|Seq#Create| ty@@0 heap@@7 len init) i@@21))
)))
(assert (forall ((s@@37 T@U) (v@@37 T@U) ) (! (let ((T@@128 (type v@@37)))
 (=> (= (type s@@37) (SeqType T@@128)) (= (|MultiSet#FromSeq| (|Seq#Build| s@@37 v@@37)) (|MultiSet#UnionOne| (|MultiSet#FromSeq| s@@37) v@@37))))
 :qid |assertbpl.1151:18|
 :skolemid |216|
 :pattern ( (|MultiSet#FromSeq| (|Seq#Build| s@@37 v@@37)))
)))
(assert (forall ((m@@48 T@U) (s@@38 T@U) ) (! (let ((V@@48 (MapTypeInv1 (type m@@48))))
(let ((U@@48 (MapTypeInv0 (type m@@48))))
 (=> (and (= (type m@@48) (MapType U@@48 V@@48)) (= (type s@@38) (MapType0Type U@@48 boolType))) (= (|Map#Domain| (|Map#Subtract| m@@48 s@@38)) (|Set#Difference| (|Map#Domain| m@@48) s@@38)))))
 :qid |assertbpl.1554:20|
 :skolemid |298|
 :pattern ( (|Map#Domain| (|Map#Subtract| m@@48 s@@38)))
)))
(assert (forall ((m@@49 T@U) (s@@39 T@U) ) (! (let ((V@@49 (IMapTypeInv1 (type m@@49))))
(let ((U@@49 (IMapTypeInv0 (type m@@49))))
 (=> (and (= (type m@@49) (IMapType U@@49 V@@49)) (= (type s@@39) (MapType0Type U@@49 boolType))) (= (|IMap#Domain| (|IMap#Subtract| m@@49 s@@39)) (|Set#Difference| (|IMap#Domain| m@@49) s@@39)))))
 :qid |assertbpl.1695:20|
 :skolemid |330|
 :pattern ( (|IMap#Domain| (|IMap#Subtract| m@@49 s@@39)))
)))
(assert (forall ((o@@47 T@U) ) (!  (=> (and (= (type o@@47) BoxType) (|ORD#IsNat| o@@47)) (= o@@47 (|ORD#FromNat| (|ORD#Offset| o@@47))))
 :qid |assertbpl.465:15|
 :skolemid |86|
 :pattern ( (|ORD#Offset| o@@47))
 :pattern ( (|ORD#IsNat| o@@47))
)))
(assert (forall ((s@@40 T@U) ) (! (let ((T@@129 (MapType0TypeInv0 (type s@@40))))
 (=> (= (type s@@40) (MapType0Type T@@129 boolType)) (and (= (= (|Set#Card| s@@40) 0) (= s@@40 (|Set#Empty| T@@129))) (=> (not (= (|Set#Card| s@@40) 0)) (exists ((x@@48 T@U) ) (!  (and (= (type x@@48) T@@129) (U_2_bool (MapType0Select s@@40 x@@48)))
 :qid |assertbpl.773:39|
 :skolemid |125|
 :no-pattern (type x@@48)
 :no-pattern (U_2_int x@@48)
 :no-pattern (U_2_bool x@@48)
))))))
 :qid |assertbpl.770:18|
 :skolemid |126|
 :pattern ( (|Set#Card| s@@40))
)))
(assert (forall ((h@@24 T@U) (r@@11 T@U) (f@@26 T@U) (x@@49 T@U) ) (! (let ((alpha@@6 (type x@@49)))
 (=> (and (and (and (= (type h@@24) (MapType0Type refType MapType1Type)) (= (type r@@11) refType)) (= (type f@@26) (FieldType alpha@@6))) ($IsGoodHeap (MapType0Store h@@24 r@@11 (MapType1Store (MapType0Select h@@24 r@@11) f@@26 x@@49)))) ($HeapSucc h@@24 (MapType0Store h@@24 r@@11 (MapType1Store (MapType0Select h@@24 r@@11) f@@26 x@@49)))))
 :qid |assertbpl.691:22|
 :skolemid |115|
 :pattern ( (MapType0Store h@@24 r@@11 (MapType1Store (MapType0Select h@@24 r@@11) f@@26 x@@49)))
)))
(assert (forall ((a@@85 T@U) (b@@55 T@U) ) (! (let ((T@@130 (MapType0TypeInv0 (type a@@85))))
 (=> (and (= (type a@@85) (MapType0Type T@@130 boolType)) (= (type b@@55) (MapType0Type T@@130 boolType))) (= (|Set#Subset| a@@85 b@@55) (forall ((o@@48 T@U) ) (!  (=> (and (= (type o@@48) T@@130) (U_2_bool (MapType0Select a@@85 o@@48))) (U_2_bool (MapType0Select b@@55 o@@48)))
 :qid |assertbpl.876:33|
 :skolemid |148|
 :pattern ( (MapType0Select a@@85 o@@48))
 :pattern ( (MapType0Select b@@55 o@@48))
)))))
 :qid |assertbpl.874:18|
 :skolemid |149|
 :pattern ( (|Set#Subset| a@@85 b@@55))
)))
(assert (forall ((a@@86 T@U) (b@@56 T@U) ) (! (let ((T@@131 (MapType0TypeInv0 (type a@@86))))
 (=> (and (= (type a@@86) (MapType0Type T@@131 boolType)) (= (type b@@56) (MapType0Type T@@131 boolType))) (= (|ISet#Subset| a@@86 b@@56) (forall ((o@@49 T@U) ) (!  (=> (and (= (type o@@49) T@@131) (U_2_bool (MapType0Select a@@86 o@@49))) (U_2_bool (MapType0Select b@@56 o@@49)))
 :qid |assertbpl.966:34|
 :skolemid |170|
 :pattern ( (MapType0Select a@@86 o@@49))
 :pattern ( (MapType0Select b@@56 o@@49))
)))))
 :qid |assertbpl.964:18|
 :skolemid |171|
 :pattern ( (|ISet#Subset| a@@86 b@@56))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._System.Tuple0) Tagclass._System.Tuple0))
(assert (= (TagFamily Tclass._System.Tuple0) |tytagFamily$_tuple#0|))
(assert (= (Tag Tclass._module.__default) Tagclass._module.__default))
(assert (= (TagFamily Tclass._module.__default) tytagFamily$_default))
(assert (forall ((_System.array$arg@@12 T@U) ($h@@15 T@U) ($o@@9 T@U) ($i0@@0 Int) ) (!  (=> (and (and (= (type _System.array$arg@@12) TyType) (= (type $h@@15) (MapType0Type refType MapType1Type))) (= (type $o@@9) refType)) (=> (and (and (and (and ($IsGoodHeap $h@@15) (not (= $o@@9 null))) (= (dtype $o@@9) (Tclass._System.array? _System.array$arg@@12))) (<= 0 $i0@@0)) (< $i0@@0 (_System.array.Length $o@@9))) ($IsBox (MapType1Select (MapType0Select $h@@15 $o@@9) (IndexField $i0@@0)) _System.array$arg@@12)))
 :qid |assertbpl.1883:15|
 :skolemid |358|
 :pattern ( (MapType1Select (MapType0Select $h@@15 $o@@9) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@12))
)))
(assert (forall ((ty@@1 T@U) (heap@@8 T@U) (len@@0 Int) (init@@0 T@U) ) (!  (=> (and (and (and (= (type ty@@1) TyType) (= (type heap@@8) (MapType0Type refType MapType1Type))) (= (type init@@0) HandleTypeType)) (and ($IsGoodHeap heap@@8) (<= 0 len@@0))) (= (|Seq#Length| (|Seq#Create| ty@@1 heap@@8 len@@0 init@@0)) len@@0))
 :qid |assertbpl.1220:15|
 :skolemid |229|
 :pattern ( (|Seq#Length| (|Seq#Create| ty@@1 heap@@8 len@@0 init@@0)))
)))
(assert (forall ((s@@41 T@U) (n@@20 Int) (k@@7 Int) ) (! (let ((T@@132 (SeqTypeInv0 (type s@@41))))
 (=> (= (type s@@41) (SeqType T@@132)) (=> (and (and (<= 0 n@@20) (<= n@@20 k@@7)) (< k@@7 (|Seq#Length| s@@41))) (= (|Seq#Index| (|Seq#Drop| s@@41 n@@20) (- k@@7 n@@20)) (|Seq#Index| s@@41 k@@7)))))
 :qid |assertbpl.1340:18|
 :weight 25
 :skolemid |254|
 :pattern ( (|Seq#Index| s@@41 k@@7) (|Seq#Drop| s@@41 n@@20))
)))
(assert (forall ((v@@38 T@U) (t0@@38 T@U) (h@@25 T@U) ) (!  (=> (and (and (= (type v@@38) (MapType0Type BoxType intType)) (= (type t0@@38) TyType)) (= (type h@@25) (MapType0Type refType MapType1Type))) (= ($IsAlloc v@@38 (TMultiSet t0@@38) h@@25) (forall ((bx@@42 T@U) ) (!  (=> (and (= (type bx@@42) BoxType) (< 0 (U_2_int (MapType0Select v@@38 bx@@42)))) ($IsAllocBox bx@@42 t0@@38 h@@25))
 :qid |assertbpl.349:19|
 :skolemid |70|
 :pattern ( (MapType0Select v@@38 bx@@42))
))))
 :qid |assertbpl.346:15|
 :skolemid |71|
 :pattern ( ($IsAlloc v@@38 (TMultiSet t0@@38) h@@25))
)))
(assert (forall ((t0@@39 T@U) (heap@@9 T@U) (h@@26 T@U) (r@@12 T@U) (rd@@3 T@U) (bx@@43 T@U) ) (!  (=> (and (and (and (and (and (= (type t0@@39) TyType) (= (type heap@@9) (MapType0Type refType MapType1Type))) (= (type h@@26) (MapType0Type (MapType0Type refType MapType1Type) BoxType))) (= (type r@@12) (MapType0Type (MapType0Type refType MapType1Type) boolType))) (= (type rd@@3) (MapType0Type (MapType0Type refType MapType1Type) (MapType0Type BoxType boolType)))) (= (type bx@@43) BoxType)) (= (U_2_bool (MapType0Select (Reads0 t0@@39 heap@@9 (Handle0 h@@26 r@@12 rd@@3)) bx@@43)) (U_2_bool (MapType0Select (MapType0Select rd@@3 heap@@9) bx@@43))))
 :qid |assertbpl.2333:15|
 :skolemid |419|
 :pattern ( (MapType0Select (Reads0 t0@@39 heap@@9 (Handle0 h@@26 r@@12 rd@@3)) bx@@43))
)))
(assert (= |#_System._tuple#0._#Make0| (Lit |#_System._tuple#0._#Make0|)))
(assert (forall ((o@@50 T@U) (p@@6 T@U) ) (!  (=> (and (and (= (type o@@50) BoxType) (= (type p@@6) BoxType)) (and (|ORD#IsNat| p@@6) (<= (|ORD#Offset| p@@6) (|ORD#Offset| o@@50)))) (or (and (= p@@6 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@50 p@@6) o@@50)) (and (not (= p@@6 (|ORD#FromNat| 0))) (|ORD#Less| (|ORD#Minus| o@@50 p@@6) o@@50))))
 :qid |assertbpl.520:15|
 :skolemid |95|
 :pattern ( (|ORD#Minus| o@@50 p@@6))
)))
(assert (forall ((a@@87 T@U) (x@@50 T@U) ) (! (let ((T@@133 (type x@@50)))
 (=> (and (= (type a@@87) (MapType0Type T@@133 boolType)) (not (U_2_bool (MapType0Select a@@87 x@@50)))) (= (|Set#Card| (|Set#UnionOne| a@@87 x@@50)) (+ (|Set#Card| a@@87) 1))))
 :qid |assertbpl.803:18|
 :skolemid |134|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@87 x@@50)))
)))
(assert (forall ((s@@42 T@U) ) (!  (=> (= (type s@@42) (MapType0Type refType boolType)) ($Is (SetRef_to_SetBox s@@42) (TSet Tclass._System.object?)))
 :qid |assertbpl.423:15|
 :skolemid |82|
 :pattern ( (SetRef_to_SetBox s@@42))
)))
(assert (forall ((f@@27 T@U) (t0@@40 T@U) (h@@27 T@U) ) (!  (=> (and (and (and (and (= (type f@@27) HandleTypeType) (= (type t0@@40) TyType)) (= (type h@@27) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap h@@27) ($IsAlloc f@@27 (Tclass._System.___hFunc0 t0@@40) h@@27))) (Requires0 t0@@40 h@@27 f@@27)) ($IsAllocBox (Apply0 t0@@40 h@@27 f@@27) t0@@40 h@@27))
 :qid |assertbpl.2458:15|
 :skolemid |440|
 :pattern ( ($IsAlloc f@@27 (Tclass._System.___hFunc0 t0@@40) h@@27))
)))
(assert (forall ((s@@43 T@U) (m@@50 Int) (n@@21 Int) ) (! (let ((T@@134 (SeqTypeInv0 (type s@@43))))
 (=> (= (type s@@43) (SeqType T@@134)) (=> (and (and (<= 0 m@@50) (<= 0 n@@21)) (<= (+ m@@50 n@@21) (|Seq#Length| s@@43))) (= (|Seq#Drop| (|Seq#Drop| s@@43 m@@50) n@@21) (|Seq#Drop| s@@43 (+ m@@50 n@@21))))))
 :qid |assertbpl.1433:18|
 :skolemid |273|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@43 m@@50) n@@21))
)))
(assert (forall ((s0@@2 T@U) (s1@@2 T@U) (n@@22 Int) ) (! (let ((T@@135 (SeqTypeInv0 (type s0@@2))))
 (=> (and (= (type s0@@2) (SeqType T@@135)) (= (type s1@@2) (SeqType T@@135))) (= (|Seq#SameUntil| s0@@2 s1@@2 n@@22) (forall ((j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 n@@22)) (= (|Seq#Index| s0@@2 j@@3) (|Seq#Index| s1@@2 j@@3)))
 :qid |assertbpl.1314:19|
 :skolemid |248|
 :pattern ( (|Seq#Index| s0@@2 j@@3))
 :pattern ( (|Seq#Index| s1@@2 j@@3))
)))))
 :qid |assertbpl.1311:18|
 :skolemid |249|
 :pattern ( (|Seq#SameUntil| s0@@2 s1@@2 n@@22))
)))
(assert (forall ((a@@88 T@U) (b@@57 T@U) ) (! (let ((T@@136 (MapType0TypeInv0 (type a@@88))))
 (=> (and (= (type a@@88) (MapType0Type T@@136 boolType)) (= (type b@@57) (MapType0Type T@@136 boolType))) (= (|Set#Disjoint| a@@88 b@@57) (forall ((o@@51 T@U) ) (!  (=> (= (type o@@51) T@@136) (or (not (U_2_bool (MapType0Select a@@88 o@@51))) (not (U_2_bool (MapType0Select b@@57 o@@51)))))
 :qid |assertbpl.890:35|
 :skolemid |153|
 :pattern ( (MapType0Select a@@88 o@@51))
 :pattern ( (MapType0Select b@@57 o@@51))
)))))
 :qid |assertbpl.888:18|
 :skolemid |154|
 :pattern ( (|Set#Disjoint| a@@88 b@@57))
)))
(assert (forall ((a@@89 T@U) (b@@58 T@U) ) (! (let ((T@@137 (MapType0TypeInv0 (type a@@89))))
 (=> (and (= (type a@@89) (MapType0Type T@@137 boolType)) (= (type b@@58) (MapType0Type T@@137 boolType))) (= (|ISet#Disjoint| a@@89 b@@58) (forall ((o@@52 T@U) ) (!  (=> (= (type o@@52) T@@137) (or (not (U_2_bool (MapType0Select a@@89 o@@52))) (not (U_2_bool (MapType0Select b@@58 o@@52)))))
 :qid |assertbpl.982:36|
 :skolemid |175|
 :pattern ( (MapType0Select a@@89 o@@52))
 :pattern ( (MapType0Select b@@58 o@@52))
)))))
 :qid |assertbpl.980:18|
 :skolemid |176|
 :pattern ( (|ISet#Disjoint| a@@89 b@@58))
)))
(assert (forall ((a@@90 T@U) (x@@51 T@U) (y@@25 T@U) ) (! (let ((T@@138 (type x@@51)))
 (=> (and (and (= (type a@@90) (MapType0Type T@@138 intType)) (= (type y@@25) T@@138)) (not (= x@@51 y@@25))) (= (U_2_int (MapType0Select a@@90 y@@25)) (U_2_int (MapType0Select (|MultiSet#UnionOne| a@@90 x@@51) y@@25)))))
 :qid |assertbpl.1051:18|
 :skolemid |194|
 :pattern ( (|MultiSet#UnionOne| a@@90 x@@51) (MapType0Select a@@90 y@@25))
)))
(assert (forall ((s0@@3 T@U) (s1@@3 T@U) (n@@23 Int) ) (! (let ((T@@139 (SeqTypeInv0 (type s0@@3))))
 (=> (and (= (type s0@@3) (SeqType T@@139)) (= (type s1@@3) (SeqType T@@139))) (and (=> (< n@@23 (|Seq#Length| s0@@3)) (= (|Seq#Index| (|Seq#Append| s0@@3 s1@@3) n@@23) (|Seq#Index| s0@@3 n@@23))) (=> (<= (|Seq#Length| s0@@3) n@@23) (= (|Seq#Index| (|Seq#Append| s0@@3 s1@@3) n@@23) (|Seq#Index| s1@@3 (- n@@23 (|Seq#Length| s0@@3))))))))
 :qid |assertbpl.1243:18|
 :skolemid |233|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@3 s1@@3) n@@23))
)))
(assert (forall ((o@@53 T@U) (p@@7 T@U) ) (!  (=> (and (= (type o@@53) BoxType) (= (type p@@7) BoxType)) (and (=> (|ORD#IsNat| (|ORD#Plus| o@@53 p@@7)) (and (|ORD#IsNat| o@@53) (|ORD#IsNat| p@@7))) (=> (|ORD#IsNat| p@@7) (and (= (|ORD#IsNat| (|ORD#Plus| o@@53 p@@7)) (|ORD#IsNat| o@@53)) (= (|ORD#Offset| (|ORD#Plus| o@@53 p@@7)) (+ (|ORD#Offset| o@@53) (|ORD#Offset| p@@7)))))))
 :qid |assertbpl.495:15|
 :skolemid |91|
 :pattern ( (|ORD#Plus| o@@53 p@@7))
)))
(assert (forall ((f@@28 T@U) (t0@@41 T@U) (u0@@0 T@U) ) (!  (=> (and (and (and (= (type f@@28) HandleTypeType) (= (type t0@@41) TyType)) (= (type u0@@0) TyType)) (and ($Is f@@28 (Tclass._System.___hFunc0 t0@@41)) (forall ((bx@@44 T@U) ) (!  (=> (and (= (type bx@@44) BoxType) ($IsBox bx@@44 t0@@41)) ($IsBox bx@@44 u0@@0))
 :qid |assertbpl.2444:19|
 :skolemid |436|
 :pattern ( ($IsBox bx@@44 t0@@41))
 :pattern ( ($IsBox bx@@44 u0@@0))
)))) ($Is f@@28 (Tclass._System.___hFunc0 u0@@0)))
 :qid |assertbpl.2441:15|
 :skolemid |437|
 :pattern ( ($Is f@@28 (Tclass._System.___hFunc0 t0@@41)) ($Is f@@28 (Tclass._System.___hFunc0 u0@@0)))
)))
(assert (forall ((a@@91 Int) ) (!  (=> (< a@@91 0) (= (|Math#clip| a@@91) 0))
 :qid |assertbpl.998:15|
 :skolemid |181|
 :pattern ( (|Math#clip| a@@91))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (!  (=> (and (= (type |a#3#0#0|) BoxType) (= (type |a#3#1#0|) BoxType)) (= (|#_System._tuple#2._#Make2| (Lit |a#3#0#0|) (Lit |a#3#1#0|)) (Lit (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|))))
 :qid |assertbpl.2642:15|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit |a#3#0#0|) (Lit |a#3#1#0|)))
)))
(assert (forall ((x@@52 Int) ) (! (= ($Box (int_2_U (LitInt x@@52))) (Lit ($Box (int_2_U x@@52))))
 :qid |assertbpl.132:15|
 :skolemid |17|
 :pattern ( ($Box (int_2_U (LitInt x@@52))))
)))
(assert (forall ((x@@53 Real) ) (! (= ($Box (real_2_U (LitReal x@@53))) (Lit ($Box (real_2_U x@@53))))
 :qid |assertbpl.138:15|
 :skolemid |19|
 :pattern ( ($Box (real_2_U (LitReal x@@53))))
)))
(assert (forall ((x@@54 T@U) ) (! (= ($Box (Lit x@@54)) (Lit ($Box x@@54)))
 :qid |assertbpl.126:18|
 :skolemid |15|
 :pattern ( ($Box (Lit x@@54)))
)))
(assert (forall ((a@@92 T@U) (b@@59 T@U) ) (! (let ((T@@140 (SeqTypeInv0 (type a@@92))))
 (=> (and (= (type a@@92) (SeqType T@@140)) (= (type b@@59) (SeqType T@@140))) (= (|MultiSet#FromSeq| (|Seq#Append| a@@92 b@@59)) (|MultiSet#Union| (|MultiSet#FromSeq| a@@92) (|MultiSet#FromSeq| b@@59)))))
 :qid |assertbpl.1155:18|
 :skolemid |217|
 :pattern ( (|MultiSet#FromSeq| (|Seq#Append| a@@92 b@@59)))
)))
(assert (forall ((m@@51 T@U) (n@@24 T@U) ) (! (let ((V@@50 (MapTypeInv1 (type m@@51))))
(let ((U@@50 (MapTypeInv0 (type m@@51))))
 (=> (and (= (type m@@51) (MapType U@@50 V@@50)) (= (type n@@24) (MapType U@@50 V@@50))) (= (|Map#Domain| (|Map#Merge| m@@51 n@@24)) (|Set#Union| (|Map#Domain| m@@51) (|Map#Domain| n@@24))))))
 :qid |assertbpl.1542:20|
 :skolemid |296|
 :pattern ( (|Map#Domain| (|Map#Merge| m@@51 n@@24)))
)))
(assert (forall ((m@@52 T@U) (n@@25 T@U) ) (! (let ((V@@51 (IMapTypeInv1 (type m@@52))))
(let ((U@@51 (IMapTypeInv0 (type m@@52))))
 (=> (and (= (type m@@52) (IMapType U@@51 V@@51)) (= (type n@@25) (IMapType U@@51 V@@51))) (= (|IMap#Domain| (|IMap#Merge| m@@52 n@@25)) (|Set#Union| (|IMap#Domain| m@@52) (|IMap#Domain| n@@25))))))
 :qid |assertbpl.1681:20|
 :skolemid |328|
 :pattern ( (|IMap#Domain| (|IMap#Merge| m@@52 n@@25)))
)))
(assert (forall ((s@@44 T@U) ) (! (let ((T@@141 (SeqTypeInv0 (type s@@44))))
 (=> (and (= (type s@@44) (SeqType T@@141)) (= (|Seq#Length| s@@44) 0)) (= s@@44 (|Seq#Empty| T@@141))))
 :qid |assertbpl.1184:18|
 :skolemid |223|
 :pattern ( (|Seq#Length| s@@44))
)))
(assert (forall ((s@@45 T@U) (n@@26 Int) ) (! (let ((T@@142 (SeqTypeInv0 (type s@@45))))
 (=> (and (= (type s@@45) (SeqType T@@142)) (= n@@26 0)) (= (|Seq#Take| s@@45 n@@26) (|Seq#Empty| T@@142))))
 :qid |assertbpl.1429:18|
 :skolemid |272|
 :pattern ( (|Seq#Take| s@@45 n@@26))
)))
(assert (forall ((t0@@42 T@U) (heap@@10 T@U) (h@@28 T@U) (r@@13 T@U) (rd@@4 T@U) ) (!  (=> (and (and (and (and (and (= (type t0@@42) TyType) (= (type heap@@10) (MapType0Type refType MapType1Type))) (= (type h@@28) (MapType0Type (MapType0Type refType MapType1Type) BoxType))) (= (type r@@13) (MapType0Type (MapType0Type refType MapType1Type) boolType))) (= (type rd@@4) (MapType0Type (MapType0Type refType MapType1Type) (MapType0Type BoxType boolType)))) (U_2_bool (MapType0Select r@@13 heap@@10))) (Requires0 t0@@42 heap@@10 (Handle0 h@@28 r@@13 rd@@4)))
 :qid |assertbpl.2329:15|
 :skolemid |418|
 :pattern ( (Requires0 t0@@42 heap@@10 (Handle0 h@@28 r@@13 rd@@4)))
)))
(assert (forall ((s@@46 T@U) (x@@55 T@U) (n@@27 T@U) ) (! (let ((T@@143 (type x@@55)))
 (=> (and (and (= (type s@@46) (MapType0Type T@@143 intType)) (= (type n@@27) intType)) (<= 0 (U_2_int n@@27))) (= (|MultiSet#Card| (MapType0Store s@@46 x@@55 n@@27)) (+ (- (|MultiSet#Card| s@@46) (U_2_int (MapType0Select s@@46 x@@55))) (U_2_int n@@27)))))
 :qid |assertbpl.1013:18|
 :skolemid |185|
 :pattern ( (|MultiSet#Card| (MapType0Store s@@46 x@@55 n@@27)))
)))
(assert (forall ((a@@93 T@U) (b@@60 T@U) (o@@54 T@U) ) (! (let ((T@@144 (type o@@54)))
 (=> (and (= (type a@@93) (MapType0Type T@@144 boolType)) (= (type b@@60) (MapType0Type T@@144 boolType))) (= (U_2_bool (MapType0Select (|Set#Union| a@@93 b@@60) o@@54))  (or (U_2_bool (MapType0Select a@@93 o@@54)) (U_2_bool (MapType0Select b@@60 o@@54))))))
 :qid |assertbpl.809:18|
 :skolemid |135|
 :pattern ( (MapType0Select (|Set#Union| a@@93 b@@60) o@@54))
)))
(assert (forall ((a@@94 T@U) (b@@61 T@U) (o@@55 T@U) ) (! (let ((T@@145 (type o@@55)))
 (=> (and (= (type a@@94) (MapType0Type T@@145 boolType)) (= (type b@@61) (MapType0Type T@@145 boolType))) (= (U_2_bool (MapType0Select (|ISet#Union| a@@94 b@@61) o@@55))  (or (U_2_bool (MapType0Select a@@94 o@@55)) (U_2_bool (MapType0Select b@@61 o@@55))))))
 :qid |assertbpl.912:18|
 :skolemid |159|
 :pattern ( (MapType0Select (|ISet#Union| a@@94 b@@61) o@@55))
)))
(assert (forall ((h@@29 T@U) (v@@39 T@U) ) (!  (=> (and (= (type h@@29) (MapType0Type refType MapType1Type)) (= (type v@@39) intType)) ($IsAlloc v@@39 TInt h@@29))
 :qid |assertbpl.320:15|
 :skolemid |60|
 :pattern ( ($IsAlloc v@@39 TInt h@@29))
)))
(assert (forall ((h@@30 T@U) (v@@40 T@U) ) (!  (=> (and (= (type h@@30) (MapType0Type refType MapType1Type)) (= (type v@@40) realType)) ($IsAlloc v@@40 TReal h@@30))
 :qid |assertbpl.322:15|
 :skolemid |61|
 :pattern ( ($IsAlloc v@@40 TReal h@@30))
)))
(assert (forall ((h@@31 T@U) (v@@41 T@U) ) (!  (=> (and (= (type h@@31) (MapType0Type refType MapType1Type)) (= (type v@@41) boolType)) ($IsAlloc v@@41 TBool h@@31))
 :qid |assertbpl.324:15|
 :skolemid |62|
 :pattern ( ($IsAlloc v@@41 TBool h@@31))
)))
(assert (forall ((h@@32 T@U) (v@@42 T@U) ) (!  (=> (and (= (type h@@32) (MapType0Type refType MapType1Type)) (= (type v@@42) charType)) ($IsAlloc v@@42 TChar h@@32))
 :qid |assertbpl.326:15|
 :skolemid |63|
 :pattern ( ($IsAlloc v@@42 TChar h@@32))
)))
(assert (forall ((h@@33 T@U) (v@@43 T@U) ) (!  (=> (and (= (type h@@33) (MapType0Type refType MapType1Type)) (= (type v@@43) BoxType)) ($IsAlloc v@@43 TORDINAL h@@33))
 :qid |assertbpl.328:15|
 :skolemid |64|
 :pattern ( ($IsAlloc v@@43 TORDINAL h@@33))
)))
(assert (forall ((s@@47 T@U) (i@@22 Int) (v@@44 T@U) (n@@28 Int) ) (! (let ((T@@146 (type v@@44)))
 (=> (= (type s@@47) (SeqType T@@146)) (=> (and (and (<= 0 i@@22) (< i@@22 n@@28)) (<= n@@28 (|Seq#Length| s@@47))) (= (|Seq#Take| (|Seq#Update| s@@47 i@@22 v@@44) n@@28) (|Seq#Update| (|Seq#Take| s@@47 n@@28) i@@22 v@@44)))))
 :qid |assertbpl.1374:18|
 :skolemid |261|
 :pattern ( (|Seq#Take| (|Seq#Update| s@@47 i@@22 v@@44) n@@28))
)))
(assert (forall ((v@@45 T@U) (t0@@43 T@U) ) (!  (=> (and (= (type v@@45) (SeqType BoxType)) (= (type t0@@43) TyType)) (= ($Is v@@45 (TSeq t0@@43)) (forall ((i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 (|Seq#Length| v@@45))) ($IsBox (|Seq#Index| v@@45 i@@23) t0@@43))
 :qid |assertbpl.286:19|
 :skolemid |52|
 :pattern ( (|Seq#Index| v@@45 i@@23))
))))
 :qid |assertbpl.283:15|
 :skolemid |53|
 :pattern ( ($Is v@@45 (TSeq t0@@43)))
)))
(assert (forall ((|#$R@@27| T@U) (|f#0@@6| T@U) ) (!  (=> (and (= (type |#$R@@27|) TyType) (= (type |f#0@@6|) HandleTypeType)) (= ($Is |f#0@@6| (Tclass._System.___hPartialFunc0 |#$R@@27|))  (and ($Is |f#0@@6| (Tclass._System.___hFunc0 |#$R@@27|)) (|Set#Equal| (Reads0 |#$R@@27| $OneHeap |f#0@@6|) (|Set#Empty| BoxType)))))
 :qid |assertbpl.2490:15|
 :skolemid |444|
 :pattern ( ($Is |f#0@@6| (Tclass._System.___hPartialFunc0 |#$R@@27|)))
)))
(assert (forall ((s@@48 T@U) (i@@24 Int) ) (!  (=> (= (type s@@48) (SeqType BoxType)) (=> (and (<= 0 i@@24) (< i@@24 (|Seq#Length| s@@48))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@48 i@@24))) (|Seq#Rank| s@@48))))
 :qid |assertbpl.1407:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@48 i@@24))))
)))
(assert (forall ((v@@46 T@U) (t0@@44 T@U) (t1@@20 T@U) ) (!  (=> (and (and (and (= (type v@@46) (MapType BoxType BoxType)) (= (type t0@@44) TyType)) (= (type t1@@20) TyType)) ($Is v@@46 (TMap t0@@44 t1@@20))) (and (and ($Is (|Map#Domain| v@@46) (TSet t0@@44)) ($Is (|Map#Values| v@@46) (TSet t1@@20))) ($Is (|Map#Items| v@@46) (TSet (Tclass._System.Tuple2 t0@@44 t1@@20)))))
 :qid |assertbpl.297:15|
 :skolemid |56|
 :pattern ( ($Is v@@46 (TMap t0@@44 t1@@20)))
)))
(assert (forall ((v@@47 T@U) (t0@@45 T@U) (t1@@21 T@U) ) (!  (=> (and (and (and (= (type v@@47) (IMapType BoxType BoxType)) (= (type t0@@45) TyType)) (= (type t1@@21) TyType)) ($Is v@@47 (TIMap t0@@45 t1@@21))) (and (and ($Is (|IMap#Domain| v@@47) (TISet t0@@45)) ($Is (|IMap#Values| v@@47) (TISet t1@@21))) ($Is (|IMap#Items| v@@47) (TISet (Tclass._System.Tuple2 t0@@45 t1@@21)))))
 :qid |assertbpl.311:15|
 :skolemid |59|
 :pattern ( ($Is v@@47 (TIMap t0@@45 t1@@21)))
)))
(assert (forall ((v@@48 T@U) ) (!  (=> (= (type v@@48) intType) ($Is v@@48 TInt))
 :qid |assertbpl.254:15|
 :skolemid |39|
 :pattern ( ($Is v@@48 TInt))
)))
(assert (forall ((v@@49 T@U) ) (!  (=> (= (type v@@49) realType) ($Is v@@49 TReal))
 :qid |assertbpl.256:15|
 :skolemid |40|
 :pattern ( ($Is v@@49 TReal))
)))
(assert (forall ((v@@50 T@U) ) (!  (=> (= (type v@@50) boolType) ($Is v@@50 TBool))
 :qid |assertbpl.258:15|
 :skolemid |41|
 :pattern ( ($Is v@@50 TBool))
)))
(assert (forall ((v@@51 T@U) ) (!  (=> (= (type v@@51) charType) ($Is v@@51 TChar))
 :qid |assertbpl.260:15|
 :skolemid |42|
 :pattern ( ($Is v@@51 TChar))
)))
(assert (forall ((v@@52 T@U) ) (!  (=> (= (type v@@52) BoxType) ($Is v@@52 TORDINAL))
 :qid |assertbpl.262:15|
 :skolemid |43|
 :pattern ( ($Is v@@52 TORDINAL))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_Frame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |##x#0@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(assert  (and (= (type $_Frame@0) (MapType2Type refType boolType)) (= (type $Heap) (MapType0Type refType MapType1Type))))
(set-info :boogie-vc-id Impl$$_module.__default.m)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= $_Frame@0 (|lambda#0| null $Heap alloc false)) (= |##x#0@0| (LitInt 3))) (=> (and (and ($IsAlloc (int_2_U |##x#0@0|) TInt $Heap) (|_module.__default.abs#canCall| (LitInt 3))) (and (|_module.__default.abs#canCall| (LitInt 3)) (= (ControlFlow 0 2) (- 0 1)))) (= (LitInt (_module.__default.abs (LitInt 3))) (LitInt 3))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
