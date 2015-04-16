fibo 0 = 0
fibo 1 = 1
fibo n = fibo(n - 1) + fibo(n - 2)

fiboA n
    | n == 0 = 0
    | n == 1 = 1
    | otherwise = fiboA(n - 1) + fiboA(n - 2)

fiboB n = case n of
    1 -> 0
    2 -> 1
    _ -> fiboB(n -1) + fiboB(n-2)
