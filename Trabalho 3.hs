--1
quadradoLista :: [Int] -> [Int]
quadradoLista [] = []
quadradoLista lis = head lis^2: quadradoLista (tail lis)

--2
adicionaSr :: [String] -> [String]
adicionaSr [] = []
adicionaSr nomes = ("Sr. "++head nomes) : adicionaSr (tail nomes)

--3
contaEspacos :: String -> Int
contaEspacos [] = 0
contaEspacos texto = if (head texto == ' ') then 1 + contaEspacos (tail texto) else 0 + contaEspacos (tail texto)

--4
calculo :: [Float] -> [Float]
calculo [] = []
calculo lis = (\n -> (3 * (n^2) + 2)/(n+1)) (head lis) : calculo (tail lis)

--5
negativos :: [Int] -> [Int]
negativos [] = []
negativos lis = if ((head lis) < 0) then head lis : negativos (tail lis) else negativos (tail lis)

--6
retiraVogais :: String -> String
retiraVogais texto = filter(\c -> c/='a' && c/='e' && c/='i' && c/='o' && c/='u' && c/='A' && c/='E' && c/='I' && c/='O' && c/='U') texto

--7
retiraVogaisRec :: String -> String
retiraVogaisRec [] = []
retiraVogaisRec (c:xs) = if (c/='a' && c/='e' && c/='i' && c/='o' && c/='u' && c/='A' && c/='E' && c/='I' && c/='O' && c/='U') then c : retiraVogaisRec(xs) else retiraVogaisRec(xs)

--8
codifica :: String -> String
codifica texto = map (\c -> if (c == ' ') then ' ' else '-') texto

--9
codificaRec :: String -> String
codificaRec [] = []
codificaRec texto = if head(texto) /= ' ' then '-' : codificaRec (tail texto) else ' ' : codificaRec (tail texto)

--10
charFound :: Char -> String -> Bool
charFound c [] = False
charFound c (x:xs)= if (c == x) then True else charFound c xs

--11
translate :: [(Float,Float)] -> [(Float,Float)]
translate [] = []
translate (x:xs) =  ((fst x)+2, (snd x)+2) : translate xs

--12
prodVet :: [Int] -> [Int] -> [Int]
prodVet [] x = []
prodVet x [] = []
prodVet lis1 lis2 = head(lis1) * head(lis2) : prodVet(tail(lis1)) (tail(lis2))

--13
prodVet2 :: [Int] -> [Int] -> [Int]
prodVet2 lis1 lis2 = zipWith (*) lis1 lis2

--14
geraTabela :: Int -> [(Int,Int)]
geraTabela 0 = []
geraTabela n = geraTabela2 n 1

geraTabela2 :: Int -> Int -> [(Int,Int)]
geraTabela2 n i = if (i <= n)  then (i,i^2) : geraTabela2 n (i+1) else []