(defun mini (n l)    
    (if (null l)
        n
        (if (< n (car l))
            (mini n (cdr l))
            (mini (car l) (cdr l))
        )
    )
)
(defun maxi (n l)    
    (if (null l)
        n
        (if (> n (car l))
            (maxi n (cdr l))
            (maxi (car l) (cdr l))
        )
    )
)
(defun sum-list (x)
  (if (null x)
      0
      (+ (car x) (sum-list (cdr x)))
  )
)
(defun length-list (l)
  (if (null l) 
  0
  (+ 1 (length (cdr l)))
  )
)
(defun min-mean-max (xs)
  (setq mean-list (/ (sum-list xs) (length-list xs)))
  (list (mini (car xs)(cdr xs)) mean-list (maxi (car xs)(cdr xs)))
)