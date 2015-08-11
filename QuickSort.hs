qsort _ [] = []
qsort f (x:xs) = before ++ (x:after)
where before = qsort f (filter (not . (f x)) xs)
    after = qsort f (filter (f x) xs)
