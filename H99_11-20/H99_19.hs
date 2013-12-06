-- Kirk Boyer
-- 12/6/2013
-- Haskell 99 Questions
-- Question 19: Rotate a list N places to the left

rotate :: [a] -> Int -> [a]
rotate [] _ = []
rotate l 0 = l
rotate l n
    | abs(n) > len && n > 0 = rotate l (n - len)
    | abs(n) > len && n < 0 = rotate l (n + len)
    | n < 0                 = (drop (len + n) l)++(take (len + n) l)
    | otherwise             = (drop n l)++(take n l)
        where len = length l
