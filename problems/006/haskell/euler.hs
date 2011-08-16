squareOfSum :: (Num a, Enum a) => a -> a
squareOfSum x = ( ^ 2) (sum [1..x])

sumOfSquares :: (Num a, Enum a) => a -> a
sumOfSquares x = sum $ map (^2) [1..x]

problem6 = abs $ (sumOfSquares 100) - (squareOfSum 100)

main :: IO ()
main = do
    print problem6
