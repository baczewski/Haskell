main :: IO()
main = do
    print $ primesInRange 1 100
    print $ primesInRange' 1 100
    print $ primesInRange'' 1 100

isPrime :: Int -> Bool
isPrime 1 = False
isPrime n = helper 2
    where
        helper d
            | d == n = True
            | mod n d == 0 = False
            | otherwise = helper (d + 1)

isPrime' :: Int -> Bool
isPrime' n = [1, n] == [d | d <- [1..n], mod n d == 0]

primesInRange :: Int -> Int -> [Int]
primesInRange a b = helper a b []
    where
        helper a b xs
            | a > b = xs
            | isPrime b = helper a (b - 1) (b : xs)
            | otherwise = helper a (b - 1) xs

primesInRange' :: Int -> Int -> [Int]
primesInRange' a b = [x | x <- [a..b], isPrime x]

primesInRange'' :: Int -> Int -> [Int]
primesInRange'' a b
    | a > b = []
    | isPrime a = a : primesInRange'' (a + 1) b
    | otherwise = primesInRange'' (a + 1) b