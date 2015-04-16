data Color = Blue | Red | Green | White deriving (Show, Enum) 
data Bool = False | True deriving (Eq, Ord, Enum, Read, Show, Bounded)

main = do
    print $ fromEnum Blue 
    print $ fromEnum Red
    print $ fromEnum Green 
    print $ fromEnum White 

    print (toEnum 0 :: Color)
    print (toEnum 1 :: Color)
    print (toEnum 2 :: Color)
    print (toEnum 3 :: Color)
