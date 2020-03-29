module Lists.MyButLast
  ( myButLast
  ) where

myButLast :: [a] -> Maybe a
myButLast []     = Nothing
myButLast [x, _] = Just x
myButLast (_:xs) = myButLast xs
