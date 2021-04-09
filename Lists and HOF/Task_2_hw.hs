main :: IO()
main = do
    print $ isPresent 2 [1..10]
    print $ isPresent' 2 [1..10]

isPresent :: (Eq a) => a -> [a] -> Bool
isPresent e xs = elem e xs

isPresent' :: (Eq a) => a -> [a] -> Bool
isPresent' _ [] = False
isPresent' e (x:xs) = if x == e then True else isPresent' e xs