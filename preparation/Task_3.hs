main :: IO()
main = do
    print $ filterAritmetic [[1..10],[1,5,9],[1,3,4]]

isAritmetic :: [Int] -> Bool
isAritmetic [] = True
isAritmetic [_] = True
isAritmetic [_,_] = True
isAritmetic (x:y:z:xs) = 2 * y - x == z && isAritmetic (y:z:xs)

filterAritmetic :: [[Int]] -> [[Int]]
filterAritmetic l = [xs | xs <- l, isAritmetic xs]