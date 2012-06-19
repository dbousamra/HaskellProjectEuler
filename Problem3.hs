factor n x 
	| x `mod` n == 0 = "Correct"
	| otherwise = factor 3 x

main = print (factor 3 13195)