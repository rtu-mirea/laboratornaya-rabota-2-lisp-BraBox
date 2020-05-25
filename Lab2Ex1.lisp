; ============================================================
; Вставка в список по номеру
; ============================================================
(defun insrt_by_indx (pos lst el)
    (nconc (subseq lst 0 pos) (cons el (subseq lst pos))))

(defconstant L (list 3 17 4 2 12 12 36 -10 0 24))

(print (insrt_by_indx 5 L 1111))

; ============================================================
; Удаление из списка по позиции
; ============================================================

(defun delete_by_indx (pos lst)
    (nconc (subseq lst 0 pos) (subseq lst (+ 1 pos))))
    
(defconstant L (list 3 17 4 2 12 12 36 -10 0 24))    

(print (delete_by_indx 4 L))

; ============================================================
; Поиск элемента по значению
; ============================================================

(defun fnd_by_val (x lst)
  (cond ((eq x (car lst)) 0)
        (t (+ 1 (fnd_by_val x (cdr lst))))))
    
(defconstant L (list 3 17 4 2 12 12 36 -10 0 24))

(print (fnd_by_val -10 L))
