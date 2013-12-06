-- Kirk Boyer
-- 12/6/2013
-- Haskell 99 Questions
-- Question 15: Replicate the elements of a list a given number of times.

repli :: [a] -> Int -> [a]
repli [] _ = []
repli (x:xs) n
    | n == 0    = []
    | n < 0     = error "What do you mean, repeat a negative number of times?"
    | otherwise = (replicate n x) ++ (repli xs n)
