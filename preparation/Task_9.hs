import Data.List
main :: IO()
main = do
    print $ closestToAverage store1
    print $ cheaperAlternative store2

store1=[("bread",1),("milk",2.5),("lamb",10),("bread",5),("butter",2.3)]
store2 = [("bread", 1), ("cheese", 1), ("cheese", 2), ("cheese", 5), ("butter", 2.3)]

type Product = (String, Double)
type StoreAvailability = [Product]

closestToAverage :: StoreAvailability -> String
closestToAverage [] = error "Error"
closestToAverage xs = helper xs (getAvgPrice xs) (head xs) (getAvgPrice xs - snd (head xs))
    where
        helper :: StoreAvailability -> Double -> Product -> Double -> String
        helper xs avg res min
            | null xs = fst res
            | abs (avg - snd (head xs)) < abs min = helper (tail xs) avg (head xs) (avg - snd (head xs))
            | otherwise = helper (tail xs) avg res min

getAvgPrice :: StoreAvailability -> Double
getAvgPrice [] = 0
getAvgPrice xs = helper xs 0 1
    where
        helper :: [Product] -> Double -> Double -> Double
        helper (x:xs) sum c
            | null xs = (sum + snd x) / c
            | otherwise = helper xs (sum + snd x) (c + 1)

getName :: Product -> String
getName (name, _) = name

cheaperAlternative :: StoreAvailability -> Int
cheaperAlternative shop = length (filter moreThanTwoPrices (groupPrices shop))
    where
        products = nub (map getName shop)
        groupPrices shop = [[price | (name, price) <- shop, name == name1] | name1 <- products]
        moreThanTwoPrices prices = length (nub prices) > 1