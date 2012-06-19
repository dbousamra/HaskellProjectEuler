checkTriplet a b c = (a**2 + b**2 == c**2) && 
					 (a < b) && 
					 (b < c)

combinations n = [(a, b, c) | a <- [1..n], 
							  b <- [1..n], 
							  c <- [1..n]]


main = print $ combinations 10