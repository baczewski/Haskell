main :: IO()
main = do
    print $ difference (\ x -> x * 2) 5 6

difference :: (Num b) => (a -> b) -> a -> a -> b
difference f a b = f b - f a