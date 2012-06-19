condition x = x `mod` 3 == 0 || x `mod` 5 == 0
main = print (sum (filter (condition) [1..999]))