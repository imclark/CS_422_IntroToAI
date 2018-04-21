(defun answer-1 (L) 
    " takes in the vetexes and goes through the given lists"
    (abs (/ (- (* (- (first (cadr L)) (caar L) ) (- (first (last (caddr L))) (first (last (caddr L))))) (* (- (first (cdr (cadr L))) (first (last (caddr L)))) (- (first (caddr L)) (caar L)))) 2)))

(defun answer-2 (R)
    "if there is a fourth vertext then use the recursive call else use the normal list creator"
    (if (not (null (cdr (cddr R))))
        (and (setq next (append (list (car R)) (values (cddr R)))) 
        (append (list (list (car R) (car (cdr R)) (car (cddr R)))) ( answer-2 next)))
        (append (list (list (car R) (car (cdr R)) (car (cddr R)))))))

(defun answer-3 (E)
    "setup the return value, iterate through the list and sum the resulting areas from answer 1 then return the sum"
    (setq ans 0)
    (setq S ( answer-2 E))
    (loop for x in S collect (setq ans (+ ans ( answer-1 x))))
    (return-from answer-3 ans))

(defun answer-4 (R S))