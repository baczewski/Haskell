import Data.Char

main :: IO()
main = do
    print $ show 123
    print $ ord '2'
    print $ isAscending 1234
    print $ isAscending' 1234

toList :: Int -> [Int]
toList n = [ord d - ord '0' | d <- show n]

isAscending :: Int -> Bool
isAscending n = helper (toList n)
    where
        helper [] = True
        helper [_] = True
        helper (x:y:xs) = x <= y && helper (y:xs)

isAscending' :: Int -> Bool
isAscending' n = and [p < q | (p, q) <- zip ns (tail ns)]
    where ns = toList n