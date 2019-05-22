data Arvore = Folha | Galho Int Arvore Arvore
                deriving Show

a1 = Galho 1(Galho 2 (Galho 3 Folha Folha) Folha) (Galho 4 Folha Folha) 

altura :: Arvore -> Int
altura acc Folha         = acc + 1
altura acc (Galho n l r) = if( altura acc l) > ( altura acc r) then
                            altura (acc + 1) l
                           else
                            altura (acc + 1) r
                     
main = print(altura  a1)