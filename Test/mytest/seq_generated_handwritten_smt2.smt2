(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun s@0 () (Seq Int))
(declare-fun s@1 () (Seq Int))
(declare-fun s@2 () (Seq Int))
(set-info :boogie-vc-id test)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (and (= s@0 (seq.++ (as seq.empty (Seq Int)) (seq.unit 0))) (= s@1 (seq.++ s@0 (seq.unit 1)))) (and (= s@2 (seq.++ s@1 (seq.unit 2))) (= (ControlFlow 0 2) (- 0 1)))) (= (seq.nth s@2 1) 1))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
