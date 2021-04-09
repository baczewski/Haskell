main :: IO()
main = do
    print $ getPrimesLC 1 100
    print $ getPrimesLC 100 1

getPrimesLC :: Int -> Int -> [Int]
getPrimesLC a b = [x | x <- [min a b .. max a b], all (\ m -> mod x m /= 0) [2..x-1], mod x 10 == 7]