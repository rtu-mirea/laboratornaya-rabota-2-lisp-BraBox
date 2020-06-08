(defun readFunc(pat_to_file)
	(let ((in (open path_to_file :if-does-not-exist nil)))
   		(when in
      		(loop for line = (read-line in nil)      
      		while line do (format t "~a~%" line))
      	(close in)
   	)
	)
)
