main :: IO()
main = do
    print $ reverseOrdSuff 37563
    print $ reverseOrdSuff 32763
    print $ reverseOrdSuff 32567
    print $ reverseOrdSuff 32666

reverseOrdSuff :: Int -> Int
reverseOrdSuff n = helper (div n 10) (mod n 10) (mod n 10)

helper :: Int -> Int -> Int -> Int
helper n l r     
     | n == 0 = r
     | last > l = helper (div n 10) (last) (r * 10 + last)
     | otherwise = r
     where last = mod n 10