fibo :: Int -> Int
fibo 1 = 0
fibo 2 = 1
fibo n = fibo (n - 1) + fibo (n - 2)

fiboList :: Int -> [Int]
fiboList x = map fibo [1..x]
 
main :: IO ()
main = do
    arg <- readLn :: IO Int
    print $ fiboList $ arg
