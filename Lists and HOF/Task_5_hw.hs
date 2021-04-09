main :: IO()
main = do
    print $ isAscending 0
    print $ isAscending 10
    print $ isAscending 123
    print $ isAscending 1233
    print $ isAscending 12332

isAscending :: Int -> Bool
isAscending n = all (==True) [x <= y | (x, y) <- (zip (show n) (tail $ show n))]