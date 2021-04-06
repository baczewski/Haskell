main :: IO()
main = do
    print $ newtonSqrt 625

newtonSqrt :: Double -> Double
newtonSqrt n = helper 10
    where
        helper x
            | abs (x ^ 2 - n) < precision = x
            | otherwise = helper (x - (x ^ 2 - n) / (2 * x))
        precision = 0.00001