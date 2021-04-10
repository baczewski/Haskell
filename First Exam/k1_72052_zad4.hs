import Data.List

main :: IO()
main = do
    print $ scoreHand ["A"]
    print $ scoreHand ["A", "A"]
    print $ scoreHand ["A","J"]
    print $ scoreHand ["5","3","7"]
    print $ scoreHand ["5","4","3","2","A","K"]
    print $ scoreHand ["2","3"]
    print $ scoreHand ["4","5","6"]
    print $ scoreHand ["7","7","8"]
    print $ scoreHand ["K","J","Q"]
    print $ scoreHand ["A","3"]
    print $ scoreHand ["A","A"]
    print $ scoreHand ["A", "10", "A"]
    print $ scoreHand ["A","2","A","9","9"]

isNumber :: String -> Bool 
isNumber ch = elem ch $ map (\ x -> show x) [2..10]

isTenPoints :: String -> Bool
isTenPoints ch = [x | x <- ["J", "Q", "K"], x == ch] /= []

getPoints :: String -> Int
getPoints ch
    | isNumber ch = read ch
    | isTenPoints ch = 10

removeBonusPoints :: Int -> Int -> Int
removeBonusPoints sum count
    | sum <= 21 || count == 0 = sum
    | otherwise = removeBonusPoints (sum - 10) (count - 1)

scoreHand :: [String] -> Int
scoreHand xs = helper xs 0 0
    where
        helper :: [String] -> Int -> Int -> Int
        helper xs countA sum
            | null xs = removeBonusPoints sum countA
            | isNumber (head xs) || isTenPoints (head xs) = helper (tail xs) countA (sum + getPoints (head xs))
            | head xs == "A" = helper (tail xs) (countA + 1) (sum + 11)
            | otherwise = error ("Wrong symbol!")