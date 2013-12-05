-- Kirk Boyer
-- 12/4/2013
-- Haskell 99 Questions
-- Question #11: Run-length encoding, only producing a tuple if there is more than one copy of the given element

data Duplicates a = Multiple Int a | Single a deriving (Show)

encodeModified :: (Eq a) => [a] -> [Duplicates a]
encodeModified [] = []
encodeModified [a] = [Single a]
encodeModified (x:ys) = let (xs, rest) = break (/=x) ys in
                            if (length xs == 0) 
                                then [Single x]++(encodeModified rest) 
                                else [Multiple (1 + length xs) x] ++ (encodeModified rest)
