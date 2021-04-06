main :: IO()
main = do
    print $ prodSumDiv [1..10] 2
    print $ prodSumDiv' [1..10] 2

prodSumDiv :: [Integer] -> Integer -> Integer
prodSumDiv xs k = product [x | x <- xs, mod (sum [m | m <- [1..x], mod x m == 0]) k == 0]

findSum :: Integer -> Integer
findSum n = sum $ filter (\ d -> (mod n d) == 0) [1..n]

prodSumDiv' :: [Integer] -> Integer -> Integer
prodSumDiv' ns k = product $ filter (\ n -> (mod (findSum n) k) == 0) ns