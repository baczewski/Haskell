main :: IO()
main = do
    print $ sumSpecialPrimes 5 2
    print $ sumSpecialPrimes 5 3
    print $ sumSpecialPrimes 10 3

isPrime :: Int -> Bool
isPrime n = filter (\ x -> mod n x == 0) [2 .. n - 1] == []

containsDigit :: Int -> Int -> Bool
containsDigit n d
    | n < 10 = n == d
    | mod n 10 == d = True
    | otherwise = containsDigit (div n 10) d

sumSpecialPrimes :: Int -> Int -> Int
sumSpecialPrimes n d = helper n d 1 0
    where
        helper n d curr sum
            | n == 0 = sum
            | isPrime curr && containsDigit curr d = helper (n - 1) d (curr + 1) (sum + curr)
            | otherwise = helper n d (curr + 1) sum