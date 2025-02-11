(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun q@abs (Int) Int)
(assert (forall ((x Int) ) (! (= (q@abs x) (ite (< x 0) (- 0 x) x))
 :qid |emptybpl.1:14|
 :skolemid |0|
 :pattern ( (q@abs x))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id m)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= (q@abs 3) 3))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
