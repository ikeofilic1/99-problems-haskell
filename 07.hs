-- 07 => This is the same thing as `concat`
flatten :: Foldable t => t [a] -> [a]
flatten = foldl (foldl (\acc el -> acc ++ [el])) []

-- bad TC
flatten' :: Foldable t => t [a] -> [a]
flatten' = foldr (foldl (\acc el -> acc ++ [el])) []

-- very similar to above
flatten'' :: Foldable t => t [a] -> [a]
flatten'' = foldl(flip $ foldr (\el acc -> (el:acc))) []

-- My favorite though it can stack overflow
-- At least it doesn't create a new list each time to append to the back of the accumulator ;)
flatten''' :: Foldable t => t [a] -> [a]
flatten''' = foldr(flip $ foldr (\el acc -> (el:acc))) []
