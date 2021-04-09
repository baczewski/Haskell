main :: IO()
main = do
    print $ switchsum (\ x -> x + 1) (\ x -> x * 2) 4 $ 2
    print $ switchsum' (\ x -> x + 1) (\ x -> x * 2) 4 $ 2

currFunc :: (Int -> Int) -> (Int -> Int) -> Int -> (Int -> Int)
currFunc f g 0 x = 0
currFunc f g 1 x = f x
currFunc f g n x = if even n then (g((currFunc f g (n - 1)) x)) else (f((currFunc f g (n - 1))x))

switchsum :: (Int -> Int) -> (Int -> Int) -> Int -> (Int -> Int)
switchsum f g 0 x = 0
switchsum f g n x = (currFunc f g n x) + (switchsum f g (n - 1) x)

switchsum' :: (Int -> Int) -> (Int -> Int) -> Int -> (Int -> Int)
switchsum' f g 1 = \ x -> f x
switchsum' f g n = \ x -> f x + switchsum' g f (n - 1) (f x)