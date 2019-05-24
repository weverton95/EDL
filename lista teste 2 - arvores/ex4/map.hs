data Arvore a = Folha | Galho a (Arvore a) (Arvore a)
                deriving Show

a1 = Galho 1 (Galho 2 Folha Folha) (Galho 10 Folha Folha)

mapA :: (a -> b) -> Arvore a -> Arvore b
mapA f Folha = Folha
mapA f (Galho n l r) = (Galho (f n) (mapA f l) (mapA f r))

main = print(mapA (\x -> 2 * x) a1)