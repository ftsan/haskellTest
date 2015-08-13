safeSqrt :: (Ord a, Floating a) => a -> Maybe a
safeSqrt x
    | x < 0     = Nothing
    | otherwise = Just (sqrt x)
