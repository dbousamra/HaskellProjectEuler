import Data.List

triangleNumbers = scanl1 (+) [1..]

numFactors n = length $ factors n
	where factors n = [x | x <- [1..n], n `mod` x == 0]

main = print $ find (\x -> numFactors x == 500) $ triangleNumbers
