import Numeric.LinearAlgebra
import System.Environment

strToInt [x] = read x :: Int

main = do
    x <- getArgs
    let n = strToInt x
    let a = (n><n) $ replicate (n*n) (1::Double)
        b = konst 1 (n,n)
        c = (a <> b)
    print $ size c 
