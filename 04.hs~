-- No optimization
len :: [a] -> Int
len [] = 0
len (_:xs) = 1 + len xs

-- Tail-call optimization
len_tail :: [a] -> Int
len_tail list = helper 0 list
  where helper k [] = k
        helper k (_:xs) = helper (k + 1) xs
