import Data.List

main :: IO()
main = do
    print $ (kthMaxMin [-1]) 1
    -- print $ (kthMaxMin [-1,0,-1,0,-2,3,1,-1]) 3 -- should throw an error
    print $ (kthMaxMin [-1,-5,-6,-6,-6,-6]) 2
    print $ (kthMaxMin [1,2,3,4,-5,6,7,-2,-1,0]) 2

listNegatives :: [Int] -> [Int]
listNegatives xs = [x | x <- xs, x < 0]

kthMaxMin :: [Int] -> (Int -> Int)
kthMaxMin xs k  = helper (nub $ listNegatives xs) k
    where
        helper :: [Int] -> Int -> Int
        helper l k
            | null l = error "No such number"
            | k > 1 = helper (tail l) (k - 1)
            | otherwise = head l