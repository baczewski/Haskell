main :: IO()
main  = do
    print $ removeAll [1,2,1,2,1,1,3] 1
    print $ removeAll' [1,2,1,2,1,1,3] 1

removeAll :: (Eq a) => [a] -> a -> [a]
removeAll [] _ = []
removeAll (x:xs) z
    | x == z = removeAll xs z
    | otherwise = x : removeAll xs z

removeAll' :: (Eq a) => [a] -> a -> [a]
removeAll' xs z = [x | x <- xs, x /= z]