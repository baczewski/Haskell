main :: IO()
main = do
    print $ normalize (4, 2)
    print $ normalize (8, 4)
    print $ normalize (2, 4)

type RatData = (Int, Int)

normalize :: RatData -> RatData
normalize (x, y) = (div x k, div y k)
    where
        k :: Int
        k = gcd x y