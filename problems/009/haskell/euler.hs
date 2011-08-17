isPythagoreanTriplet :: (Num a, Ord a) => a -> a -> a -> Bool
isPythagoreanTriplet a b c = ((a < b) && (b < c)) && ((a^2 + b^2) == (c ^ 2))

problem9 = product $ head [[a, b, c] | 
                            c <- [1..997],
                            b <- [1..c],
                            a <- [1..b],
                            isPythagoreanTriplet a b c,
                            a + b + c == 1000]

main :: IO ()
main = do
    print problem9
