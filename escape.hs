-- escape.hs
-- $ echo '"&<>' | runghc escape.hs
-- &quot;&amp;&lt;&gt;

-- 文字列をHTMLエスケープする
escape :: String -> String
escape str = str >>= escapeAmp >>= escapeOther where
    escapeAmp   '&' = "&amp;"
    escapeAmp     c = [c]
    escapeOther '<' = "&lt;"
    escapeOther '>' = "&gt;"
    escapeOther '"' = "&quot;"
    escapeOther   c = [c]

main :: IO ()
main = do
    -- 標準入力から１行読む
    rawString <- getLine
    -- HTMLエスケープした文字列に変換する
    let escapedString = escape rawString
    putStrLn escapedString
