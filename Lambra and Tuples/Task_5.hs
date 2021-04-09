main :: IO()
main = do
    print $ dividePM (10, 5)
    print $ dividePM (5, 10)
    print $ divideNonPM (10, 5)
    print $ divideNonPM (5, 10)

type Point = (Int, Int)

dividePM :: Point -> Point
dividePM = \ (a, b) -> (div a b, mod a b)

divideNonPM :: Point -> Point
divideNonPM x = (div (fst x) (snd x), mod (fst x) (snd x))