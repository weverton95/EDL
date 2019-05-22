data Arvore = Folha | Galho Int Arvore Arvore
                deriving Show

a3 = Galho 8 (Galho 6 (Galho 2 Folha (Galho 5 Folha Folha)) (Galho 3 Folha Folha)) 
     (Galho 20 (Galho 15 (Galho 10 Folha Folha) (Galho 16 Folha Folha)) (Galho 21 Folha Folha))

busca :: Int -> Arvore -> Bool
busca x Folha = False
busca x (Galho n l r) = if(x > n) then
                          busca x r
                        else if(x < n) then
                          busca x l
                        else
                          True

main = print(busca 50 a3)