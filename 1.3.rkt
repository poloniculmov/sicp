(define (cube x) (* x x x))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))
(define (cube x) (* x x x))

(define (inc x) (+ x 1))
 
(define (simpson f a b n)
  (define h (/ (- b a) n))
  (define (sim-term k) (f (+ a (* k h))))
  (* (/ h 3) (sum sim-term 1 inc n)))