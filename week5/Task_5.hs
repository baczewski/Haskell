main :: IO()
main = do
    print $ take 3 [1..10]
    print $ drop 3 [1..10]
    print $ chunksOf 3 [1..10]

chunksOf :: Int -> [a] -> [[a]]
chunksOf _ [] = []
chunksOf n xs = take n xs : (chunksOf n (drop n xs))