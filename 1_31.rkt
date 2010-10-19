(define (cube x) (* x x x))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))
(define (cube x) (* x x x))

(define (inc x) (+ x 1))
 
(define (simpson f a b n)
  (define h (/ (- b (* 1.0 a)) n))
  (define (sim-term k)
    (cond ((= k 0) (f (+ a (* k h))))
          ((= k n) (f (+ a (* k h))))
          ((= (modulo k 2) 0) (* (f (+ a (* k h))) 2))
          ((= (modulo k 2) 1) (* (f (+ a (* k h))) 4))))
  (* (/ h 3.0) (sum sim-term 1 inc n)))