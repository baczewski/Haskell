main :: IO()
main = do
    print $ myIdentity 123
    print $ myCompose (\ x -> x + 2) (\ x -> x + 3) 4
    print $ myNegate (\ x -> not x) True

myIdentity :: a -> a
myIdentity = \ x -> x

myCompose :: (a -> b) -> (c -> a) -> (c -> b)
myCompose f g = \ x -> f (g x)

myNegate :: (a -> Bool) -> (a -> Bool)
myNegate p = \ x -> not (p x)

myCurry :: (Int -> Int -> Int -> Int) -> Int -> (Int -> Int -> Int)
myCurry f x = \ y z -> f x y z