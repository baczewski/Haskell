main :: IO()
main = do
    print $ (upperBound (*2) 100) 50
    print $ (upperBound (*2) 100.236) 500.002
    print $ (upperBound (\ x -> x) 1.001) 1.001

upperBound :: (Double -> Double) -> Double -> (Double -> Double)
upperBound f y = \ x -> max (f x) y