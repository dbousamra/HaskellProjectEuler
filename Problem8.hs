import Data.Char

groupsOf _ [] = []
groupsOf n xs = take n xs : groupsOf n ( tail xs )

greatestproduct digits = maximum $ map product (groupsOf 5 $ digits)

main = do t <- readFile "data/Problem8.in" 
          let digits = map digitToInt $ concat $ lines t
          print $ greatestproduct digits	