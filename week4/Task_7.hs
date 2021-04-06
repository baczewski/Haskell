main :: IO()
main = do
    print $ incrementAllBy [1..10] 5

incrementAllBy :: [Int] -> Int -> [Int]
incrementAllBy xs n = [x + n | x <- xs]