data Arvore = Folha | Galho Int Arvore Arvore
                deriving Show

a1 = Galho 8 (Galho 6 Folha Folha) (Galho 10 Folha Folha)

inserir :: Int -> Arvore -> Arvore
inserir n Folha         =   Galho n Folha Folha
inserir n (Galho x l r) =   if(n < x) then
                                (Galho x (inserir n l) r)
                            else
                                (Galho x l (inserir n r))

main = print(inserir 5 a1)