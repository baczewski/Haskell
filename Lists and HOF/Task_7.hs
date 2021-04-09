main :: IO()
main = do
    print $ incrementByLC 5 [5]
    print $ incrementByLC 4 [4, 4]
    print $ incrementByLC 5 [1]
    print $ incrementByLC 5 [5, 1, 5, 3, 5]
    print $ incrementByLC 3 [5, 1, 5, 3, 5]
    print $ incrementByHOF 5 [5]
    print $ incrementByHOF 4 [4, 4]
    print $ incrementByHOF 5 [1]
    print $ incrementByHOF 5 [5, 1, 5, 3, 5]
    print $ incrementByHOF 3 [5, 1, 5, 3, 5]

incrementByLC :: Int -> [Int] -> [Int]
incrementByLC n xs = [x + n | x <- xs]

incrementByHOF :: Int -> [Int] -> [Int]
incrementByHOF n xs = map (+n) xs