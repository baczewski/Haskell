main :: IO()
main = do
    print $ dominates (\x -> x + 1) (\x -> x + 2) [1, 2, 3, 4, 5]
    print $ dominates' (\x -> x * 3) (\x -> x + 2) [1, 2, 3, 4, 5]

dominates :: (Ord a, Num a) => (a -> a) -> (a -> a) -> [a] -> Bool
dominates f g xs = all (==True) [(abs $ f x) >= (abs $ g x) | x <- xs]

dominates' :: (Ord a, Num a) => (a -> a) -> (a -> a) -> [a] -> Bool
dominates' f g xs = foldr1 (&&) $ map (\ x -> (abs $ f x) >= (abs $ g x)) xs