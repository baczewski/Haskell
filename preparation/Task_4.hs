main :: IO()
main = do
    print $ sin' 10 90

sin' :: Int -> Double -> Double
sin' n x = sum [((-1) ^ (fromIntegral i) * x ^ (fromIntegral (2 * i + 1))) / (fromIntegral (product [1..(2 * i + 1)])) | i <- [0..n]]