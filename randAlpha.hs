import System.Random

randAlpha = getStdRandom $ randomR ('A', 'Z')
randLowerCase = getStdRandom $ randomR ('a', 'z')

main = do
    r <- randLowerCase
    print r
    if r == 'z' then print "END" else main
