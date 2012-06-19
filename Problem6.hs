sumofsquares n = foldl (\x y -> x + y ** 2 ) 0 [0..n]
squareofsum n = (sum [0..n]) ** 2

main = print(squareofsum 100 - sumofsquares 100)