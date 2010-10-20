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
