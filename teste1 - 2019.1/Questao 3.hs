type Aluno = (String, Float, Float)
type Turma = [Aluno]

turma :: Turma
turma = [("João", 8, 4), ("Maria", 10, 8), ("José", 5, 3)]

type Medias = (Float, Float, Float) 
medias :: Medias
medias = foldr (\(_, a, b) (x, y, z) -> ((a + x), (b + y), (a + b + z))) (0, 0, 0) turma

main = print medias