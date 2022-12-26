mylast :: [a] -> Maybe a
mylast [] = Nothing
mylast (x:[]) = Just x
mylast (_:xs) = mylast xs
