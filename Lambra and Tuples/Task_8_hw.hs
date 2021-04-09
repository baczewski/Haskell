main :: IO()
main = do
    print $ dotProduct (1, 2, 3) (7, 4, 1)
    print $ dotProduct (5, 2, 159) (0, -1, -2)

    print $ magnitude (1, 2, 3)
    print $ magnitude (7, 4, 1)
    print $ magnitude (-10, 20, -10)
    print $ magnitude (5, 2, 159)
    print $ magnitude (0, -1, -2)
    print $ magnitude (155, 10, -5)

type Vector = (Int, Int, Int)

dotProduct :: Vector -> Vector -> Vector
dotProduct (x1, y1, z1) (x2, y2, z2) = (x1 * x2, y1 * y2, z1 * z2)

magnitude :: Vector -> Double
magnitude (x, y, z) = sqrt (fromIntegral (x ^ 2 + y ^ 2 + z ^ 2))