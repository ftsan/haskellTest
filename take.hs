take' :: Int -> [a] -> [a]
take' _ [] = []
take' n (x:xs)
    | n <= 0     = []
    | otherwise  = x:take' (n-1) xs

main :: IO ()
main = do
    print $ take' 3 [1 .. 10]
    print $ take' 0 [1 .. 10]
    print $ take' (-5) [1 .. 10]
    print $ take' 100 [1 .. 10]
