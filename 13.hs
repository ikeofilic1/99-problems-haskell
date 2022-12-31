-- 10/13
encode :: (Eq a) => [a] -> [(Int, a)]
encode [] = []
encode (x:xs) = help x 1 xs []
  where
    help x n [] ans = ans ++ [(n, x)] -- very important case
    help x n (y:rest) ans 
      | x /= y = help y 1 rest (ans ++ [(n, x)])
      | otherwise = help x (n+1) rest ans

