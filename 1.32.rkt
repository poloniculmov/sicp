(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (sum term a next b)
  (define (sum-combiner x y) (+ x y))
  (accumulate sum-combiner 0 term a next b))

(define (pi-sum a b)
  (define (pi-term x)
    (/ 1.0 (* x (+ x 2))))
  (define (pi-next x)
    (+ x 4))
  (sum pi-term a pi-next b))

(define (product term a next b)
  (define (product-combiner x y) (* x y))
  (accumulate product-combiner 1 term a next b))

(define (filtered-accumulate filter combiner null-value term a next b)
  (if (> a b)
      null-value
      (if (filter a)
          (combiner (term a) (filtered-accumulate filter combiner null-value term (next a) next b))
          ((combiner null-value (filtered-accumulate filter combiner null-value term (next a) next b))))))
           