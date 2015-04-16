data Thicro = Red | Blue | Green | Magenta | Yellow | Cyan | White deriving Show
mix Blue Red = Magenta
mix Red Green = Yellow
mix Blue Yellow = Cyan

main = do
    print $ mix Blue Red 
