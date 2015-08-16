-- 平均を求める関数。
-- 通常平均を求める際にはリストの走査を2回行うが、
-- 今回はリストの走査を1回で行う関数を定義する。
mean' :: [Double] -> Double
mean' xs = let (res, len) = foldl (\(m, n) x -> (m + x / len, n + 1)) (0, 0) xs in res
