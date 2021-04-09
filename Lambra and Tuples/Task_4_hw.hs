main :: IO()
main = do
    print $ (applyN (\x -> 2 * x) 5) 2
    print $ (applyN (\x -> div x 10) 2) 100

applyN :: (a -> a) -> Int -> (a -> a)
applyN f 1 = f
applyN f n = applyN f (n - 1) . f