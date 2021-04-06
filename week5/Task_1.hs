main :: IO()
main = do
    print $ multiplyAllBy [1..10] 3

multiplyAllBy :: [Int] -> Int -> [Int]
multiplyAllBy xs n = [x * n | x <- xs]