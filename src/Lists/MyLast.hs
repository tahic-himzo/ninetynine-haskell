module Lists.MyLast (myLast, myLastNonEmpty) where
    import Data.List.NonEmpty

    myLast :: [a] -> Maybe a
    myLastNonEmpty :: NonEmpty a -> a

    myLast []     = Nothing
    myLast [x]    = Just x
    myLast (_:xs) = myLast xs
    
    myLastNonEmpty (_ :| (b : as)) = myLastNonEmpty (b :| as)
    myLastNonEmpty (a :| []) = a
