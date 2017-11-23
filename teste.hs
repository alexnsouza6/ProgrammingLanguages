import Data.Matrix


main = do
	let c = matrix 2000 2000 $ \ (i,j) -> 1 
	let d = multStd c c
	print $ getElem 2000 2000 d
