data Arvore = Folha | Galho Arvore Arvore
              deriving Show

a1 = Galho (Galho Folha Folha) (Galho Folha Folha)
a2 = Galho (Galho (Galho Folha Folha) Folha) Folha
a3 = Galho Folha (Galho (Galho Folha Folha) (Galho Folha Folha))

folhas :: Arvore -> Int
folhas Folha = 1
folhas (Galho l r) = (folhas l) + (folhas r)

main = print(folhas a3)