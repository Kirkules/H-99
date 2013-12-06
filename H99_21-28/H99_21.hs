-- Kirk Boyer
-- 12/6/2013
-- Haskell 99 Questions
-- Question 21: Insert an element at a given position of a list.
--
-- again, for some reason, indexing starting at 1 instead of 0...

insertAt :: a -> [a] -> Int -> [a]
insertAt x [] _ = [x]
insertAt x l n
    | n <= 0    = error "Indices start at 1, here!"
    | n > len   = l ++ [x]
    | otherwise = (take (n-1) l) ++ (x:(drop (n-1) l))
        where len = length l
