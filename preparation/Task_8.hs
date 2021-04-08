main :: IO()
main = do
    print $ sumUnique [[1,2,3,2],[-4,-4],[5]]
    print $ sumUnique [[2,2,2],[3,3,3],[4,4,4]]
    print $ sumUnique [[1,2,3],[4,5,6],[7,8,9]]

sumUnique :: [[Int]] -> Int
sumUnique xss = sum (map sumList xss)

sumList :: [Int] -> Int
sumList xs = sum [x | x <- xs, isUnique xs x]

isUnique :: [Int] -> Int -> Bool
isUnique xs x = length [m | m <- xs, m == x] == 1