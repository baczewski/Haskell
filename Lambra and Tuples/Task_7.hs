main :: IO()
main = do
    print [0, 10..100]
    print $ getSquares 0 100 10
    print $ getSquares 0 100 10

getSquares' :: Int -> Int -> Int -> [(Int, Int)]
getSquares' a b k = [(z, z ^ 2) | z <- [a, k..b]]

getSquares :: Int -> Int -> Int -> [(Int, Int)]
getSquares a b k = helper a b k []
    where
        helper :: Int -> Int -> Int -> [(Int, Int)] -> [(Int, Int)]
        helper a b k res
            | a > b = res
            | otherwise = helper a (b - k) k ((b, b ^ 2) : res)