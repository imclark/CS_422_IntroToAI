"creates the lsit of vertexes for answer 1"
(setq x '((1 2) (3 4) (5 6)))

(answer-1 x)
"output > 4"



"Creates the list of sublists to pass into answer-2"
(setq y '((1 2) (3 4) (5 6) (7 8) (9 10)))

(answer-2 y)
"output > (((1 2) (3 4) (5 6)) ((1 2) (5 6) (7 8)) ((1 2) (7 8) (9 10)))"



"setup for answer-3"
(setq y '((1 2) (3 4) (5 6) (7 8) (9 10)))
(setq triangle-list ( answer-2 y))

( answer-3 triangle-list)
"output > 18"
