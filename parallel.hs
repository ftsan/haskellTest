-- parallel.hs
-- parallelパッケージが必要
-- $ ./parallel +RTS -N4
-- primes: 78498
import Prelude
import Data.Int
import Control.Parallel.Strategies

-- 素数判定
isPrime :: Int32 -> Bool
isPrime x = all (\n -> x `mod` n /= 0) [2 .. toEnum (floor $ sqrt $ fromIntegral x)]

-- 2からまで1000000の数
arr :: [Int32]
arr = [ 2 .. 1000000 ]

main :: IO ()
main = do
    let arr' = map isPrime arr `using` parListChunk 256 rpar  -- arrの各要素にisPrimeを適用
    putStr "primes: " >> print (length $ filter id arr') -- 素数判定で真になったものの個数を表示

