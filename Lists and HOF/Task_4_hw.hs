main :: IO()
main = do
    print $ sumUneven' 5 50
    print $ sumUneven' 50 1
    print $ sumUneven' 564 565

sumUneven :: Int -> Int -> Int
sumUneven a b = sum [x | x <- [min a b .. max a b], mod x 2 /= 0]

sumUneven' :: Int -> Int -> Int
sumUneven' a b = sum $ filter (\ x -> mod x 2 /= 0) [min a b .. max a b]