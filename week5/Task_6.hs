main :: IO()
main = do
    print $ divisors 123

divisors :: Integer -> [Integer]
divisors n = [d | d <- [1..n], mod n d == 0]