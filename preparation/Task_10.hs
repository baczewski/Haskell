main :: IO()
main = do
    print $ minDistance points

points = [(0, 0, 0), (3, 3, 3), (8, 8, 8)]

type Point = (Double, Double, Double)

minDistance :: [Point] -> Double
minDistance [] = error "Emptry list"
minDistance [_] = error "The minimum values should be 2"
minDistance points = helper points points (distance (head points) (head (tail points)))
    where
        helper :: [Point] -> [Point] -> Double -> Double
        helper p ip res
            | null p = res
            | null ip || null (tail ip) = helper (tail p) points res
            | distance (head p) (head (tail ip)) < res &&
                distance (head p) (head (tail ip)) /= 0 = helper p (tail p) (distance (head p) (head (tail ip)))
            | otherwise = helper p (tail ip) res

distance :: Point -> Point -> Double
distance (x1, y1, z1) (x2, y2, z2) = (x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2) + (z1 - z2) * (z1 - z2)