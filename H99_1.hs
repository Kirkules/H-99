-- Kirk Boyer
-- 12/3/2013
-- 99 Questions - Haskell
-- Question 1: Find the last element of a list
myLast :: [a] -> a
myLast [x] = x
myLast(_:l) = myLast l
