main :: IO()
main = do
    print $ multiTwo 3

multiTwo :: (Num a) => a -> a
multiTwo = \ x -> 2 * x