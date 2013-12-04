-- Kirk Boyer
-- 12/3/2013
-- Haskell 99 Questions
-- Question 2: Find the next-to-last element of a list
myButLast :: [a] -> a
myButLast [] = error "List is empty..."
myButLast [x] = error "List is too short (only one element)."
myButLast [x,_] = x
myButLast (_:l) = myButLast l

-- The last case works because it is only checked if the 0-2
-- element cases have failed (i.e. the list has 3+ elements)
