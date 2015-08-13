ins :: Ord a => a -> [a] -> [a]
ins a []        = a : []
ins a (x : xs)
    | a < x     = a : x : xs
    | otherwise = x : (ins a xs)

insSort :: Ord a => [a] -> [a]
insSort [] = []
insSort (x : xs) = ins x (insSort xs)


main :: IO ()
main = do
    print $ insSort [7,2,3,4,1,5]
    print $ insSort [7,2,3,4,1,5]
    print $ insSort [7,2,3,4,1,5]
