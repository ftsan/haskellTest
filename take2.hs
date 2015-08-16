take' :: Int -> [a] -> [a]
take' n xs
    | null xs    = []
    | n <= 0     = []
    | otherwise  = head xs : take (n - 1) (tail xs)

main :: IO ()
main = do
    print $ take' 3 [1 .. 10]
    print $ take' 0 [1 .. 10]
    print $ take' (-5) [1 .. 10]
    print $ take' 100 [1 .. 10]
