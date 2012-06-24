even' n = n/2
odd' n = 3*n + 1



problem14 n result
	| even n = problem14 ((even' n) (result ++ [even' n]))
	| odd n = problem14 ((odd' n) (result ++ [odd' n]))
main = print 1