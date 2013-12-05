-- Kirk Boyer
-- 12/3/2013
-- Haskell 99 Questions
-- Question 7: Flatten a nested list structure. Using NestedList definition from problem statement on haskell.org.
data NestedList a = Elem a | List [NestedList a] deriving (Show)

flatten :: NestedList a -> [a]
flatten (List []) = []
flatten (Elem a) = [a]
flatten (List (x:xs)) = (flatten x)++(flatten (List xs))
