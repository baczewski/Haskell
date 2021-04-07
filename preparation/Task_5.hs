main :: IO()
main = do
    print $ dominates f g list

f = \ x -> x * 2
g = \ x -> x + 2
list = [3..10]

dominates :: (Ord a, Num a) => (a -> a) -> (a -> a) -> [a] -> Bool
dominates f g xs = all (==True) [abs(f x) >= abs(g x) | x <- xs]