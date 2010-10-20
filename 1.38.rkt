
(define (cont-frac n d k)
  (define (loop result step)
    (if (= step 0)
        result
        (loop (/ (n step) (+ (d step) result)) (- step 1))))
  (loop 0 k)
  )

(define (cont-frac-rec n d k)
  (define (recurse i)
    (/ (n i)
       (+ (d i)
          (if (= i k)
              0
              (recurse (+ 1 i))))))
  (recurse 1))

(define (d i)
  (if (= (remainder i 3) 2)
      (/ (+ i 1) 1.5)
      1))
  
  