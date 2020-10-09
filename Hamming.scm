#| cerner_2^5_2020
   This program takes a number N as an input from the user and generates first N Hamming numbers
   Hamming Numbers are numbers whose only prime factors are 2, 3 and 5.
   Ex : 18 whose prime factors are 2 and 3
   can be run at https://rextester.com/l/scheme_online_compiler
|#
(define-syntax lons
  (syntax-rules ()
    ((_ lar ldr) (delay (cons lar (delay ldr))))))
(define (lar lons)  (car (force lons)))
(define (ldr lons)
  (force (cdr (force lons))))
(define (lap proc . llists)
  (lons (apply proc (map lar llists)) (apply lap proc (map ldr llists))))
(define (take n llist)
  (if (zero? n)
      (list)
      (cons (lar llist) (take (- n 1) (ldr llist)))))
(define (merge llist-1 . llists)
  (define (merge-2 llist-1 llist-2)
    (cond ((null? llist-1) llist-2)
          ((null? llist-2) llist-1)
          ((< (lar llist-1) (lar llist-2))
           (lons (lar llist-1) (merge-2 (ldr llist-1) llist-2)))
          ((> (lar llist-1) (lar llist-2))
           (lons (lar llist-2) (merge-2 llist-1 (ldr llist-2))))
          (else (lons (lar llist-1) (merge-2 (ldr llist-1) (ldr llist-2))))))
  (if (null? llists)
      llist-1
      (apply merge (cons (merge-2 llist-1 (car llists)) (cdr llists)))))
(define hamming
  (lons 1
        (merge (lap (lambda (x) (* x 2)) hamming)
               (lap (lambda (x) (* x 3)) hamming)
               (lap (lambda (x) (* x 5)) hamming))))
(display "Enter number of Hamming numbers you want to see ")(newline)
(define num (read))(display "The First Hamming numbers are")(newline)
(display (take num hamming))(newline)