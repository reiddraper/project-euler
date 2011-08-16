isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == (reverse x)

nums :: [Int]
nums = [(a * b) | a <- [999, 998 .. 100], b <- [999, 998 .. 100], a <= b]

problem4 = maximum $ filter (isPalindrome . show) nums

main :: IO ()
main = do
    print problem4
