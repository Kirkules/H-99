-- Kirk Boyer
-- 12/3/2013
-- Haskell 99 Questions
-- Question 3: Find the Kth element of a list, if the first
-- element is the 1th instead of the 0th

elementAt :: Int -> [a] -> a
elementAt n l@(x:rest) 
    | n <= 0        = error "n is not positive..."
    | length l < n  = error "List is too short..."
    | n == 1        = head l
    | otherwise     = elementAt (n-1) rest
