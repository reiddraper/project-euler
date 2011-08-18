isPrime :: (Integral a) => a -> Bool
isPrime 2 = True
isPrime 3 = True
isPrime x
    | even x = False
    | and  y = True
    | otherwise = False
    where y = map (\y -> x `mod` y /= 0) [3.. ceiling $ sqrt $ fromIntegral x]

primes :: (Integral a) => [a]
primes = 2 : 3 : filter isPrime [5,7..]


main :: IO ()
main = do
    print $ sum $ takeWhile (< 2000000) primes
