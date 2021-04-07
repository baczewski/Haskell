import Data.Char

main :: IO()
main = do
    print $ ord '0'
    print $ show 123
    print $ isInteresting 410

sumDelimeters :: Int -> Int
sumDelimeters n = sum [ord x - ord '0' | x <- show n]

isInteresting :: Int -> Bool
isInteresting n = mod n (sumDelimeters n) == 0