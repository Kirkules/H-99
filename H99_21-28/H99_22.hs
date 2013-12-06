-- Kirk Boyer
-- 12/6/2013
-- Haskell 99 Questions
-- Question 22: create a list containing all integers within a given range

range :: Int -> Int -> [Int]
range n m
    | m < n     = error "First number must be smaller!"
    | n == m    = [m]
    | otherwise = n:(range (n+1) m)

