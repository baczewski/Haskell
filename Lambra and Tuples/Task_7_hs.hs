import Data.List

main :: IO()
main = do
    print $ (repeater "I love Haskell") 3 " "
    print $ (repeater "Quack") 5 "!"
    print $ (repeater' "I love Haskell") 3 " "
    print $ (repeater' "Quack") 5 "!"

repeater' :: String -> (Int -> String -> String)
repeater' xs 1 ch = xs
repeater' xs c ch = (xs++ch) ++ repeater' xs (c - 1) ch

repeater :: String -> (Int -> String -> String)
repeater what = helper
    where
        helper times glue = intercalate glue $ replicate times what