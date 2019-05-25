data Arvore = Folha | Galho Int [Arvore]
                deriving Show

a1 = Galho 10 [Galho 20 [Folha, Folha, Galho 30 [Folha]], Galho 40 [Folha, Folha]]
a2 = Galho 20 [Galho 30 [Folha, Folha], Folha]

altura :: Int -> Arvore -> Int
altura acc Folha                =   acc
altura acc (Galho n (h : t))    =   if ((altura acc h) >= (foldr(\x a -> a + (altura acc x)) 0 t)) then
                                        altura (acc + 1) h
                                    else 
                                        foldr(\x a -> a + (altura (acc) x)) 0 t

main = print(altura 0 a1)