main :: IO()
main = do
    print $ mySum [1..4]
    print $ mySum' [1..4]

mySum :: (Num a) => [a] -> a
mySum xs = sum xs

mySum' :: (Num a) => [a] -> a
mySum' [] = 0
mySum' (x:xs) = x + mySum' xs