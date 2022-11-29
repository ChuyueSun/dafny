(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(set-info :category "industrial")
(declare-sort |T@U| 0)
(declare-sort |T@T| 0)
(declare-fun real_pow (Real Real) Real)
(declare-fun UOrdering2 (|T@U| |T@U|) Bool)
(declare-fun UOrdering3 (|T@T| |T@U| |T@U|) Bool)
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
(declare-fun regex_2_U ((RegLan   String)) T@U)
(declare-fun U_2_regex (T@U) (RegLan   String))
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
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.__default () T@U)
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
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_System._tuple#0._#Make0| () T@U)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun |ISet#Union| (T@U T@U) T@U)
(declare-fun |ISet#Intersection| (T@U T@U) T@U)
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
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MultiIndexField (T@U Int) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun AtLayer (T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun |MultiSet#Empty| (T@T) T@U)
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
(declare-fun MapType2Type (T@T T@T T@T) T@T)
(declare-fun MapType2Select (T@U T@U T@U) T@U)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2TypeInv1 (T@T) T@T)
(declare-fun MapType2TypeInv2 (T@T) T@T)
(declare-fun MapType2Store (T@U T@U T@U T@U) T@U)
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
(declare-fun TSeq (T@U) T@U)
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
))) (forall ((arg0@@9 (RegLan   String)) ) (! (= (U_2_regex (regex_2_U arg0@@9)) arg0@@9)
 :qid |typeInv:U_2_regex|
 :pattern ( (regex_2_U arg0@@9))
))) (forall ((x@@4 T@U) ) (!  (=> (= (type x@@4) regexType) (= (regex_2_U (U_2_regex x@@4)) x@@4))
 :qid |cast:U_2_regex|
 :pattern ( (U_2_regex x@@4))
))) (forall ((arg0@@10 (RegLan   String)) ) (! (= (type (regex_2_U arg0@@10)) regexType)
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
 :qid |seqgeneratedreferencebpl.1340:19|
 :skolemid |238|
 :pattern ( (MapType0Select (|Map#Domain| m@@2) o))
 :pattern ( (MapType0Select (|Map#Domain| |m'|) o))
))))))
 :qid |seqgeneratedreferencebpl.1337:20|
 :skolemid |239|
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
 :qid |seqgeneratedreferencebpl.1909:15|
 :skolemid |323|
 :pattern ( (Requires1 t0 t1 $OneHeap f bx0) ($IsGoodHeap heap))
 :pattern ( (Requires1 t0 t1 heap f bx0))
)))
(assert (forall ((arg0@@28 Int) ) (! (= (type (TBitvector arg0@@28)) TyType)
 :qid |funType:TBitvector|
 :pattern ( (TBitvector arg0@@28))
)))
(assert (forall ((v T@U) (h T@U) ) (!  (=> (and (= (type v) intType) (= (type h) (MapType0Type refType MapType1Type))) ($IsAlloc v (TBitvector 0) h))
 :qid |seqgeneratedreferencebpl.332:15|
 :skolemid |63|
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
 :qid |seqgeneratedreferencebpl.1680:15|
 :skolemid |296|
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
 :qid |seqgeneratedreferencebpl.1093:18|
 :skolemid |198|
 :pattern ( (|MultiSet#Card| (|MultiSet#Difference| a b)))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> (and (and (= (type h@@0) (MapType0Type refType MapType1Type)) (= (type k) (MapType0Type refType MapType1Type))) ($HeapSucc h@@0 k)) (forall ((o@@0 T@U) ) (!  (=> (and (= (type o@@0) refType) (U_2_bool (MapType1Select (MapType0Select h@@0 o@@0) alloc))) (U_2_bool (MapType1Select (MapType0Select k o@@0) alloc)))
 :qid |seqgeneratedreferencebpl.702:18|
 :skolemid |113|
 :pattern ( (MapType1Select (MapType0Select k o@@0) alloc))
)))
 :qid |seqgeneratedreferencebpl.699:15|
 :skolemid |114|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((_System.array$arg@@0 T@U) ($o@@0 T@U) ($h T@U) ) (!  (=> (and (and (= (type _System.array$arg@@0) TyType) (= (type $o@@0) refType)) (= (type $h) (MapType0Type refType MapType1Type))) (= ($IsAlloc $o@@0 (Tclass._System.array? _System.array$arg@@0) $h)  (or (= $o@@0 null) (U_2_bool (MapType1Select (MapType0Select $h $o@@0) alloc)))))
 :qid |seqgeneratedreferencebpl.1674:15|
 :skolemid |295|
 :pattern ( ($IsAlloc $o@@0 (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (forall ((o@@1 T@U) (p T@U) (r T@U) ) (!  (=> (and (and (and (= (type o@@1) BoxType) (= (type p) BoxType)) (= (type r) BoxType)) (and (|ORD#Less| o@@1 p) (|ORD#Less| p r))) (|ORD#Less| o@@1 r))
 :qid |seqgeneratedreferencebpl.483:15|
 :skolemid |85|
 :pattern ( (|ORD#Less| o@@1 p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o@@1 p) (|ORD#Less| o@@1 r))
)))
(assert (= (type Tclass._System.nat) TyType))
(assert (forall ((|x#0| T@U) ($h@@0 T@U) ) (!  (=> (and (= (type |x#0|) intType) (= (type $h@@0) (MapType0Type refType MapType1Type))) ($IsAlloc |x#0| Tclass._System.nat $h@@0))
 :qid |seqgeneratedreferencebpl.1558:15|
 :skolemid |282|
 :pattern ( ($IsAlloc |x#0| Tclass._System.nat $h@@0))
)))
(assert (= (Ctor DatatypeTypeType) 19))
(assert (forall ((d T@U) ) (!  (=> (and (= (type d) DatatypeTypeType) (|$IsA#_System.Tuple2| d)) (_System.Tuple2.___hMake2_q d))
 :qid |seqgeneratedreferencebpl.2431:15|
 :skolemid |404|
 :pattern ( (|$IsA#_System.Tuple2| d))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> (and (= (type d@@0) DatatypeTypeType) (|$IsA#_System.Tuple0| d@@0)) (_System.Tuple0.___hMake0_q d@@0))
 :qid |seqgeneratedreferencebpl.2511:15|
 :skolemid |412|
 :pattern ( (|$IsA#_System.Tuple0| d@@0))
)))
(assert (= (type Tclass._System.object?) TyType))
(assert (forall (($o@@1 T@U) ($h@@1 T@U) ) (!  (=> (and (= (type $o@@1) refType) (= (type $h@@1) (MapType0Type refType MapType1Type))) (= ($IsAlloc $o@@1 Tclass._System.object? $h@@1)  (or (= $o@@1 null) (U_2_bool (MapType1Select (MapType0Select $h@@1 $o@@1) alloc)))))
 :qid |seqgeneratedreferencebpl.1582:15|
 :skolemid |285|
 :pattern ( ($IsAlloc $o@@1 Tclass._System.object? $h@@1))
)))
(assert (= (type Tclass._module.__default) TyType))
(assert (forall (($o@@2 T@U) ($h@@2 T@U) ) (!  (=> (and (= (type $o@@2) refType) (= (type $h@@2) (MapType0Type refType MapType1Type))) (= ($IsAlloc $o@@2 Tclass._module.__default $h@@2)  (or (= $o@@2 null) (U_2_bool (MapType1Select (MapType0Select $h@@2 $o@@2) alloc)))))
 :qid |seqgeneratedreferencebpl.2558:15|
 :skolemid |418|
 :pattern ( ($IsAlloc $o@@2 Tclass._module.__default $h@@2))
)))
(assert  (and (and (forall ((arg0@@34 T@U) ) (! (= (type (Tclass._System.___hFunc0 arg0@@34)) TyType)
 :qid |funType:Tclass._System.___hFunc0|
 :pattern ( (Tclass._System.___hFunc0 arg0@@34))
)) (forall ((arg0@@35 T@U) (arg1@@14 T@U) (arg2@@2 T@U) ) (! (= (type (Reads0 arg0@@35 arg1@@14 arg2@@2)) (MapType0Type BoxType boolType))
 :qid |funType:Reads0|
 :pattern ( (Reads0 arg0@@35 arg1@@14 arg2@@2))
))) (forall ((arg0@@36 T@U) ) (! (= (type ($Box arg0@@36)) BoxType)
 :qid |funType:$Box|
 :pattern ( ($Box arg0@@36))
))))
(assert (forall ((t0@@0 T@U) (h0 T@U) (h1 T@U) (f@@0 T@U) ) (!  (=> (and (and (and (= (type t0@@0) TyType) (= (type h0) (MapType0Type refType MapType1Type))) (= (type h1) (MapType0Type refType MapType1Type))) (= (type f@@0) HandleTypeType)) (=> (and (and (and (and ($HeapSucc h0 h1) ($IsGoodHeap h0)) ($IsGoodHeap h1)) ($Is f@@0 (Tclass._System.___hFunc0 t0@@0))) (forall ((o@@2 T@U) (fld T@U) ) (! (let ((a@@0 (FieldTypeInv0 (type fld))))
 (=> (and (and (= (type o@@2) refType) (= (type fld) (FieldType a@@0))) (and (not (= o@@2 null)) (U_2_bool (MapType0Select (Reads0 t0@@0 h0 f@@0) ($Box o@@2))))) (= (MapType1Select (MapType0Select h0 o@@2) fld) (MapType1Select (MapType0Select h1 o@@2) fld))))
 :qid |seqgeneratedreferencebpl.2139:22|
 :skolemid |358|
 :no-pattern (type o@@2)
 :no-pattern (type fld)
 :no-pattern (U_2_int o@@2)
 :no-pattern (U_2_bool o@@2)
 :no-pattern (U_2_int fld)
 :no-pattern (U_2_bool fld)
))) (= (Requires0 t0@@0 h0 f@@0) (Requires0 t0@@0 h1 f@@0))))
 :qid |seqgeneratedreferencebpl.2132:15|
 :skolemid |359|
 :pattern ( ($HeapSucc h0 h1) (Requires0 t0@@0 h1 f@@0))
)))
(assert (forall ((t0@@1 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@1 T@U) ) (!  (=> (and (and (and (= (type t0@@1) TyType) (= (type h0@@0) (MapType0Type refType MapType1Type))) (= (type h1@@0) (MapType0Type refType MapType1Type))) (= (type f@@1) HandleTypeType)) (=> (and (and (and (and ($HeapSucc h0@@0 h1@@0) ($IsGoodHeap h0@@0)) ($IsGoodHeap h1@@0)) ($Is f@@1 (Tclass._System.___hFunc0 t0@@1))) (forall ((o@@3 T@U) (fld@@0 T@U) ) (! (let ((a@@1 (FieldTypeInv0 (type fld@@0))))
 (=> (and (and (= (type o@@3) refType) (= (type fld@@0) (FieldType a@@1))) (and (not (= o@@3 null)) (U_2_bool (MapType0Select (Reads0 t0@@1 h1@@0 f@@1) ($Box o@@3))))) (= (MapType1Select (MapType0Select h0@@0 o@@3) fld@@0) (MapType1Select (MapType0Select h1@@0 o@@3) fld@@0))))
 :qid |seqgeneratedreferencebpl.2151:22|
 :skolemid |360|
 :no-pattern (type o@@3)
 :no-pattern (type fld@@0)
 :no-pattern (U_2_int o@@3)
 :no-pattern (U_2_bool o@@3)
 :no-pattern (U_2_int fld@@0)
 :no-pattern (U_2_bool fld@@0)
))) (= (Requires0 t0@@1 h0@@0 f@@1) (Requires0 t0@@1 h1@@0 f@@1))))
 :qid |seqgeneratedreferencebpl.2144:15|
 :skolemid |361|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires0 t0@@1 h1@@0 f@@1))
)))
(assert (forall ((arg0@@37 T@U) (arg1@@15 T@U) (arg2@@3 T@U) ) (! (let ((V@@0 (MapType0TypeInv1 (type arg1@@15))))
(let ((U@@1 (MapType0TypeInv0 (type arg0@@37))))
(= (type (|Map#Glue| arg0@@37 arg1@@15 arg2@@3)) (MapType U@@1 V@@0))))
 :qid |funType:Map#Glue|
 :pattern ( (|Map#Glue| arg0@@37 arg1@@15 arg2@@3))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (t T@U) ) (! (let ((V@@1 (MapType0TypeInv1 (type b@@0))))
(let ((U@@2 (MapType0TypeInv0 (type a@@2))))
 (=> (and (and (= (type a@@2) (MapType0Type U@@2 boolType)) (= (type b@@0) (MapType0Type U@@2 V@@1))) (= (type t) TyType)) (= (|Map#Domain| (|Map#Glue| a@@2 b@@0 t)) a@@2))))
 :qid |seqgeneratedreferencebpl.1269:20|
 :skolemid |223|
 :pattern ( (|Map#Domain| (|Map#Glue| a@@2 b@@0 t)))
)))
(assert (forall ((arg0@@38 T@U) ) (! (let ((V@@2 (MapTypeInv1 (type arg0@@38))))
(let ((U@@3 (MapTypeInv0 (type arg0@@38))))
(= (type (|Map#Elements| arg0@@38)) (MapType0Type U@@3 V@@2))))
 :qid |funType:Map#Elements|
 :pattern ( (|Map#Elements| arg0@@38))
)))
(assert (forall ((a@@3 T@U) (b@@1 T@U) (t@@0 T@U) ) (! (let ((V@@3 (MapType0TypeInv1 (type b@@1))))
(let ((U@@4 (MapType0TypeInv0 (type a@@3))))
 (=> (and (and (= (type a@@3) (MapType0Type U@@4 boolType)) (= (type b@@1) (MapType0Type U@@4 V@@3))) (= (type t@@0) TyType)) (= (|Map#Elements| (|Map#Glue| a@@3 b@@1 t@@0)) b@@1))))
 :qid |seqgeneratedreferencebpl.1273:20|
 :skolemid |224|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@3 b@@1 t@@0)))
)))
(assert  (and (and (and (and (forall ((arg0@@39 T@T) (arg1@@16 T@T) ) (! (= (Ctor (IMapType arg0@@39 arg1@@16)) 20)
 :qid |ctor:IMapType|
)) (forall ((arg0@@40 T@T) (arg1@@17 T@T) ) (! (= (IMapTypeInv0 (IMapType arg0@@40 arg1@@17)) arg0@@40)
 :qid |typeInv:IMapTypeInv0|
 :pattern ( (IMapType arg0@@40 arg1@@17))
))) (forall ((arg0@@41 T@T) (arg1@@18 T@T) ) (! (= (IMapTypeInv1 (IMapType arg0@@41 arg1@@18)) arg1@@18)
 :qid |typeInv:IMapTypeInv1|
 :pattern ( (IMapType arg0@@41 arg1@@18))
))) (forall ((arg0@@42 T@U) ) (! (let ((U@@5 (IMapTypeInv0 (type arg0@@42))))
(= (type (|IMap#Domain| arg0@@42)) (MapType0Type U@@5 boolType)))
 :qid |funType:IMap#Domain|
 :pattern ( (|IMap#Domain| arg0@@42))
))) (forall ((arg0@@43 T@U) (arg1@@19 T@U) (arg2@@4 T@U) ) (! (let ((V@@4 (MapType0TypeInv1 (type arg1@@19))))
(let ((U@@6 (MapType0TypeInv0 (type arg0@@43))))
(= (type (|IMap#Glue| arg0@@43 arg1@@19 arg2@@4)) (IMapType U@@6 V@@4))))
 :qid |funType:IMap#Glue|
 :pattern ( (|IMap#Glue| arg0@@43 arg1@@19 arg2@@4))
))))
(assert (forall ((a@@4 T@U) (b@@2 T@U) (t@@1 T@U) ) (! (let ((V@@5 (MapType0TypeInv1 (type b@@2))))
(let ((U@@7 (MapType0TypeInv0 (type a@@4))))
 (=> (and (and (= (type a@@4) (MapType0Type U@@7 boolType)) (= (type b@@2) (MapType0Type U@@7 V@@5))) (= (type t@@1) TyType)) (= (|IMap#Domain| (|IMap#Glue| a@@4 b@@2 t@@1)) a@@4))))
 :qid |seqgeneratedreferencebpl.1401:20|
 :skolemid |253|
 :pattern ( (|IMap#Domain| (|IMap#Glue| a@@4 b@@2 t@@1)))
)))
(assert (forall ((arg0@@44 T@U) ) (! (let ((V@@6 (IMapTypeInv1 (type arg0@@44))))
(let ((U@@8 (IMapTypeInv0 (type arg0@@44))))
(= (type (|IMap#Elements| arg0@@44)) (MapType0Type U@@8 V@@6))))
 :qid |funType:IMap#Elements|
 :pattern ( (|IMap#Elements| arg0@@44))
)))
(assert (forall ((a@@5 T@U) (b@@3 T@U) (t@@2 T@U) ) (! (let ((V@@7 (MapType0TypeInv1 (type b@@3))))
(let ((U@@9 (MapType0TypeInv0 (type a@@5))))
 (=> (and (and (= (type a@@5) (MapType0Type U@@9 boolType)) (= (type b@@3) (MapType0Type U@@9 V@@7))) (= (type t@@2) TyType)) (= (|IMap#Elements| (|IMap#Glue| a@@5 b@@3 t@@2)) b@@3))))
 :qid |seqgeneratedreferencebpl.1405:20|
 :skolemid |254|
 :pattern ( (|IMap#Elements| (|IMap#Glue| a@@5 b@@3 t@@2)))
)))
(assert (forall ((v@@0 T@U) ) (!  (=> (= (type v@@0) intType) ($Is v@@0 (TBitvector 0)))
 :qid |seqgeneratedreferencebpl.264:15|
 :skolemid |44|
 :pattern ( ($Is v@@0 (TBitvector 0)))
)))
(assert (forall ((a@@6 Int) (b@@4 Int) ) (!  (or (= (|Math#min| a@@6 b@@4) a@@6) (= (|Math#min| a@@6 b@@4) b@@4))
 :qid |seqgeneratedreferencebpl.988:15|
 :skolemid |174|
 :pattern ( (|Math#min| a@@6 b@@4))
)))
(assert (forall ((arg0@@45 T@U) ) (! (= (type (Tclass._System.array arg0@@45)) TyType)
 :qid |funType:Tclass._System.array|
 :pattern ( (Tclass._System.array arg0@@45))
)))
(assert (forall ((_System.array$arg@@1 T@U) (|c#0| T@U) ($h@@3 T@U) ) (!  (=> (and (and (= (type _System.array$arg@@1) TyType) (= (type |c#0|) refType)) (= (type $h@@3) (MapType0Type refType MapType1Type))) (= ($IsAlloc |c#0| (Tclass._System.array _System.array$arg@@1) $h@@3) ($IsAlloc |c#0| (Tclass._System.array? _System.array$arg@@1) $h@@3)))
 :qid |seqgeneratedreferencebpl.1727:15|
 :skolemid |302|
 :pattern ( ($IsAlloc |c#0| (Tclass._System.array _System.array$arg@@1) $h@@3))
)))
(assert (forall ((arg0@@46 T@U) ) (! (= (type (Tclass._System.___hPartialFunc0 arg0@@46)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc0|
 :pattern ( (Tclass._System.___hPartialFunc0 arg0@@46))
)))
(assert (forall ((|#$R| T@U) (|f#0| T@U) ($h@@4 T@U) ) (!  (=> (and (and (= (type |#$R|) TyType) (= (type |f#0|) HandleTypeType)) (= (type $h@@4) (MapType0Type refType MapType1Type))) (= ($IsAlloc |f#0| (Tclass._System.___hPartialFunc0 |#$R|) $h@@4) ($IsAlloc |f#0| (Tclass._System.___hFunc0 |#$R|) $h@@4)))
 :qid |seqgeneratedreferencebpl.2257:15|
 :skolemid |379|
 :pattern ( ($IsAlloc |f#0| (Tclass._System.___hPartialFunc0 |#$R|) $h@@4))
)))
(assert (forall ((arg0@@47 T@U) ) (! (= (type (Tclass._System.___hTotalFunc0 arg0@@47)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc0|
 :pattern ( (Tclass._System.___hTotalFunc0 arg0@@47))
)))
(assert (forall ((|#$R@@0| T@U) (|f#0@@0| T@U) ($h@@5 T@U) ) (!  (=> (and (and (= (type |#$R@@0|) TyType) (= (type |f#0@@0|) HandleTypeType)) (= (type $h@@5) (MapType0Type refType MapType1Type))) (= ($IsAlloc |f#0@@0| (Tclass._System.___hTotalFunc0 |#$R@@0|) $h@@5) ($IsAlloc |f#0@@0| (Tclass._System.___hPartialFunc0 |#$R@@0|) $h@@5)))
 :qid |seqgeneratedreferencebpl.2293:15|
 :skolemid |384|
 :pattern ( ($IsAlloc |f#0@@0| (Tclass._System.___hTotalFunc0 |#$R@@0|) $h@@5))
)))
(assert  (and (forall ((arg0@@48 T@U) (arg1@@20 T@U) ) (! (= (type (|ORD#Minus| arg0@@48 arg1@@20)) BoxType)
 :qid |funType:ORD#Minus|
 :pattern ( (|ORD#Minus| arg0@@48 arg1@@20))
)) (forall ((arg0@@49 Int) ) (! (= (type (|ORD#FromNat| arg0@@49)) BoxType)
 :qid |funType:ORD#FromNat|
 :pattern ( (|ORD#FromNat| arg0@@49))
))))
(assert (forall ((o@@4 T@U) (m@@6 Int) (n Int) ) (!  (=> (= (type o@@4) BoxType) (=> (and (and (<= 0 m@@6) (<= 0 n)) (<= (+ m@@6 n) (|ORD#Offset| o@@4))) (= (|ORD#Minus| (|ORD#Minus| o@@4 (|ORD#FromNat| m@@6)) (|ORD#FromNat| n)) (|ORD#Minus| o@@4 (|ORD#FromNat| (+ m@@6 n))))))
 :qid |seqgeneratedreferencebpl.532:15|
 :skolemid |93|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@4 (|ORD#FromNat| m@@6)) (|ORD#FromNat| n)))
)))
(assert (forall ((arg0@@50 T@U) (arg1@@21 T@U) ) (! (= (type (Tclass._System.Tuple2 arg0@@50 arg1@@21)) TyType)
 :qid |funType:Tclass._System.Tuple2|
 :pattern ( (Tclass._System.Tuple2 arg0@@50 arg1@@21))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@1 T@U) ) (!  (=> (and (and (and (= (type |_System._tuple#2$T0|) TyType) (= (type |_System._tuple#2$T1|) TyType)) (= (type d@@1) DatatypeTypeType)) ($Is d@@1 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|))) (_System.Tuple2.___hMake2_q d@@1))
 :qid |seqgeneratedreferencebpl.2436:15|
 :skolemid |405|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1) ($Is d@@1 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert  (and (forall ((arg0@@51 T@U) ) (! (= (type (_System.Tuple2._0 arg0@@51)) BoxType)
 :qid |funType:_System.Tuple2._0|
 :pattern ( (_System.Tuple2._0 arg0@@51))
)) (forall ((arg0@@52 T@U) ) (! (= (type (_System.Tuple2._1 arg0@@52)) BoxType)
 :qid |funType:_System.Tuple2._1|
 :pattern ( (_System.Tuple2._1 arg0@@52))
))))
(assert (forall ((a@@7 T@U) (b@@5 T@U) ) (!  (=> (and (and (= (type a@@7) DatatypeTypeType) (= (type b@@5) DatatypeTypeType)) true) (= (|_System.Tuple2#Equal| a@@7 b@@5)  (and (= (_System.Tuple2._0 a@@7) (_System.Tuple2._0 b@@5)) (= (_System.Tuple2._1 a@@7) (_System.Tuple2._1 b@@5)))))
 :qid |seqgeneratedreferencebpl.2445:15|
 :skolemid |406|
 :pattern ( (|_System.Tuple2#Equal| a@@7 b@@5))
)))
(assert  (and (forall ((arg0@@53 T@U) ) (! (= (type (DatatypeCtorId arg0@@53)) DtCtorIdType)
 :qid |funType:DatatypeCtorId|
 :pattern ( (DatatypeCtorId arg0@@53))
)) (= (type |#_System._tuple#0._#Make0|) DatatypeTypeType)))
(assert (= (DatatypeCtorId |#_System._tuple#0._#Make0|) |##_System._tuple#0._#Make0|))
(assert (forall ((arg0@@54 T@U) ) (! (= (type (TMultiSet arg0@@54)) TyType)
 :qid |funType:TMultiSet|
 :pattern ( (TMultiSet arg0@@54))
)))
(assert (forall ((v@@1 T@U) (t0@@2 T@U) ) (!  (=> (and (and (= (type v@@1) (MapType0Type BoxType intType)) (= (type t0@@2) TyType)) ($Is v@@1 (TMultiSet t0@@2))) ($IsGoodMultiSet v@@1))
 :qid |seqgeneratedreferencebpl.279:15|
 :skolemid |51|
 :pattern ( ($Is v@@1 (TMultiSet t0@@2)))
)))
(assert (forall (($o@@3 T@U) ) (!  (=> (= (type $o@@3) refType) (= ($Is $o@@3 Tclass._module.__default)  (or (= $o@@3 null) (= (dtype $o@@3) Tclass._module.__default))))
 :qid |seqgeneratedreferencebpl.2552:15|
 :skolemid |417|
 :pattern ( ($Is $o@@3 Tclass._module.__default))
)))
(assert (forall ((arg0@@55 T@U) (arg1@@22 T@U) ) (! (let ((T@@4 (MapType0TypeInv0 (type arg0@@55))))
(= (type (|Set#Union| arg0@@55 arg1@@22)) (MapType0Type T@@4 boolType)))
 :qid |funType:Set#Union|
 :pattern ( (|Set#Union| arg0@@55 arg1@@22))
)))
(assert (forall ((a@@8 T@U) (b@@6 T@U) ) (! (let ((T@@5 (MapType0TypeInv0 (type a@@8))))
 (=> (and (= (type a@@8) (MapType0Type T@@5 boolType)) (= (type b@@6) (MapType0Type T@@5 boolType))) (= (|Set#Union| (|Set#Union| a@@8 b@@6) b@@6) (|Set#Union| a@@8 b@@6))))
 :qid |seqgeneratedreferencebpl.831:18|
 :skolemid |135|
 :pattern ( (|Set#Union| (|Set#Union| a@@8 b@@6) b@@6))
)))
(assert (forall ((arg0@@56 T@U) (arg1@@23 T@U) ) (! (let ((T@@6 (MapType0TypeInv0 (type arg0@@56))))
(= (type (|Set#Intersection| arg0@@56 arg1@@23)) (MapType0Type T@@6 boolType)))
 :qid |funType:Set#Intersection|
 :pattern ( (|Set#Intersection| arg0@@56 arg1@@23))
)))
(assert (forall ((a@@9 T@U) (b@@7 T@U) ) (! (let ((T@@7 (MapType0TypeInv0 (type a@@9))))
 (=> (and (= (type a@@9) (MapType0Type T@@7 boolType)) (= (type b@@7) (MapType0Type T@@7 boolType))) (= (|Set#Intersection| (|Set#Intersection| a@@9 b@@7) b@@7) (|Set#Intersection| a@@9 b@@7))))
 :qid |seqgeneratedreferencebpl.839:18|
 :skolemid |137|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@9 b@@7) b@@7))
)))
(assert (forall ((arg0@@57 T@U) (arg1@@24 T@U) ) (! (let ((T@@8 (MapType0TypeInv0 (type arg0@@57))))
(= (type (|ISet#Union| arg0@@57 arg1@@24)) (MapType0Type T@@8 boolType)))
 :qid |funType:ISet#Union|
 :pattern ( (|ISet#Union| arg0@@57 arg1@@24))
)))
(assert (forall ((a@@10 T@U) (b@@8 T@U) ) (! (let ((T@@9 (MapType0TypeInv0 (type a@@10))))
 (=> (and (= (type a@@10) (MapType0Type T@@9 boolType)) (= (type b@@8) (MapType0Type T@@9 boolType))) (= (|ISet#Union| (|ISet#Union| a@@10 b@@8) b@@8) (|ISet#Union| a@@10 b@@8))))
 :qid |seqgeneratedreferencebpl.934:18|
 :skolemid |159|
 :pattern ( (|ISet#Union| (|ISet#Union| a@@10 b@@8) b@@8))
)))
(assert (forall ((arg0@@58 T@U) (arg1@@25 T@U) ) (! (let ((T@@10 (MapType0TypeInv0 (type arg0@@58))))
(= (type (|ISet#Intersection| arg0@@58 arg1@@25)) (MapType0Type T@@10 boolType)))
 :qid |funType:ISet#Intersection|
 :pattern ( (|ISet#Intersection| arg0@@58 arg1@@25))
)))
(assert (forall ((a@@11 T@U) (b@@9 T@U) ) (! (let ((T@@11 (MapType0TypeInv0 (type a@@11))))
 (=> (and (= (type a@@11) (MapType0Type T@@11 boolType)) (= (type b@@9) (MapType0Type T@@11 boolType))) (= (|ISet#Intersection| (|ISet#Intersection| a@@11 b@@9) b@@9) (|ISet#Intersection| a@@11 b@@9))))
 :qid |seqgeneratedreferencebpl.942:18|
 :skolemid |161|
 :pattern ( (|ISet#Intersection| (|ISet#Intersection| a@@11 b@@9) b@@9))
)))
(assert (forall ((a@@12 T@U) (b@@10 T@U) ) (! (let ((T@@12 (MapType0TypeInv0 (type a@@12))))
 (=> (and (= (type a@@12) (MapType0Type T@@12 intType)) (= (type b@@10) (MapType0Type T@@12 intType))) (= (|MultiSet#Intersection| (|MultiSet#Intersection| a@@12 b@@10) b@@10) (|MultiSet#Intersection| a@@12 b@@10))))
 :qid |seqgeneratedreferencebpl.1073:18|
 :skolemid |194|
 :pattern ( (|MultiSet#Intersection| (|MultiSet#Intersection| a@@12 b@@10) b@@10))
)))
(assert (forall ((f@@2 T@U) (t0@@3 T@U) (t1@@0 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and (and (and (and (= (type f@@2) HandleTypeType) (= (type t0@@3) TyType)) (= (type t1@@0) TyType)) (= (type u0) TyType)) (= (type u1) TyType)) (and (and ($Is f@@2 (Tclass._System.___hFunc1 t0@@3 t1@@0)) (forall ((bx T@U) ) (!  (=> (and (= (type bx) BoxType) ($IsBox bx u0)) ($IsBox bx t0@@3))
 :qid |seqgeneratedreferencebpl.1930:19|
 :skolemid |326|
 :pattern ( ($IsBox bx u0))
 :pattern ( ($IsBox bx t0@@3))
))) (forall ((bx@@0 T@U) ) (!  (=> (and (= (type bx@@0) BoxType) ($IsBox bx@@0 t1@@0)) ($IsBox bx@@0 u1))
 :qid |seqgeneratedreferencebpl.1933:19|
 :skolemid |327|
 :pattern ( ($IsBox bx@@0 t1@@0))
 :pattern ( ($IsBox bx@@0 u1))
)))) ($Is f@@2 (Tclass._System.___hFunc1 u0 u1)))
 :qid |seqgeneratedreferencebpl.1927:15|
 :skolemid |328|
 :pattern ( ($Is f@@2 (Tclass._System.___hFunc1 t0@@3 t1@@0)) ($Is f@@2 (Tclass._System.___hFunc1 u0 u1)))
)))
(assert (= (type Tclass._System.object) TyType))
(assert (forall ((|c#0@@0| T@U) ($h@@6 T@U) ) (!  (=> (and (= (type |c#0@@0|) refType) (= (type $h@@6) (MapType0Type refType MapType1Type))) (= ($IsAlloc |c#0@@0| Tclass._System.object $h@@6) ($IsAlloc |c#0@@0| Tclass._System.object? $h@@6)))
 :qid |seqgeneratedreferencebpl.1610:15|
 :skolemid |288|
 :pattern ( ($IsAlloc |c#0@@0| Tclass._System.object $h@@6))
)))
(assert (forall ((arg0@@59 T@U) (arg1@@26 T@U) (arg2@@5 T@U) ) (! (let ((V@@8 (type arg2@@5)))
(let ((U@@10 (type arg1@@26)))
(= (type (|Map#Build| arg0@@59 arg1@@26 arg2@@5)) (MapType U@@10 V@@8))))
 :qid |funType:Map#Build|
 :pattern ( (|Map#Build| arg0@@59 arg1@@26 arg2@@5))
)))
(assert (forall ((m@@7 T@U) (u T@U) (v@@2 T@U) ) (! (let ((V@@9 (type v@@2)))
(let ((U@@11 (type u)))
 (=> (and (= (type m@@7) (MapType U@@11 V@@9)) (U_2_bool (MapType0Select (|Map#Domain| m@@7) u))) (= (|Map#Card| (|Map#Build| m@@7 u v@@2)) (|Map#Card| m@@7)))))
 :qid |seqgeneratedreferencebpl.1292:20|
 :skolemid |228|
 :pattern ( (|Map#Card| (|Map#Build| m@@7 u v@@2)))
)))
(assert (forall ((arg0@@60 T@U) ) (! (let ((T@@13 (type arg0@@60)))
(= (type (|Set#Singleton| arg0@@60)) (MapType0Type T@@13 boolType)))
 :qid |funType:Set#Singleton|
 :pattern ( (|Set#Singleton| arg0@@60))
)))
(assert (forall ((r@@0 T@U) (o@@5 T@U) ) (! (let ((T@@14 (type r@@0)))
 (=> (= (type o@@5) T@@14) (= (U_2_bool (MapType0Select (|Set#Singleton| r@@0) o@@5)) (= r@@0 o@@5))))
 :qid |seqgeneratedreferencebpl.777:18|
 :skolemid |123|
 :pattern ( (MapType0Select (|Set#Singleton| r@@0) o@@5))
)))
(assert (= (type Tclass._System.Tuple0) TyType))
(assert (forall ((d@@2 T@U) ) (!  (=> (and (= (type d@@2) DatatypeTypeType) ($Is d@@2 Tclass._System.Tuple0)) (_System.Tuple0.___hMake0_q d@@2))
 :qid |seqgeneratedreferencebpl.2516:15|
 :skolemid |413|
 :pattern ( (_System.Tuple0.___hMake0_q d@@2) ($Is d@@2 Tclass._System.Tuple0))
)))
(assert (forall ((arg0@@61 Int) ) (! (= (type (IndexField arg0@@61)) (FieldType BoxType))
 :qid |funType:IndexField|
 :pattern ( (IndexField arg0@@61))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@7 T@U) ($o@@4 T@U) ($i0 Int) ) (!  (=> (and (and (= (type _System.array$arg@@2) TyType) (= (type $h@@7) (MapType0Type refType MapType1Type))) (= (type $o@@4) refType)) (=> (and (and (and (and (and ($IsGoodHeap $h@@7) (not (= $o@@4 null))) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@2))) (<= 0 $i0)) (< $i0 (_System.array.Length $o@@4))) (U_2_bool (MapType1Select (MapType0Select $h@@7 $o@@4) alloc))) ($IsAllocBox (MapType1Select (MapType0Select $h@@7 $o@@4) (IndexField $i0)) _System.array$arg@@2 $h@@7)))
 :qid |seqgeneratedreferencebpl.1655:15|
 :skolemid |293|
 :pattern ( (MapType1Select (MapType0Select $h@@7 $o@@4) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((arg0@@62 T@U) (arg1@@27 T@U) ) (! (= (type (|#_System._tuple#2._#Make2| arg0@@62 arg1@@27)) DatatypeTypeType)
 :qid |funType:#_System._tuple#2._#Make2|
 :pattern ( (|#_System._tuple#2._#Make2| arg0@@62 arg1@@27))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (!  (=> (and (and (and (= (type |_System._tuple#2$T0@@0|) TyType) (= (type |_System._tuple#2$T1@@0|) TyType)) (= (type |a#2#0#0|) BoxType)) (= (type |a#2#1#0|) BoxType)) (= ($Is (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|))))
 :qid |seqgeneratedreferencebpl.2356:15|
 :skolemid |393|
 :pattern ( ($Is (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((t0@@4 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@3 T@U) ) (!  (=> (and (and (and (= (type t0@@4) TyType) (= (type h0@@1) (MapType0Type refType MapType1Type))) (= (type h1@@1) (MapType0Type refType MapType1Type))) (= (type f@@3) HandleTypeType)) (=> (and (and (and (and ($HeapSucc h0@@1 h1@@1) ($IsGoodHeap h0@@1)) ($IsGoodHeap h1@@1)) ($Is f@@3 (Tclass._System.___hFunc0 t0@@4))) (forall ((o@@6 T@U) (fld@@1 T@U) ) (! (let ((a@@13 (FieldTypeInv0 (type fld@@1))))
 (=> (and (and (= (type o@@6) refType) (= (type fld@@1) (FieldType a@@13))) (and (not (= o@@6 null)) (U_2_bool (MapType0Select (Reads0 t0@@4 h0@@1 f@@3) ($Box o@@6))))) (= (MapType1Select (MapType0Select h0@@1 o@@6) fld@@1) (MapType1Select (MapType0Select h1@@1 o@@6) fld@@1))))
 :qid |seqgeneratedreferencebpl.2115:22|
 :skolemid |354|
 :no-pattern (type o@@6)
 :no-pattern (type fld@@1)
 :no-pattern (U_2_int o@@6)
 :no-pattern (U_2_bool o@@6)
 :no-pattern (U_2_int fld@@1)
 :no-pattern (U_2_bool fld@@1)
))) (= (Reads0 t0@@4 h0@@1 f@@3) (Reads0 t0@@4 h1@@1 f@@3))))
 :qid |seqgeneratedreferencebpl.2108:15|
 :skolemid |355|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads0 t0@@4 h1@@1 f@@3))
)))
(assert (forall ((t0@@5 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@4 T@U) ) (!  (=> (and (and (and (= (type t0@@5) TyType) (= (type h0@@2) (MapType0Type refType MapType1Type))) (= (type h1@@2) (MapType0Type refType MapType1Type))) (= (type f@@4) HandleTypeType)) (=> (and (and (and (and ($HeapSucc h0@@2 h1@@2) ($IsGoodHeap h0@@2)) ($IsGoodHeap h1@@2)) ($Is f@@4 (Tclass._System.___hFunc0 t0@@5))) (forall ((o@@7 T@U) (fld@@2 T@U) ) (! (let ((a@@14 (FieldTypeInv0 (type fld@@2))))
 (=> (and (and (= (type o@@7) refType) (= (type fld@@2) (FieldType a@@14))) (and (not (= o@@7 null)) (U_2_bool (MapType0Select (Reads0 t0@@5 h1@@2 f@@4) ($Box o@@7))))) (= (MapType1Select (MapType0Select h0@@2 o@@7) fld@@2) (MapType1Select (MapType0Select h1@@2 o@@7) fld@@2))))
 :qid |seqgeneratedreferencebpl.2127:22|
 :skolemid |356|
 :no-pattern (type o@@7)
 :no-pattern (type fld@@2)
 :no-pattern (U_2_int o@@7)
 :no-pattern (U_2_bool o@@7)
 :no-pattern (U_2_int fld@@2)
 :no-pattern (U_2_bool fld@@2)
))) (= (Reads0 t0@@5 h0@@2 f@@4) (Reads0 t0@@5 h1@@2 f@@4))))
 :qid |seqgeneratedreferencebpl.2120:15|
 :skolemid |357|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads0 t0@@5 h1@@2 f@@4))
)))
(assert (forall ((arg0@@63 T@U) (arg1@@28 T@U) (arg2@@6 T@U) ) (! (= (type (Apply0 arg0@@63 arg1@@28 arg2@@6)) BoxType)
 :qid |funType:Apply0|
 :pattern ( (Apply0 arg0@@63 arg1@@28 arg2@@6))
)))
(assert (forall ((t0@@6 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@5 T@U) ) (!  (=> (and (and (and (= (type t0@@6) TyType) (= (type h0@@3) (MapType0Type refType MapType1Type))) (= (type h1@@3) (MapType0Type refType MapType1Type))) (= (type f@@5) HandleTypeType)) (=> (and (and (and (and ($HeapSucc h0@@3 h1@@3) ($IsGoodHeap h0@@3)) ($IsGoodHeap h1@@3)) ($Is f@@5 (Tclass._System.___hFunc0 t0@@6))) (forall ((o@@8 T@U) (fld@@3 T@U) ) (! (let ((a@@15 (FieldTypeInv0 (type fld@@3))))
 (=> (and (and (= (type o@@8) refType) (= (type fld@@3) (FieldType a@@15))) (and (not (= o@@8 null)) (U_2_bool (MapType0Select (Reads0 t0@@6 h0@@3 f@@5) ($Box o@@8))))) (= (MapType1Select (MapType0Select h0@@3 o@@8) fld@@3) (MapType1Select (MapType0Select h1@@3 o@@8) fld@@3))))
 :qid |seqgeneratedreferencebpl.2163:22|
 :skolemid |362|
 :no-pattern (type o@@8)
 :no-pattern (type fld@@3)
 :no-pattern (U_2_int o@@8)
 :no-pattern (U_2_bool o@@8)
 :no-pattern (U_2_int fld@@3)
 :no-pattern (U_2_bool fld@@3)
))) (= (Apply0 t0@@6 h0@@3 f@@5) (Apply0 t0@@6 h1@@3 f@@5))))
 :qid |seqgeneratedreferencebpl.2156:15|
 :skolemid |363|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply0 t0@@6 h1@@3 f@@5))
)))
(assert (forall ((t0@@7 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@6 T@U) ) (!  (=> (and (and (and (= (type t0@@7) TyType) (= (type h0@@4) (MapType0Type refType MapType1Type))) (= (type h1@@4) (MapType0Type refType MapType1Type))) (= (type f@@6) HandleTypeType)) (=> (and (and (and (and ($HeapSucc h0@@4 h1@@4) ($IsGoodHeap h0@@4)) ($IsGoodHeap h1@@4)) ($Is f@@6 (Tclass._System.___hFunc0 t0@@7))) (forall ((o@@9 T@U) (fld@@4 T@U) ) (! (let ((a@@16 (FieldTypeInv0 (type fld@@4))))
 (=> (and (and (= (type o@@9) refType) (= (type fld@@4) (FieldType a@@16))) (and (not (= o@@9 null)) (U_2_bool (MapType0Select (Reads0 t0@@7 h1@@4 f@@6) ($Box o@@9))))) (= (MapType1Select (MapType0Select h0@@4 o@@9) fld@@4) (MapType1Select (MapType0Select h1@@4 o@@9) fld@@4))))
 :qid |seqgeneratedreferencebpl.2175:22|
 :skolemid |364|
 :no-pattern (type o@@9)
 :no-pattern (type fld@@4)
 :no-pattern (U_2_int o@@9)
 :no-pattern (U_2_bool o@@9)
 :no-pattern (U_2_int fld@@4)
 :no-pattern (U_2_bool fld@@4)
))) (= (Apply0 t0@@7 h0@@4 f@@6) (Apply0 t0@@7 h1@@4 f@@6))))
 :qid |seqgeneratedreferencebpl.2168:15|
 :skolemid |365|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply0 t0@@7 h1@@4 f@@6))
)))
(assert ($Is |#_System._tuple#0._#Make0| Tclass._System.Tuple0))
(assert (forall (($h@@8 T@U) ) (!  (=> (and (= (type $h@@8) (MapType0Type refType MapType1Type)) ($IsGoodHeap $h@@8)) ($IsAlloc |#_System._tuple#0._#Make0| Tclass._System.Tuple0 $h@@8))
 :qid |seqgeneratedreferencebpl.2499:15|
 :skolemid |411|
 :pattern ( ($IsAlloc |#_System._tuple#0._#Make0| Tclass._System.Tuple0 $h@@8))
)))
(assert (forall ((arg0@@64 T@U) (arg1@@29 T@U) (arg2@@7 T@U) ) (! (= (type (Handle0 arg0@@64 arg1@@29 arg2@@7)) HandleTypeType)
 :qid |funType:Handle0|
 :pattern ( (Handle0 arg0@@64 arg1@@29 arg2@@7))
)))
(assert (forall ((t0@@8 T@U) (heap@@0 T@U) (h@@1 T@U) (r@@1 T@U) (rd T@U) ) (!  (=> (and (and (and (and (= (type t0@@8) TyType) (= (type heap@@0) (MapType0Type refType MapType1Type))) (= (type h@@1) (MapType0Type (MapType0Type refType MapType1Type) BoxType))) (= (type r@@1) (MapType0Type (MapType0Type refType MapType1Type) boolType))) (= (type rd) (MapType0Type (MapType0Type refType MapType1Type) (MapType0Type BoxType boolType)))) (= (Apply0 t0@@8 heap@@0 (Handle0 h@@1 r@@1 rd)) (MapType0Select h@@1 heap@@0)))
 :qid |seqgeneratedreferencebpl.2085:15|
 :skolemid |351|
 :pattern ( (Apply0 t0@@8 heap@@0 (Handle0 h@@1 r@@1 rd)))
)))
(assert (forall ((a@@17 T@U) (b@@11 T@U) ) (! (let ((T@@15 (MapType0TypeInv0 (type a@@17))))
 (=> (and (= (type a@@17) (MapType0Type T@@15 boolType)) (= (type b@@11) (MapType0Type T@@15 boolType))) (= (+ (|Set#Card| (|Set#Union| a@@17 b@@11)) (|Set#Card| (|Set#Intersection| a@@17 b@@11))) (+ (|Set#Card| a@@17) (|Set#Card| b@@11)))))
 :qid |seqgeneratedreferencebpl.847:18|
 :skolemid |139|
 :pattern ( (|Set#Card| (|Set#Union| a@@17 b@@11)))
 :pattern ( (|Set#Card| (|Set#Intersection| a@@17 b@@11)))
)))
(assert (forall ((arg0@@65 T@U) (arg1@@30 T@U) ) (! (let ((V@@10 (MapTypeInv1 (type arg0@@65))))
(let ((U@@12 (MapTypeInv0 (type arg0@@65))))
(= (type (|Map#Subtract| arg0@@65 arg1@@30)) (MapType U@@12 V@@10))))
 :qid |funType:Map#Subtract|
 :pattern ( (|Map#Subtract| arg0@@65 arg1@@30))
)))
(assert (forall ((m@@8 T@U) (s T@U) (u@@0 T@U) ) (! (let ((V@@11 (MapTypeInv1 (type m@@8))))
(let ((U@@13 (type u@@0)))
 (=> (and (and (= (type m@@8) (MapType U@@13 V@@11)) (= (type s) (MapType0Type U@@13 boolType))) (U_2_bool (MapType0Select (|Map#Domain| (|Map#Subtract| m@@8 s)) u@@0))) (= (MapType0Select (|Map#Elements| (|Map#Subtract| m@@8 s)) u@@0) (MapType0Select (|Map#Elements| m@@8) u@@0)))))
 :qid |seqgeneratedreferencebpl.1318:20|
 :skolemid |233|
 :pattern ( (MapType0Select (|Map#Elements| (|Map#Subtract| m@@8 s)) u@@0))
)))
(assert (forall ((arg0@@66 T@U) (arg1@@31 T@U) ) (! (let ((V@@12 (IMapTypeInv1 (type arg0@@66))))
(let ((U@@14 (IMapTypeInv0 (type arg0@@66))))
(= (type (|IMap#Subtract| arg0@@66 arg1@@31)) (IMapType U@@14 V@@12))))
 :qid |funType:IMap#Subtract|
 :pattern ( (|IMap#Subtract| arg0@@66 arg1@@31))
)))
