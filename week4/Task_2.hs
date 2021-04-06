main :: IO()
main = do
    print $ mySum [1..5]
    print $ mySum' [1..5]

mySum :: (Num a) => [a] -> a
mySum xs = if null xs then 0 else head xs + mySum (tail xs)

mySum' :: (Num a) => [a] -> a
mySum' [] = 0
mySum' (x:xs) = x + mySum' xs