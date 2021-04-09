main :: IO()
main = do
    print $ (difference (\x -> 2 * x)) 15.16 15.20
    print $ (difference (\x -> 2 * x)) 8.5 8

difference :: (Num a) => (a -> a) -> (a -> a -> a)
difference f = \ x y -> f y - f x