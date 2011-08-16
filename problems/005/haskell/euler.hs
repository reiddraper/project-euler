allDiv :: Integer -> Bool
allDiv x = all (\y -> x `mod` y == 0) [18,17..11]

problem5 :: Integer
problem5 = head $ filter allDiv [380,760..]

main :: IO ()
main = do
    print problem5
