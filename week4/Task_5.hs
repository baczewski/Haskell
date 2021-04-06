main :: IO()
main = do
    print $ removeFirst [1..10] 3

removeFirst :: (Eq a) => [a] -> a -> [a]
removeFirst [] _ = []
removeFirst (x:xs) z = if x == z then xs else x : removeFirst xs z