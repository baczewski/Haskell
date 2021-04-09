main :: IO()
main = do
    print $ getClosedInteval 1 9
    print $ getClosedInteval 9 1

getClosedInteval :: Int -> Int -> [Int]
getClosedInteval a b = [min a b .. max a b]