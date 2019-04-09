fn :: Int -> Int -> Int
fn x y = 
    if x > y then x
    else y

type Musica = (String, Int, Int)

musicas :: [Musica]
musicas = [ ("Aquele Abraco", 1, 100),
    ("Esperando na Janela", 1, 150),
    ("Borboletas", 2, 120),
    ("Asa Branca", 3, 120),
    ("Assum Preto", 3, 140),
    ("Vem Morena", 3, 200),
    ("Nosso Sonho", 4, 150),
    ("Quero te Encontrar", 4, 100) ]

listaAux :: [Int]
listaAux = map (\(_, _, c) -> c) musicas

result :: Int
result = foldr fn 0 listaAux

main = print result