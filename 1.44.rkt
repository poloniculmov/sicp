(define (compose f g)
  (lambda (x) 
    (f (g x))))

(define (square x) (* x x))

(define (inc x) (+ x 1))

(define (repeated f times)
  (define (loop g step)
    (if (= 1 step)
        (lambda (z) (f z))
        (compose f (loop g (- step 1)))))
  (loop f times))

(define dx 0.00000001)

(define (avg a b c) (/ (+ a b c) 3))

(define (smooth f)
  (lambda (x)
  (avg (f (- x dx)) (f x) (f (+ x dx)))))

(define (n-fold-smooth f n)
  (repeated smooth n) f)