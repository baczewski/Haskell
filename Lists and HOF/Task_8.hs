import Data.Char

main :: IO()
main = do
    print $ rev 123
    print $ isPrime 5
    print $ isPrime 6
    print $ isPrime 11
    print $ isPrime 13
    print $ sumDig 142500
    print $ sumDivs 161

rev :: Int -> Int
rev n = read $ reverse $ show n

isPrime :: Int -> Bool
isPrime n = [1, n] == [x | x <- [1..n], mod n x == 0]

sumDig :: Int -> Int
sumDig n = sum [ord x - ord '0' | x <- show n]

sumDivs :: Int -> Int
sumDivs n = sum [x | x <- [1..n], mod n x == 0] 