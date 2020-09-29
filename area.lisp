; cerner_2^5_2020
; This program calculates the area of Square
; Value of side is taken as an input from the user

(defun AreaOfSquare()
(terpri)
(princ "Enter the value of side: ")
(setq side (read))
(setq area (* side side))
(princ "Area of a square is : ")
(write area))
(AreaOfSquare)