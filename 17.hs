-- 17 kinda cheating
split' x n = (take n x, drop n x)

-- by myself
split :: [a] -> Int -> ([a], [a])
-- since split' supports this
split lis x | x < 0 = ([], lis)
split lis x = split_help x ([], lis)
  where
    split_help _ (top, []) = (top, [])
    split_help rema (top, bot@(y:ys))
      | rema == 0 = (top, bot)
      | otherwise = split_help (rema-1) (top ++ [y], ys)

