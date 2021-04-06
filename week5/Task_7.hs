main :: IO()
main = do
    print $ isTriangular [[1, 2, 3, 4],
       [0, 5, 6, 7],
       [0, 0, 8, 9],
       [0, 0, 0, 0]]

isTriangular :: [[Int]] -> Bool
isTriangular [] = True
isTriangular xss =
    null [x | x <- underMainDiagonal, x /= 0] && isTriangular (tail [tail xs | xs <- xss])
        where underMainDiagonal = tail [head xs | xs <- xss]