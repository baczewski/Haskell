main :: IO()
main = do
    print $ (pairCompose [(\ x -> x + 1), (\ x -> x + 2), (\ x -> x + 3)]) 1

pairCompose :: [(Int -> Int)] -> (Int -> Int)
pairCompose [] _ = 0
pairCompose (x1:x2:fs) x = (x1 . x2) (x) + pairCompose fs x
pairCompose (f:xs) x = (f . id) x