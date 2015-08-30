fib n = memorized_fib n !! n

memorized_fib :: Int -> [Integer]
memorized_fib 0 = [1]
memorized_fib 1 = 1 : [1]
memorized_fib x =
    let memo = memorized_fib (x - 1)
    in memo ++ [memo !! (x-1) + memo !! (x-2)]

main :: IO ()
main = do
    print $ fib 10
