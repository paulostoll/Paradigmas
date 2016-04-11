import Data.Char
--1
addSuffix :: String -> [String] -> [String]
addSuffix sufixo lista = [nome++sufixo | nome <- lista]

--2
countShorts :: [String] -> Int
countShorts [] = 0
countShorts (x:xs) = if length(x) < 5 then 1 + countShorts xs else countShorts xs

--3
countShortsComp :: [String] -> Int
countShortsComp lista = length [x | x <- lista, (length x) < 5]

--4
ciclo:: Int -> [Int] -> [Int]
ciclo 0 lista = []
ciclo 1 lista = lista
ciclo num lista = lista ++ ciclo (num-1) lista

--5
numera :: [String] -> [(Int,String)]
numera [] = []
numera lista = numera2 1 lista

numera2 :: Int -> [String] -> [(Int,String)]
numera2 _ [] = []
numera2 n (x:xs) = (n,x) : numera2 (n+1) xs

--6
--a) [(2,3),(2,5),(4,5)].
--   Colocará em uma tupla todas as combinações possíveis, tendo o primeiro elemento par e o segundo ímpar.

--b) ["lazyfrog","lazydog","bigfrog","bigdog"].
--   Concatenará todos os elementos da primeira lista com todos os elementos da segunda.

--c) "p-r-l-l-p-p-d-".
--   Criará uma nova string com todas as consoantes da string original separadas por '-'.

--7
crossProduct :: [a] -> [b] -> [(a,b)]
crossProduct [] ys = []
crossProduct xs ys = pairWithAll (head xs) ys ++ crossProduct (tail xs) ys

pairWithAll :: a -> [b] -> [(a,b)]
pairWithAll x [] = []
pairWithAll x (y:ys) = (x, y) : pairWithAll x ys

--8
genRects :: Int -> (Int, Int) -> [(Float,Float,Float,Float)]
genRects n (x,y) = [(fromIntegral x + (5.5 * fromIntegral i), fromIntegral y,5.5,5.5) | i <- [0..(n-1)]]

--9
tuplaDeListasRec :: [(a,b)] -> ([a],[b])
tuplaDeListasRec lis = (pegaPrim (lis), pegaSeg (lis))

pegaPrim :: [(a,b)] -> [a]
pegaPrim [] = []
pegaPrim lis = fst (head lis) : pegaPrim (tail lis)

pegaSeg :: [(a,b)] -> [b]
pegaSeg [] = []
pegaSeg lis = snd (head lis) : pegaSeg (tail lis)

--10
tuplaDeListasComp :: [(a,b)] -> ([a],[b])
tuplaDeListasComp lis = ([fst x | x <- lis], [snd y | y <- lis])

--11
tuplaDeListasAlt :: [(a,b)] -> ([a],[b])
tuplaDeListasAlt lis = (map fst lis, map snd lis)

--12
calculaDigitos :: [Int] -> [Int] -> Int
calculaDigitos digitos lis = if expr < 2 then 0 else 11-expr
  where
      expr = (sum $ zipWith (*) digitos lis) `mod` 11

isCpfOk :: [Int] -> Bool
isCpfOk cpf = 
  let -- calcula primeiro digito
      dv1 = calculaDigitos (take 9 cpf) [10,9..2]

      -- calcula segundo digito
      dv2 = calculaDigitos (take 9 cpf ++ [dv1]) [11,10..2]
   in dv1 == cpf !! 9 && dv2 == cpf !! 10

main = do
  let cpf = "12345678909"
      digitos = (map digitToInt cpf)
      result = isCpfOk digitos
  putStrLn (show result)