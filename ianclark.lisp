(defun answer-1 (L) 
    " takes in the vetexes and goes through the given lists"
    " May spit out a negative number depending on the verticies given"
    (/ (- (* (- (first (cadar L)) (caaar L) ) (- (first (cdr (caddar x))) (caadar L))) (* (- (first (cadar L)) (caadar L)) (- (first (cdr (caddar L))) (caaar L)))) 2))

(defun answer-2 (R)
    (if (not (null (cdr (cddr R))))
        (and (setq next (append (list (car R)) (values (cddr R)))) 
        (append (list (list (car R) (car (cdr R)) (car (cddr R)))) ( answer-2 next)))
        (append (list (list (car R) (car (cdr R)) (car (cddr R))))) ))