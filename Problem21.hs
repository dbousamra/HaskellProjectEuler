d n = sum $ properDivisors n
properDivisors n = [x | x <- [1..n-1], mod n x == 0]

amicablePairs n = [ x + y | x <- [1..n], y <- [1..n], isAmicable x y]

isAmicable x y = d x == y && d y == x && x /= y

main = print $ sum $ amicablePairs 10000