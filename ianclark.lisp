(defun answer-1 (L) 
    " takes in the vetexes and goes through the given lists"
    (abs (/ (- (* (- (first (cadr L)) (caar L) ) (- (first (last (caddr L))) (first (last (caddr L))))) (* (- (first (cdr (cadr L))) (first (last (caddr L)))) (- (first (caddr L)) (caar L)))) 2)))

(defun answer-2 (R)
    (if (not (null (cdr (cddr R))))
        (and (setq next (append (list (car R)) (values (cddr R)))) 
        (append (list (list (car R) (car (cdr R)) (car (cddr R)))) ( answer-2 next)))
        (append (list (list (car R) (car (cdr R)) (car (cddr R)))))))

(defun answer-3 (E)
    (if (not (null E)) 
        (and (setq trig ( answer-2 E)) ())))