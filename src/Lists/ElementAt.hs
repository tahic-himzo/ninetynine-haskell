module Lists.ElementAt (elementAt) where
  elementAt :: [a] -> Int -> Maybe a

  elementAt [] _ = Nothing
  elementAt (x : _) 1 = Just x
  elementAt (_ : xs) i
   | i > 1 = elementAt xs (i-1)
   | otherwise = Nothing


