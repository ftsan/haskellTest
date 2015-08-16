fibo :: Int -> Int
fibo 0 = 1
fibo 1 = 1
fibo n = fibo (n - 1) + fibo (n - 2)

fibs :: [Integer]
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

main :: IO ()
main = do
    print $ fibo 5
