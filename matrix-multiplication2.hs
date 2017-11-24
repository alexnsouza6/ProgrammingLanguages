module Main where
import System.Environment
import Formatting
import Formatting.Clock
import System.Clock
import Control.DeepSeq
import Data.List

-- Definine os tipos que serão utilizados
type Matrix = [Vector]
type Vector = [Float]

-- Função que realiza o produto escalar entre dois vetores
escalar :: Vector -> Vector -> Float
escalar irow icol = sum [x*y | (x,y) <- zip irow icol]

-- Função que recebe cada coluna da matrizes
coluna :: Matrix -> Matrix
coluna y = [[z!!j | z <- y] | j <- [0 .. s]]
       where
         s = length (head y) - 1

-- Função responsável por realizar a mulitiplicação das duas matrizes
multMatrix :: Matrix -> Matrix -> Matrix
multMatrix a b = [[escalar row col | col <- coluna b] | row <- a]

recursiveAppend :: Int -> [[Float]]
recursiveAppend 1 = [[1..2000]]
recursiveAppend x = [1..2000]:recursiveAppend(x-1)

main = do
       -- Tamanho do Vector
       n <- getArgs;
       -- Gera as matrizes NxN
       let b = recursiveAppend 2000;
       let a = recursiveAppend 2000;
       -- Executa a multiplicação e pega o cálculo do tempo
       start <- getTime Monotonic
       let resultado = multMatrix a b
       end <- resultado `deepseq` getTime Monotonic
       -- Tempo de Execução
       fprint timeSpecs start end
       -- print $ resultado

