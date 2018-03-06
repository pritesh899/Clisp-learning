(defun len3 (list)
  (if list
    (1+ (len3 (cdr list)))	;calculating the length of the list recursively
    0))				; returns 0 if list is empty
    
(defun rev (l1)			;function for reversing the list
           (cond
             ((null l1) '())
             (T (append (rev (cdr l1)) (list (car l1))))))

(defun extra_credit (l1)
	(cond
		;Checks if list empty or not
		(( = (len3 l1) 0) (princ "no element in the list") )

		;Checks if list has 1 element or not		
		(( = (len3 l1) 1) (princ "it does not have a second last"))

		;Checks if list has 2 or not and returns last element of the sublist
		(( = (len3 l1) 2) (car (rev (car l1))) )

		;recursively calls the second last function with tail of the list
		(t(extra_credit (cdr l1)))
	) 
	
)