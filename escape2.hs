-- escape.hs
-- $ echo '"&<>' | runghc escape.hs
-- &quot;&amp;&lt;&gt;
import HTMLEscapedString

main :: IO ()
main = do
    -- 標準入力から１行読む
    rawString <- getLine
    -- HTMLエスケープした文字列に変換する
    let escapedString = escape rawString
    -- 標準出力へ表示する
    putHTMLEscapedStrLn escapedString
