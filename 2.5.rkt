(define (acons x y)
  (* (expt 2 x) (expt 3 y)))
  
(define (logx n div)
  (define (temp-div n times)
    (if (= (gcd n div) 1)
        times
        (temp-div (/ n div) (+ times 1))))
  (temp-div n 0))

(define (repeate-div n div)
  (define (temp-div n)
    (if (= (gcd n div) 1)
        n
        (temp-div (/ n div))))
  (temp-div n))
  
(define (car a)
  (logx (repeate-div a 3) 2))

(define (cdr a)
  (logx (repeate-div a 2) 3))

(define test (cons 3 4))