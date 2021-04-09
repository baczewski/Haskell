import Data.Char
import Data.List

main :: IO()
main = do
    print $ group $ sort $ map toLower "Test"
    print $ countOccurrences "Test"
    print $ countOccurrences "ThisIsAReallyLongWordContaingAlmostEveryCharacter"

countOccurrences :: String -> [(Char, Int)]
countOccurrences xs = map (\ ys -> (head ys, length ys)) $ group $ sort $ map toLower xs