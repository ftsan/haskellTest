import Data.Char

rot13 a
    | a < 'N' = chr $ ord a + 13
    | a < 'a' = chr $ ord a - 13
    | a < 'n' = chr $ ord a + 13
    | a < 'z' = chr $ ord a - 13
    | otherwise = a
rot13 a = chr $ ord a + 13
rot13Str "" = ""
rot13Str (x:xs) = rot13 x : rot13Str xs

main = do 
    print $ rot13 'A'
    print $ rot13 'U'
    print $ rot13 'b'
    print $ rot13 't'

    print $ rot13 'N'
    print $ rot13 'H'
    print $ rot13 'o'
    print $ rot13 'g'

    print $ rot13Str "abcdnopq"
