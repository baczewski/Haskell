main :: IO()
main = do
    print $ sumVectors (1, 2, 3) (4, 5, 6)
    print $ sumVectors (0, 0, 0) (100, 200, -300)

    print $ scaleVector (1, 2, 3) 5
    print $ scaleVector (5, 2, 159) (-2)

type Vector = (Int, Int, Int)

sumVectors :: Vector -> Vector -> Vector
sumVectors = \ (x1, y1, z1) (x2, y2, z2) -> (x1 + x2, y1 + y2, z1 + z2)

scaleVector :: Vector -> Int -> Vector
scaleVector (x, y, z) n =  (x * n, y * n, z * n)    