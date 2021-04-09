import Data.List
main :: IO()
main = do
    print $ (myLambda (\ x -> x)) 5
    print $ (myLambda (\ x -> x)) "Hello"
    print $ (myLambda (+1)) 5
    print $ (negatePred (\x -> mod x 2 == 0)) 2
    print $ (compose (\x -> x - 5) (\y -> y + 25)) 5
    print $ (compose group sort) "Hello World"
    print $ (partiallyApply (\x y -> 10 * x + y) 5) 10 

myLambda :: (a -> b) -> (a -> b)
myLambda f = \ x -> f x

negatePred :: (a -> Bool) -> (a -> Bool)
negatePred p = not . p

compose :: (a -> b) -> (c -> a) -> (c -> b)
compose f g = \ x -> f (g x)

partiallyApply :: (a -> b -> c) -> a -> (b -> c)
partiallyApply f = \ x -> f x