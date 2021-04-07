main :: IO()
main = do
    print $ sumInterval 1 100

containsSix :: Int -> Bool
containsSix n = any ('6'==) (show n)

sumInterval :: Int -> Int -> Int
sumInterval a b = sum [x | x <- [a..b], mod (x - 1) 4 == 0 && containsSix x]