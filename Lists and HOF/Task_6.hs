main :: IO()
main = do
    print $ removeAll 5 [5]
    print $ removeAll 4 [4, 4] 
    print $ removeAll 5 [1]
    print $ removeAll 5 [5, 1, 5, 3, 5]
    print $ removeAll 3 [5, 1, 5, 3, 5]

removeAll :: Int -> [Int] -> [Int]
removeAll _ [] = []
removeAll n (x:xs) = if x == n then removeAll n xs else x : removeAll n xs

removeAll' :: Int -> [Int] -> [Int]
removeAll' n xs = [x | x <- xs, x /= n]