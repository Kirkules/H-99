-- Kirk Boyer
-- 12/4/2013
-- Haskell 99 Questions
-- Question 9: Pack consecutive duplicates into sublists; like
--             compress except packing instead of deleting.

pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack (x:xs) = let (allxs, rest) = break (/=x) xs in (x:allxs):(pack rest)

