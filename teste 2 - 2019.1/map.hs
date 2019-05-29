data Arvore = Folha | Galho Int [Arvore]
                deriving Show

a1 = Galho 10 [Galho 20 [Folha, Folha, Galho 30 [Folha]], Galho 40 [Folha, Folha]]
a2 = Galho 20 [Galho 30 [Folha, Folha], Folha]

mapA :: (Int -> Int) -> Arvore -> Arvore
mapA f Folha = Folha
mapA f (Galho n a) = Galho (f n) (map (\x -> mapA f x) a)

main = print(mapA (\x -> 2 * x) a1)
