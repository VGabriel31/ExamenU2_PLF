-- Lista inicial
miLista :: [Int]
miLista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

-- Concatenación: Une dos listas
concatenacion :: [Int]
concatenacion = miLista ++ [11, 12, 13]

-- Obtiene el primer y último elemento
primerElemento :: Int
primerElemento = head miLista

ultimoElemento :: Int
ultimoElemento = last miLista

-- Filtra los números pares
numerosPares :: [Int]
numerosPares = filter even miLista

-- Eleva cada número al cuadrado
cuadrados :: [Int]
cuadrados = map (^2) miLista

-- Función principal
main :: IO ()
main = do
    putStrLn "Concatenación de listas:"
    print concatenacion
    putStrLn "Primer elemento de la lista:"
    print primerElemento
    putStrLn "Último elemento de la lista:"
    print ultimoElemento
    putStrLn "Números pares de la lista:"
    print numerosPares
    putStrLn "Lista con cada elemento elevado al cuadrado:"
    print cuadrados