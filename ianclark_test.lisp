"creates the lsit of vertexes for answer 1"
(setq x '((1 2) (3 4) (5 6)))

(print (answer-1 x))
"output > 4"



"Creates the list of sublists to pass into answer-2"
(setq y '((1 2) (3 4) (5 6) (7 8) (9 10)))

(print (answer-2 y))
"output > (((1 2) (3 4) (5 6)) ((1 2) (5 6) (7 8)) ((1 2) (7 8) (9 10)))"



"setup for answer-3"
(setq y '((1 2) (3 4) (5 6) (7 8) (9 10)))

(print ( answer-3 triangle-list))
"output > 18"

"setup for answer-4"
(setq list1 '(1 2 3))

(setq list2 '((1 2) (1 3)))

(print ( answer-4 list1 list2))
"output >T"

(setq list1 '(1 2 -3))

(setq list2 '((1 2) (1 3)))

(print ( answer-4 list1 list2))
"output >NIL"