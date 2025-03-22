
grafo :: [(Int, [Int])]
grafo = [(1, [2, 3]),       
         (2, [1, 4, 5]),   
         (3, [1, 5]),       
         (4, [2, 5]),       
         (5, [2, 3, 4])]    

-- Función para obtener la lista de nodos vecinos de un nodo dado. Si el nodo no existe en el grafo, devuelve una lista vacía.

vecinos :: Int -> [Int]
vecinos nodo = case lookup nodo grafo of
    Just conexiones -> conexiones  -- Si encuentra el nodo, devuelve sus conexiones.
    Nothing -> []                  -- Si no encuentra el nodo, devuelve una lista vacía.

-- Función para mostrar las conexiones de cada nodo en el grafo.  Recorre la lista de nodos y sus conexiones, imprimiendo la información.
mostrarConexiones :: [(Int, [Int])] -> IO ()
mostrarConexiones [] = return ()  -- Caso base: si la lista está vacía, no hay nada que mostrar.
mostrarConexiones ((nodo, conexiones):resto) = do

    -- Imprime el nodo y los nodos a los que está conectado.
    putStrLn $ "Nodo " ++ show nodo ++ " está conectado con: " ++ show conexiones


    -- Llamada recursiva para procesar el resto de los nodos.
    mostrarConexiones resto

-- Función principal del programa.Muestra la estructura del grafo y sus conexiones.
main :: IO ()
main = do
    -- Muestra la lista completa del grafo.
    putStrLn "Lista de conexiones en el grafo:"
    print grafo
    -- Muestra las conexiones de cada nodo en un formato claro.
    putStrLn "Nodos y sus conexiones:"
    mostrarConexiones grafo