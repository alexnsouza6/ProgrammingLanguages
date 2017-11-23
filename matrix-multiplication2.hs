import Data.Array.Repa
import Data.Array.Repa.Algorithms.Matrix

main = do
    let
        a = fromListUnboxed (Z:.1000:.1000::DIM2) $ replicate (1000*1000) 1.0 :: Array U DIM2 Double
        b = fromListUnboxed (Z:.1000:.1000::DIM2) $ replicate (1000*1000) 1.0 :: Array U DIM2 Double
    m <- (a `mmultP` b)
    print $ m!(Z:.900:.900)
