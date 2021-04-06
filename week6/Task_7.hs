main :: IO()
main = do
    print $ repeated (\ x -> x * 2) 3 4

repeated :: (a -> a) -> Int -> (a -> a)
repeated f 1 = f
repeated f n = f . (repeated f (n - 1))