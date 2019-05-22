data Arvore = Folha | Galho Int Arvore Arvore
                deriving Show

a1 = Galho 1(Galho 2 (Galho 3 Folha Folha) Folha) (Galho 4 Folha Folha) 

folhas :: Arvore -> Int
folhas Folha = 1
folhas (Galho n l r) = (folhas l) + (folhas r)

main = print( folhas a1)