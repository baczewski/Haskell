main :: IO()
main = do
    print $ snd (3,2)
    print $ maximum [1..20]
    print $ maximize [(\ x -> x * x *x),(\ x -> x + 1)] 3

maximize :: (Ord a, Num a) => [(a -> a)] -> (a -> a)
maximize fs = \ x -> snd (maximum [(abs (f x), f x) | f <- fs])