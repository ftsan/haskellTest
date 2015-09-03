mul (i,x) = x * i
calc xs = foldl (+) 0 (map mul (zip [0..] xs))

c :: Int -> Int
c i = 2 * i - a * 9 
    where
        a = div i 10

main = do
    a <- readLn
    print $ c a
