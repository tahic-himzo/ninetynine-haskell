module Lists.ReverseList (reverseList) where
  reverseList :: [a] -> [a]
  reverseList = foldl(\acc x -> x : acc) []

