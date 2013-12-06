-- Kirk Boyer
-- 12/6/2013
-- Haskell 99 Questions
-- Question 17: Split a list into two parts, given the length of the first part.

split :: [a] -> Int -> [[a]]
split [] _ = []
split l 0 = [l]
split l n
    | n < 0     = error "Wha, a negative number?"
    | otherwise = [(take n l), (drop n l)]
