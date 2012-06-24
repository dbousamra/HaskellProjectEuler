import Data.Char

convertToNumber n = read n :: Integer

main = do t <- readFile "data/Problem13.in" 
          let digits = map convertToNumber $ lines t
          print $ take 10 $ show $ sum digits