main :: IO()
main = do
    print $ myLength [1..10]
    print $ myLength' [1..10]

myLength :: [a] -> Int
myLength xs = if null xs then 0 else 1 + myLength (tail xs)

myLength' :: [a] -> Int
myLength' [] = 0
myLength' (_:xs) = 1 + myLength xs