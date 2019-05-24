data Exp = Num Int
         | Add Exp Exp
         | Sub Exp Exp
         deriving Show

e0 = Add (Num 1) (Num 2)
e3 = Sub (Sub (Add (Num 1) (Num 2)) (Num 3)) (Num 4) 

value :: Exp -> Int
value (Num v) = v
 
avalia :: Exp -> Exp
avalia (Num v)      = Num v
avalia (Add e1 e2)  = Num (value(avalia e1) + value(avalia e2))
avalia (Sub e1 e2)  = Num (value(avalia e1) - value(avalia e2))

main = print(avalia e3)