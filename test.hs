fibo 0 = 0
fibo 1 = 1
fibo n = fibo (n - 1) + fibo (n - 2)

fibo' n
    | n == 0 = 0
    | n == 1 = 1
    | otherwise = fibo' (n - 1) + fibo' (n - 2)

fibo'' n = case n of
    0 -> 0
    1 -> 1
    _ | n > 1 -> fibo'' (n - 1) + fibo'' (n - 2)

main = do 
    print $ fibo 2
    print $ fibo 3
    print $ fibo 4
    print $ fibo 5

    print $ fibo' 2
    print $ fibo' 3
    print $ fibo' 4
    print $ fibo' 5

    print $ fibo'' 2
    print $ fibo'' 3
    print $ fibo'' 4
    print $ fibo'' 5
