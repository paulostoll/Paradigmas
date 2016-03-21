--1
somaQuad :: Int -> Int -> Int
somaQuad x y = (x * x) + (y * y)

--2
hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads lis1 lis2 = head lis1 == head lis2

--3
adicionaSr :: [String] -> [String]
adicionaSr lista = map ("Sr. "++) lista

--4
contaEspaco :: String -> Int
contaEspaco texto = length (filter(==' ') texto)

--5
calcular :: [Float] -> [Float]
calcular lista = map(\n -> (3 * (n^2) + 2)/(n + 1)) lista

--6
negativos :: [Float] -> [Float]
negativos lista = filter(<0)lista

--7
ateCem :: [Float] -> [Float]
ateCem lista = filter(\n -> n >= 1 && n <= 100)lista

--8
idade :: [Int] -> [Int]
idade lista = filter(\n -> n - 46 <= 0)lista

--9
pares :: [Int] -> [Int]
pares lista = filter(\n -> mod n 2 == 0)lista

--10
charFound :: Char -> String -> Bool
charFound letra texto = length(filter (\c -> c == letra)texto) /= 0

--11
--takeWhile (>3) [10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0]

--12
terminaComA :: [String] -> [String]
terminaComA lista = filter (\s -> last s == 'a')lista