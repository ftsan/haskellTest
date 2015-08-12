-- HTMLEscapedString.hs
module HTMLEscapedString
    ( HTMLEscapedString
    , escape
    , putHTMLEscapedStrLn
    ) where

-- エスケープ済み文字列の方を新たに定義する
data HTMLEscapedString = HTMLEscapedString String

-- 文字列をエスケープ済み文字列に定義する
escape :: String -> HTMLEscapedString
escape str = HTMLEscapedString (str >>= escapeAmp >>= escapeOther) where

    escapeAmp   '&' = "&amp;"
    escapeAmp     c = [c]
    escapeOther '<' = "&lt;"
    escapeOther '>' = "&gt;"
    escapeOther '"' = "&quot;"
    escapeOther   c = [c]

-- エスケープ済み文字列を使う処理
-- 今回はただの出力
putHTMLEscapedStrLn :: HTMLEscapedString -> IO ()
putHTMLEscapedStrLn (HTMLEscapedString str) = putStrLn str

