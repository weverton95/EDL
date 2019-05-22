data Arvore = Folha | Galho Int Arvore Arvore
                deriving Show

a1 = Galho 1(Galho 2 (Galho 3 Folha Folha) Folha) (Galho 4 Folha Folha) 

dobra :: Arvore -> Arvore
dobra Folha = Folha
dobra (Galho n l r) = Galho (2 * n) (dobra l) (dobra r)

main = print(dobra a1)