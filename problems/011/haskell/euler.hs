import Control.Monad (liftM)
import List (zip4, transpose, concat)

-- The input is a matrix.
-- The lists we need are:
-- 1. groups of 4 from each row (this is the raw input)
-- 2. groups of 4 from each column (transpose the input)
-- 3. left/right diagonals from every group of 4 rows

foursHelper :: [a] -> [[a]]
foursHelper [] = []
foursHelper xs = (take 4 xs) : (foursHelper $ drop 1 xs)

fours :: [a] -> [[a]]
fours x = filter ((== 4) . length) $ foursHelper x

listOfInts :: String -> [Int]
listOfInts = (map read) . words

-- diagHelper [a, b, c, d] = transpose [a, drop 1 b, drop 2 c, drop 3 d]
-- diags xs = diagHelper xs ++ (diagHelper $ reverse xs)

dropper l (i, ls) = (i + 1, drop i l : ls)

diag = transpose . snd . (foldr dropper (0, [[]]))

--diags xs = diag xs ++ (diag $ reverse xs)
diags xs = diag xs

allDiags xs = diags xs ++ (diags $ reverse xs) ++ (diags $ map reverse xs) ++ (diags $ reverse $ map reverse xs)

allDirections xs = allDiags xs ++ xs ++ transpose xs

main :: IO ()
main = do
    linez <- liftM lines $ readFile "../matrix.txt"
    --print $ map diags $ transpose [map listOfInts $ take 4 linez]
    --print $ diags $ map listOfInts linez
    print $ maximum $ map product $ concat $ map fours $ allDirections $ map listOfInts linez
