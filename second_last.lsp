(defun len1 (list)
  (if list
    (1+ (len1 (cdr list)))	;calculating the length of the list recursively
    0))				; returns 0 if list is empty
    
(defun second_last (l1)
	(cond
		;Checks if list empty or not
		(( = (len1 l1) 0) (format t "List is empty") )

		;Checks if list has 1 element or not		
		(( = (len1 l1) 1) (format t "List has only one element"))

		;Checks if list has 2 or not and returns second last element
		(( = (len1 l1) 2) (car l1))				

		;recursively calls the second last function with tail of the list
		(t(second_last (cdr l1)))
	) 
	
)