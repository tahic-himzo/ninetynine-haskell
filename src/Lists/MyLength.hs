module Lists.MyLength where
  myLength :: [a] -> Int
  myLength = foldl (\acc _ -> acc + 1) 0
