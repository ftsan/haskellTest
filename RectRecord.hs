data Rect = Rect { x :: Int, y :: Int, w :: Int, h :: Int } deriving Show
data Point = Point { a :: Int, b :: Int } deriving Show
contains r p =
    (x r) <= (a p) && (y r) <= (b p) && (a p) < (x r) + (w r) && (b p) < (y r) + (h r)

main = do
    print $ contains Rect { x = 2, y = 2, w = 3, h = 3 } Point { a = 1, b = 1 }
    print $ contains Rect { x = 2, y = 2, w = 3, h = 3 } Point { a = 2, b = 2 }
    print $ contains Rect { x = 2, y = 2, w = 3, h = 3 } Point { a = 3, b = 3 }
    print $ contains Rect { x = 2, y = 2, w = 3, h = 3 } Point { a = 4, b = 4 }
    print $ contains Rect { x = 2, y = 2, w = 3, h = 3 } Point { a = 5, b = 5 }
