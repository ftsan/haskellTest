scanr' :: (a -> b -> b) -> b -> [a] -> [b]
scanr' _ e [] = [e]
scanr' f e (x:xs) = f x (head rs) : rs where
    rs = scanr' f e xs
