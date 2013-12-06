-- Kirk Boyer
-- 12/6/2013
-- Haskell 99 Questions
-- Question 16: Drop every Nth element from a list

dropEvery :: [a] -> Int -> [a]
dropEvery [] _ = []
dropEvery l n 
    | n <= 0      = error "Nonpositive number: nonsense!"
    | otherwise   = (take (n-1) l) ++ (dropEvery (drop n l) n)
