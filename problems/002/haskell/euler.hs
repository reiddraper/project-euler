fibs :: [Integer]
fibs = 1 : scanl (+) 1 fibs

problem :: Integer
problem = sum $ filter even $ takeWhile (< (4000 * 1000)) fibs

main :: IO ()
main = do
    print problem
