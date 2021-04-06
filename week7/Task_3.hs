main :: IO()
main = do
    print $ isSorted [1,2,3,4]

isSorted :: [Int] -> Bool
isSorted [] = True
isSorted [_] = True
isSorted (x:y:xs) = x < y && isSorted (y:xs)