drop' :: Int -> [a] -> [a]
drop' _ []          = []
drop' n xs | n <= 0 = xs
drop' n (x:xs)      = drop' (n - 1) xs

main :: IO ()
main = do
    print $ drop' 3 [1 .. 5]
    print $ drop' 0 [1 .. 5]
    print $ drop' (-2) [1 .. 5]
    print $ drop' 100 [1 .. 5]
