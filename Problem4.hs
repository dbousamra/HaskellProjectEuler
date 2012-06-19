numbers lower upper = maximum [ n | 
								x <- [lower..upper], 
								y <- [lower..upper],
								let n = x * y,
								let s = show n,
								s == reverse s]
main = print (numbers 100 999)