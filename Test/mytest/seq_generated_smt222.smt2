(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-fun |Seq#Build_131| ((Seq Int) Int) (Seq Int))
(assert (forall ((s (Seq Int)) (val Int) ) (! (= (|Seq#Build_131| s val) (seq.++ s (seq.unit val)))
 :qid |seqgeneratedbpl.32:23|
 :skolemid |0|
 :pattern ( (|Seq#Build_131| s val))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0@0| () (Seq Int))
(set-info :boogie-vc-id test)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= |s#0@0| (|Seq#Build_131| (|Seq#Build_131| (as seq.empty (Seq Int)) 1) 2)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< 0 (seq.len |s#0@0|))) (=> (< 0 (seq.len |s#0@0|)) (=> (= (ControlFlow 0 2) (- 0 1)) (= (seq.nth |s#0@0| 0) 1)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
