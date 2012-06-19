checkTriplet (a, b, c) = (a**2 + b**2 == c**2) && 
					 (a < b) && 
					 (b < c) &&
					 (a + b + c) == 1000

combinations n = [(a, b, c) | a <- [1..n], 
							  b <- [1..n], 
							  c <- [1..n]]


unpacker (a, b, c) f = f a b c

main = print $ filter checkTriplet (combinations 1000) 