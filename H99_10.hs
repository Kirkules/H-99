-- Kirk Boyer
-- 12/4/2013
-- Haskell 99 Questions
-- Question #10: Run-length list encoding; [1,1,1,2,2] -> [(3,1), (2,2)]

encode :: (Eq a) => [a] -> [(Int, a)]
encode [] = []
encode (x:xs) = let (allxs, rest) = break (/=x) xs
                in (1 + length allxs, x):(encode rest)
