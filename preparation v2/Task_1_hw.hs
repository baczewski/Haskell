main :: IO()
main = do
    print $ (rf ((-) (-4)) (* (-2))) [1..10] (* 3)

rf :: (Ord a) => (a -> a) -> (a -> a) -> [a] -> (a -> a) -> [a]
rf f g xs h = [h x | x <- xs, f x > g x]