import Data.List
count7 :: Int -> Int
count7 m = length $ filter is7 $ concat $ filter (isInfixOf "7") $ strSerial m
--count7 m = length . filter is7 . concat . filter $ isInfixOf "7" . strSerial m
    where 
        strSerial n = map show [1..n]
        is7         = (==) '7'

main :: IO ()
main = do
    arg <- getContents
    mapM_ print $ map count7 . map read . lines $ arg
