-- Kirk Boyer
-- 12/3/2013
-- Haskell 99 Questions
-- Question 6: Determine whether a list is a palindrome.
import Data.List

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = True
isPalindrome [x] = True
isPalindrome l = ((head l) == (last l)) && (isPalindrome (init (tail l))) 

-- what if there is punctuation?
fancyIsPalindrome :: String -> Bool 
fancyIsPalindrome s = isPalindrome [x | x <- (intersect s (['a'..'z']++['A'..'Z']))]
