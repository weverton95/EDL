data Arvore = Folha | Galho Int (Arvore) (Arvore)
                deriving Show

a1 = Galho 1(Galho 2 (Galho 3 Folha Folha) Folha) (Galho 4 Folha Folha) 

f :: Int -> Int
f n = 2 * n

map' :: (Int -> Int) -> Arvore -> Arvore 
map' f Folha         = Folha
map' f (Galho n l r) = Galho (f n) (map' f l) (map' f r)

main = print (map' f a1)