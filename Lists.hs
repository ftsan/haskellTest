length' [] = 0
length' (_:xs) = 1 + length xs

take' _ []         = []
take' n _ | n < 1  = [] 
take' n (x:xs)     = x:take' (n - 1) xs

drop' :: Int -> [Char] -> [Char]
drop' _ []  = []
drop' n xs | n < 0 = xs
drop' n (x:xs)     = drop' (n - 1) xs

reverse' []     = []
reverse' (x:xs) = reverse' xs ++ [x]

sum' []     = 0
sum' (x:xs) = x + sum' xs

product' []     = 1
product' (x:xs) = x * product' xs

factorial n = product' [1..n]

main = do
    print $ length [1..10]
    print $ take' 3 "abcde"
    print $ take' 0 "abcde"
    print $ take' 3 [1..5]
    print $ take' 3 [1]
   
    print $ drop' 3 "abcde"
    print $ drop' 0 "abcde"

    print $ reverse' [1..5]

    print $ sum' [1..5]
    print $ product' [1..5]

    print $factorial 5
