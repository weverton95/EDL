data Exp = Num Int
         | Add Exp Exp
         | Sub Exp Exp
         deriving Show

e0 = Add (Num 1) (Num 2)
e3 = Sub (Sub (Add (Num 1) (Num 2)) (Num 3)) (Num 4) 

escreve :: Exp -> String
escreve (Num v) =  show v
escreve (Add exp1 exp2) = "(" ++ (escreve exp1) ++ " + " ++ (escreve exp2) ++ ")"
escreve (Sub exp1 exp2) = "(" ++ (escreve exp1) ++ " - " ++ (escreve exp2) ++ ")"

main = print(escreve e3)