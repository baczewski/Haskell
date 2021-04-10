main :: IO()
main = do
    print $ sumOfEvenly 1 10
    print $ sumOfEvenly 5 20

isEvenly :: Int -> Bool
isEvenly n = even $ length [ x | x <- [1 .. n], mod n x == 0]

sumOfEvenly :: Int -> Int -> Int
sumOfEvenly a b = sum [ x | x <- [a .. b], isEvenly x]