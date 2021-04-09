main :: IO()
main = do
    print $ sumTuple (4, 5)
    print $ sumTuple (-5, 5)

sumTuple :: (Num a) => (a, a) -> a
sumTuple = \ x -> fst x + snd x