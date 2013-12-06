-- Kirk Boyer
-- 12/6/2013
-- Haskell 99 Questions
-- Question 20: Remove the Kth element from a list, return a tuple whose first coord is the removed element, second coord is the remaining list
-- Indexing starting at 1, not 0 (by the example)
removeAt :: Int -> [a] -> (a,[a])
removeAt _ [] = error "there is nothing in the list..."
removeAt n l
    | n <= 0    = error "Only positive indices make sense here!"
    | otherwise = (l !! (n-1), (take (n-1) l) ++ (drop n l) )
