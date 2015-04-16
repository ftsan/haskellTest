fibo n = case n of
    1 -> 0
    2 -> 1
    _ -> fibo(n -1) + fibo(n-2)
