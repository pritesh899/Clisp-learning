(defun len (list)
  (if list
    (1+ (len (cdr list)))	;calculating the length of the list recursively
    0))				; returns 0 if list is empty
    

;function for appending two lists
(defun my-append (A1 A2)
	(cond
		;checks is list 1 is empty
		((null A1) A2)
		
		;appends the list recursively
		(t (cons (car A1) (my-append (cdr A1) A2))))
)

;makes a new list
(defun createlist (x) (cons x nil)) 

;function to remove the elements from list1 which are present in list2 
(defun remove_list (A B C)
	(cond
		;checks if input is a list or not
		((not (listp A)) (format t "wrong input.. list expected")) 

		;checks if input is a list or not
		((listp B) (format t "wrong input.. list expected")) 

		;checks if list 1 is null
		((null A) C)

		;recursively calls the function for removing lists
		((= (car A) B) (remove_list (cdr A) B C))

		;recursively calls the function for removing lists
		((not (= (car A) B)) (remove_list (cdr A) B (my-append C (createlist(car A)))))
	)
)

;function for user input
(defun delete-list (L1 L2)
	(cond
		;checks if first input is list or not
		((not (listp L1)) (format t "wrong input.. list expected"))

		;checks if second input is list or not 
		((not (listp L2)) (format t "wrong input.. list expected"))

		;checks if list is null 
		((null L2) L1)

		;checks if list are empty
		((and( = (len L1) 0)( = (len L2) 0)) (format t "List are empty") )

		
		;calls the function for deleting the lists
		(t (delete-list (remove_list L1 (car L2) nil) (cdr L2)))
	)
)