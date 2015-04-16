-- data Foo = Foo { bar :: Int, baz :: String}
-- Foo { bar = 1, baz = "a" }
data Foo = Foo { bar :: Int, baz :: String } deriving Show

main = do
    print $ Foo { bar = 1, baz = "a" }
    print $ Foo 2 "b"
    let f = Foo {bar = 1, baz = "a"}
    print f
    print ( bar f, baz f)
    let (Foo a b) = f
    print (a, b)
    let (Foo { bar = c }) = f
    print c
