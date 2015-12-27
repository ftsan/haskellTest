reverse' :: [a] -> [a]
reverse' []     = []
reverse' (x:xs) = reverse' xs ++ [x]

reverse'' :: [a] -> [a]
reverse'' xs = rev xs []
    where
        rev [] ys     = ys
        rev (x:xs) ys = rev xs (x:ys)

main = do
    print $ reverse' [1..5]
    print $ reverse'' [1..5]
