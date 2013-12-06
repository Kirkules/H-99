-- Kirk Boyer
-- 12/6/2013
-- Haskell 99 Questions
-- Question 18: Extract a slice from a list. 

slice :: [a] -> Int -> Int -> [a]
slice [] _ _ = []
slice l _ 0 = l
slice l 0 n = take n l
slice l n m
    | m <= n            = []
    | n < 0 || m < 0    = error "...negative index is nonsense mang"
    | otherwise         = take (m-n) (drop n l)
