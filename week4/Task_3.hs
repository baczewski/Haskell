main :: IO()
main = do
    print $ myContains [1..5] 3
    print $ myContains' [1..5] 3

myContains :: (Eq a) => [a] -> a -> Bool
myContains [] _ = False
myContains xs x = if head xs == x then True else myContains (tail xs) x

myContains' :: (Eq a) => [a] -> a -> Bool
myContains' [] _ = False
myContains' (x:xs) n = if x == n then True else myContains' xs n