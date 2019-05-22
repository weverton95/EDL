data Arvore = Folha | Galho Int Arvore Arvore
                deriving Show

a1 = Galho 1(Galho 2 Folha Folha) (Galho 3 Folha Folha)

possui :: Int -> Arvore -> Bool
possui x Folha          =   False
possui x (Galho n l r)  =   if(x == n) then
                              True
                            else
                              possui x l || possui x r 