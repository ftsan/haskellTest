join :: String -> [String] -> String
join _ []       = []
join _ [x]      = x
join sep (x:xs) = x ++ sep ++ join sep xs

main :: IO ()
main = do
    print $ join "," $ map show [1..5]
    print $ join "," $ map show [1]

