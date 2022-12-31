-- 14
dup' x = foldl (\l (a,b) -> l ++ [a,b]) [] (zip x x)
