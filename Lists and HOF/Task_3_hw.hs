main :: IO()
main = do
    print $ primesInRange 1 100
    print $ primesInRange 998 1042
    print $ primesInRange' 120 666
    print $ primesInRange' 420 240

isPrime :: Int -> Bool
isPrime n = filter (\ x -> mod n x == 0) [2 .. n - 1] == []

hasThreeDigits :: Int -> Bool
hasThreeDigits n = div n 100 /= 0

primesInRange :: Int -> Int -> [Int]
primesInRange a b = [x | x <- [min a b .. max a b], isPrime x, hasThreeDigits x]

primesInRange' :: Int -> Int -> [Int]
primesInRange' a b = filter (\ x -> isPrime x && hasThreeDigits x) [min a b .. max a b]