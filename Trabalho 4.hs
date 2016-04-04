import Text.Printf

type Point     = (Float,Float)
type Rect      = (Point,Float,Float)

maxWidth :: Float
maxWidth = 1000

maxHeight :: Float
maxHeight = 100

-- Gera um unico retangulo SVG 
-- a partir de coordenadas+dimensoes e de uma string com atributos de estilo
writeRect :: (Rect,String) -> String 
writeRect (((x,y),w,h),style) = 
  printf "<rect x='%.3f' y='%.3f' width='%.2f' height='%.2f' style='%s' />\n" x y w h style

-- Gera codigo-fonte de arquivo SVG 
-- concatenando uma lista de retangulos e seus atributos de estilo
writeAllRects :: Float -> Float -> [(Rect,String)] -> String 
writeAllRects w h rs = 
  printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 
      ++ (concat (map writeRect rs)) ++ "</svg>"

-- TO-DO
-- Esta funcao deve gerar n retangulos de largura w e altura h.
-- Use recursao para implementa-la.
genRects :: Float -> Float -> Float -> [Rect]
-- Remova a linha abaixo antes de implementar a nova funcao recursiva
--genRects n w h = [((0.0,0.0), w, h)] -- Lista com somente um retangulo. 
genRects 0 w h = []
genRects n w h = genRects2 n 1 w h

genRects2 :: Float -> Float -> Float -> Float -> [Rect]
genRects2 n i w h = if (i<=n) then ((0.0 + (w*(i-1)),0.0), w, h) : genRects2 n (i+1) w h else []


-- Combina (zip) a lista de estilos com a lista de retangulos, aplicando os estilos ciclicamente.
-- Se houverem mais retangulos que cores, havera retangulos com cores repetidas.
-- Se houverem menos retangulos que cores, algumas cores nao serao usadas.

myzip :: [String] -> [Rect] -> [(Rect,String)]
myzip styles [] = []
myzip [] rects = []
myzip styles rects = (head(rects),head(styles)) : myzip (tail(styles)) (tail(rects))

applyStyles :: [String] -> [Rect] -> [(Rect,String)]
applyStyles styles rects = myzip (cycle styles) rects

geraCores :: Int -> Int -> Int -> Int -> [String]
geraCores 0 _ _ _ = []
geraCores n r g b = (printf "fill:rgb(%d,%d,%d)" r g b) : geraCores (n-1) (r-10) (g-10) (b-10)
--["fill:rgb(140,0,0)","fill:rgb(0,140,0)"]

{--
     O codigo abaixo gera um arquivo "mycolors.svg".
     A geracao usa 2 listas: uma com coordenadas dos retangulos e outra com as cores.
     Essas 2 listas sao combinadas numa lista resultante, que e' escrita no arquivo.
 --}
main :: IO ()
main = do
  let
    rects = genRects 10 50 50                          -- Deve gerar 10 retangulos de 50x50
    styles = geraCores 5 255 0 0-- Estilo: vermelho e verde
    rectstyles = applyStyles styles rects
  writeFile "mycolors.svg" (writeAllRects maxWidth maxHeight rectstyles)