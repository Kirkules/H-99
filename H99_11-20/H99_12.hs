-- Kirk Boyer
-- 12/4/2013
-- Haskell 99 Questions
-- Question 12: Decode the run-length-encoded result of question 11. 

data Duplicate a = Multiple Int a | Single a deriving (Show)

encodeModified :: (Eq a) => [a] -> [Duplicate a]
encodeModified [] = []
encodeModified [a] = [Single a]
encodeModified (x:ys) = let (xs, rest) = break (/=x) ys in
                            if (length xs == 0) 
                                then [Single x]++(encodeModified rest) 
                                else [Multiple (1 + length xs) x] ++ (encodeModified rest)


decodeModified :: [Duplicate a] -> [a]
decodeModified l = concat (map expandDuplicate l)
    where expandDuplicate (Multiple n a) = replicate n a
          expandDuplicate (Single a) = [a]

