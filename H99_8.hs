-- Kirk Boyer
-- 12/4/2013
-- Haskell 99 Questions
-- Question 8: Eliminate consecutive duplicates of a list.

compress :: (Eq a) => [a] -> [a]
compress l = case l of [] -> []
                       [x] -> [x]
                       (x:y:xs) -> if (x == y)
                                   then x:(compress xs)
                                   else x:(compress (y:xs))
