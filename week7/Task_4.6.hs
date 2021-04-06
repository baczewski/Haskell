main :: IO()
main = do
    print $ insert 3 [1..4]
    print $ insertionSort [1,3,2]

insert :: Int -> [Int] -> [Int]
insert x [] = [x]
insert x zs@(y:ys)
    | x < y = x:zs
    | otherwise = y:(insert x ys)

insertionSort :: [Int] -> [Int]
insertionSort [] = []
insertionSort [x] = [x]
insertionSort (x:y:xs) = insert x (insertionSort (y:xs))