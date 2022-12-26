at :: Int -> [a] -> Maybe a
at k _ | k < 1 = Nothing
at k [] = Nothing
at k (x:xs) | k == 1 = Just(x)
  | otherwise = at (k-1) xs