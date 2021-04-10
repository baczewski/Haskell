import Data.Char

main :: IO()
main = do
    print $ persistence 39
    print $ persistence 999
    print $ persistence 126
    print $ persistence 4


-- myProduct :: Int -> Int
-- myProduct n = product [ord x - ord '0' | x <- show n]

myProduct :: Int -> Int
myProduct n = helper n 1
    where
        helper :: Int -> Int -> Int
        helper n c = if n < 10 then c * n else helper (div n 10) (c * mod n 10)

persistence :: Int -> (Int, [Int])
persistence n = helper (myProduct n) 1 [myProduct n]
    where
        helper :: Int -> Int -> [Int] -> (Int, [Int])
        helper z c xs
            | head xs < 10 = (c, reverse xs)
            | otherwise = helper (myProduct z) (c + 1) (myProduct z : xs)