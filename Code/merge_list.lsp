(defun len2 (list)
  (if list
    (1+ (len2 (cdr list)))	;calculating the length of the list recursively
    0))				; returns 0 if list is empty

(defun merge_list(A1 A2)
	(cond
		;checking if list A1 and A2 are null
		((null A1) (null A2) nil)

		;checking if list A1 and A2 are of equal size or not
		(( /= (len2 A1) (len2 A2)) (format t "List are not of same length") )

		;merging the two lists
		(t (cons (car A1) (cons (car A2) (merge_list (cdr A1)(cdr A2)))))
	)
)


