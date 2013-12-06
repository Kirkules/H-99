-- Kirk Boyer
-- 12/6/2013
-- Haskell 99 Questions
-- Question 14: Duplicate the elements of a list. In other words, make a new list with two consecutive copies of each of the original list's elements, in the same order.

dupli :: [a] -> [a]
dupli [] = []
dupli (x:xs) = x:x:(dupli xs)

-- ...shockingly easy?
