memorized_fib :: Int -> Integer
memorized_fib =
    let fibo 1 = 0
        fibo 2 = 1
        fibo n = memorized_fib (n - 2) + memorized_fib (n - 1)
        in (map fibo [0 .. ] !!)
fiboList n = map memorized_fib [1..n]

join :: String -> [String] -> String
join _ []       = []
join _ [x]      = x
join sep (x:xs) = x ++ sep ++ join sep xs

main :: IO ()
main = do
    arg <- readLn :: IO Int
    putStrLn $ join "," . map show $ fiboList arg
