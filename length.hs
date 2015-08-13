length' :: [a] -> Int
length' []     = 0
length' (x:xs) = 1 + length' xs

main :: IO ()
main = do
    print $ length' []
    print $ length' [1,2,3]
