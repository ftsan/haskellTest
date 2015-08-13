deeping :: String -> String
deeping s@(' ' : ' ' : _) = "  " ++ s
deeping s@(' ' : _)       = " " ++ s
deeping s                  = s
