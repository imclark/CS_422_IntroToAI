(defun answer-1 (L) 
    " takes in the vetexes and goes through the given verticies and finds the area. Also gives the absolution for the area so no negatives happen"
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
    (setq S ( answer-2 E)) "gab the triangulation for the vertices"
    (loop for x in S collect (setq ans (+ ans ( answer-1 x)))) "iterate through the triangulated triangles and sum the areas"
    (return-from answer-3 ans)) "return the sum"

(defun answer-4 (L1 L2)
    "checks if the given logic representation list adheres to the given truth assignments"
    (setq col '()) "setup the collection for if the logic statement has the truth statements"
    (if (or (null L1) (null L2)) nil (loop for x in L2 collect (loop for y in x collect (if (position y L1) (push T col) (push NIL col))))) "loop through all the sublists in the logic sentence and see if they adhere to the truth statment, if so then add T to the collection else NIL"
    (if (position NIL col) (return-from answer-4 NIL) (return-from answer-4 T))) "if there is a NIL in the collection then return NIL else T"