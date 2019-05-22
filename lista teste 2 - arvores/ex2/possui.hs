data Arvore = Folha | Galho Int Arvore Arvore
                deriving Show

a1 = Galho 1(Galho 2 (Galho 3 Folha Folha) Folha) (Galho 4 Folha Folha) 

possui :: Int -> Arvore -> Bool
possui x Folha = False
possui x (Galho n l r) = if(not x == n) then
                            possui

main = print(possui 1 a1)