main :: IO()
main = do
    print $ (derive (\ x -> 2 * x * x) 1e-3) 10
    print $ (derive2 (\ x -> 2 * x * x) 1e-3) 10

derive :: (Double -> Double) -> Double -> (Double -> Double)
derive f eps = \ x -> (f (x + eps) - f x) / eps

derive2 :: (Double -> Double) -> Double -> (Double -> Double)
derive2 f eps = derive (derive f eps) eps

deriven :: (Double -> Double) -> Int -> Double -> (Double -> Double)
deriven f 0 _ = f
deriven f n eps = derive (deriven f (n - 1) eps) eps