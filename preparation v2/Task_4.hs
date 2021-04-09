import Data.List

main :: IO()
main = do
    print $ splitPoints (1, 1) 5 [(1, 2), (2, 3), (10, 15), (-1, 1), (12, 14)]
    print $ splitPoints (10, 10) 5 [(1, 2), (2, 3), (10, 15), (-1, 1), (12, 14)]
    print $ splitPoints (0, 0) 2 [(0, 0), (1, 1), (2, 2), (0, 2)]

type Point = (Double, Double)

splitPoints :: Point -> Double -> [Point] -> ([Point], [Point])
splitPoints (px, py) r ps = partition (\ (x, y) -> (x - px) ^ 2 + (y - py) ^ 2 <= r ^ 2) ps