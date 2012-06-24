import Data.Char

digits :: Integer -> [Int]
digits = map digitToInt . show

main = print $ sum $ digits $ truncate (2**1000)