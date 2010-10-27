(define (make-point x y) 
  (cons x y))

(define (x-point p)
  (car p))

(define (y-point p)
  (cdr p))

(define (make-segment a b)
  (cons a b))

(define (start-segment s)
  (car s))

(define (end-segment s)
  (cdr s))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (midpoint-segment s)
  (make-point (/ (+ (x-point (start-segment s)) (x-point (end-segment s))) 2)
              (/ (+ (y-point (start-segment s)) (y-point (end-segment s))) 2)))

(define (make-rectangle a d)
  (cons a d))

(define (rect-first-corner r)
  (car r))

(define (rect-last-corner r)
  (cdr r))

(define (rect-height r)
  (abs (- (y-point (rect-first-corner r)) (y-point (rect-last-corner r)))))

(define (rect-width r)
  (abs (- (x-point (rect-first-corner r)) (x-point (rect-last-corner r)))))


(define (rect-perimeter r)
  (+ (* 2 (rect-height r))
     (* 2 (rect-width r))))

(define (rect-area r)
  (* (rect-height r)
     (rect-width r)))

;; Only working for rectangles parallel to the axes.


(define a (make-point 0 0))
(define b (make-point 4 2))
(define rect (make-rectangle a b))
