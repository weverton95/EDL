data Arvore = Folha | Galho Int Arvore Arvore
                deriving Show

a1 = Galho 1(Galho 2 (Galho 3 Folha Folha) Folha) (Galho 4 Folha Folha) 

soma :: Arvore -> Int
soma Folha = 0
soma (Galho n l r) = n + (soma l) + (soma r)

main = print(soma a1)