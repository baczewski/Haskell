main :: IO()
main = do
    print $ merge [1..10] [1,3,42]

merge :: [Int] -> [Int] -> [Int]
merge [] ys = ys
merge xs [] = xs
merge as@(x:xs) bs@(y:ys)
    | x < y = x : merge xs bs
    | otherwise = y : merge as ys