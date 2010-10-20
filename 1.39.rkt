
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

  
(define (tan-cf x k)  
  (define (d i)
    (- (* 2.0 i) 1))
  (define (n i)
    (if (= i 1)
        (* 1.0 x)
        (- (* x x 1.0))))
  (cont-frac n d k))
    
    