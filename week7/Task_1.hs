main :: IO()
main = do
    print $ primesInRange 1 100
    print $ primesInRange' 1 100

isPrime :: Integer -> Bool
isPrime n = [1,n] == [x | x <- [1..n], mod n x == 0]

primesInRange :: Integer -> Integer -> [Integer]
primesInRange a b = [x | x <- [a..b], isPrime x]

primesInRange' :: Integer -> Integer -> [Integer]
primesInRange' a b = filter isPrime [a..b]