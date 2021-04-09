main :: IO()
main = do
    print $ inside 1 5 4
    print $ inside 5 1 4
    print $ inside 10 50 20
    print $ inside 10 50 1

inside :: Int -> Int -> Int -> Bool
inside a b x = elem x [min a b .. max a b]