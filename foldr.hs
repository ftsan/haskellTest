foldr' :: (a -> b -> b) -> b -> [a] -> b
foldr' _ e []     = e
foldr' f e (y:ys) = f y (foldr' f e ys)
