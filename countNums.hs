-- countOdd :: [Int] -> Int
-- countOdd = length . filter odd
-- 
-- countEven :: [Int] -> Int
-- countEven = length . filter even
-- 
-- countAll :: [Int] -> Int
-- countAll xs = countOdd xs + countEven xs

countOdd :: ((->) [Int]) Int
countOdd = length . filter odd

countEven :: ((->) [Int]) Int
countEven = length . filter even

-- countAll :: ((->) [Int]) Int
-- countAll xs = countOdd xs + countEven xs

countAll :: [Int] -> Int
countAll = do
    odds  <- countOdd
    evens <- countEven
    return (odds + evens)
