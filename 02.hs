last_two :: [a] -> Maybe [a]
last_two [] = Nothing
last_two [_] = Nothing
last_two [x,y] = Just ([x,y])
last_two (_:xs) = last_two xs