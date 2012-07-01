{- 
If the numbers 1 to 5 are written out in words: one, two, three, four,
five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written
out in words, how many letters would be used?

NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and
forty-two) contains 23 letters and 115 (one hundred and fifteen) contains
20 letters. The use of "and" when writing out numbers is in compliance
with British usage. 
-}

main = print $ sum $ map nl [1..1000000]

hundred = 7
and' = 3

nl :: Int -> Int
nl 0 = 0
nl 1 = 3
nl 2 = 3
nl 3 = 5
nl 4 = 4
nl 5 = 4
nl 6 = 3
nl 7 = 5
nl 8 = 5
nl 9 = 4
nl 10 = 3
nl 11 = 6
nl 12 = 6
nl 13 = 8
nl 14 = 8
nl 15 = 7
nl 16 = 7
nl 17 = 9
nl 18 = 8
nl 19 = 8
nl 20 = 6
nl 30 = 6
nl 40 = 5
nl 50 = 5
nl 60 = 5
nl 70 = 7
nl 80 = 6
nl 90 = 6
nl 1000 = 11
nl n
	| mod n 100 == 0 = (nl $ truncate $ fromIntegral n/100) + hundred --if it's a round 100 number like 600
	| n > 100 = (nl $ truncate $ fromIntegral n/100) + hundred + and' + (nl $ mod n 100)  -- if it's not round, but > 100 like 123
	| otherwise = (nl $ truncate (fromIntegral n/10) * 10) + (nl $ mod n 10) --if it's a number < 100 like 38
