-- Kirk Boyer
-- 12/3/2013
-- Haskell 99 Questions
-- Question 5: Reverse a list

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:rest) = (myReverse rest)++[x]
