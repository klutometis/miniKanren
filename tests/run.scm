(use minikanren
     test)
(test "Disequality"
 (run* (p)
   (=/= 3 p)
   (== 3 p))
 '())
