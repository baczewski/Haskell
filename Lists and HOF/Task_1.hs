main :: IO()
main = do
    print $ hasElementsPM []
    print $ hasElementsPM [1, 2, 3]
    print $ hasElementsFunc []
    print $ hasElementsFunc [1, 2, 3]

hasElementsPM :: [a] -> Bool
hasElementsPM [] = False
hasElementsPM xs = True

hasElementsFunc :: [a] -> Bool
hasElementsFunc xs = length xs > 0