-- Kirk Boyer
-- 12/3/2013
-- Haskell 99 Questions
-- Question 4: Find the number of elements in a list.

myLength :: [a] -> Int
myLength [] = 0
myLength (x:rest) = 1 + (myLength rest) 
