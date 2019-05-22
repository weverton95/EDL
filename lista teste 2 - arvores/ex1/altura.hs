data Arvore = Folha | Galho Arvore Arvore
              deriving Show

a1 = Galho (Galho Folha Folha) (Galho Folha Folha)
a2 = Galho (Galho (Galho Folha Folha) Folha) Folha
a3 = Galho Folha (Galho (Galho Folha Folha) (Galho Folha Folha))

altura :: Int -> Arvore -> Int
altura 0 Folha         = 1
altura acc Folha       = acc + 1
altura acc (Galho l r) = if( altura acc l) > ( altura acc r) then
                            altura (acc + 1) l
                         else
                            altura (acc + 1) r
                        
main = print(altura 0 a2)