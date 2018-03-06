(defun len (list)
  (if list			
    (1+ (len (cdr list)))	;calculating the length of the list recursively
    0))				; returns 0 if list is empty
    
