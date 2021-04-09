main :: IO()
main = do
    print $ myLengthRecNonPM []
    print $ myLengthRecNonPM [1, 2, 3]
    print $ myLengthRecPM []
    print $ myLengthRecPM [1, 2, 3]
    print $ myLengthFunc []
    print $ myLengthFunc [1, 2, 3]

myLengthRecNonPM :: [a] -> Int
myLengthRecNonPM xs = if null xs then 0 else 1 + myLengthRecNonPM (tail xs)

myLengthRecPM :: [a] -> Int
myLengthRecPM [] = 0
myLengthRecPM xs = 1 + myLengthRecPM (tail xs)

myLengthFunc :: [a] -> Int
myLengthFunc xs = length xs