main :: IO()
main = do
    print $ isArithmentic [3]
    print $ isArithmentic [3, 5]
    print $ isArithmentic [1, 2, 3, 4, 5]
    print $ isArithmentic [3, 5, 7, 9, 11]
    print $ isArithmentic [3, 5, 8, 9, 11]
    
isArithmentic :: [Int] -> Bool
isArithmentic [] = False
isArithmentic [_] = True
isArithmentic [_,_] = True
isArithmentic (x:y:z:xs) = 2 * y == x + z && isArithmentic (y:z:xs)