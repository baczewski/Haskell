main :: IO()
main = do
    print $ filterSmallerThan [1..10] 5

filterSmallerThan :: [Int] -> Int -> [Int]
filterSmallerThan xs n = [x | x <- xs, x >= n]